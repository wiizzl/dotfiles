#!/bin/bash
set -euo pipefail

ctx="${BASH_SOURCE%/*}"
layers=("$ctx/shared" "$ctx/variant")

for layer in "${layers[@]}"; do
  if [[ -d "$layer/rootfs" ]]; then
    cp -dR --preserve=mode,links "$layer/rootfs/." /
  fi
done

mapfile -t steps < <(
  find "${layers[@]/%//scripts}" -name '[0-9][0-9]-*.sh' 2>/dev/null |
    awk -F/ '{ print $NF "\t" $0 }' | sort | cut -f2
)

for step in "${steps[@]}"; do
  name="$(basename "$(dirname "$(dirname "$step")")")/${step##*/}"

  if [[ -n "${CI:-}" ]]; then
    echo "::group::${name}"
  else
    echo "==> ${name}"
  fi

  bash -euxo pipefail "$step"

  if [[ -n "${CI:-}" ]]; then
    echo "::endgroup::"
  fi
done
