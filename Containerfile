ARG BASE_IMAGE

FROM scratch AS ctx
ARG VARIANT
COPY image/build.sh /
COPY image/shared/ /shared/
COPY image/${VARIANT}/ /variant/

FROM ${BASE_IMAGE}

ARG CI=""

RUN --mount=type=bind,from=ctx,source=/,target=/ctx \
  --mount=type=cache,dst=/var/cache \
  --mount=type=cache,dst=/var/log \
  --mount=type=tmpfs,dst=/tmp \
  bash /ctx/build.sh

RUN bootc container lint
