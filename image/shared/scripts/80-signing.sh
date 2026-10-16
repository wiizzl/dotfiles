#!/bin/bash

test -f /etc/pki/containers/atomic.pub

for policy in /etc/containers/policy.json /usr/etc/containers/policy.json; do
  if [[ -f "$policy" ]]; then
    jq '.transports.docker["ghcr.io/wiizzl/atomic"] = [{
      type: "sigstoreSigned",
      keyPath: "/etc/pki/containers/atomic.pub",
      signedIdentity: { type: "matchRepository" }
    }]' "$policy" >"$policy.new"
    mv "$policy.new" "$policy"
  fi
done
