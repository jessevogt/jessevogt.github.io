#!/usr/bin/env bash
set -euxo pipefail
source ENV
docker run \
    --rm -it \
    -v $(pwd):/srv/jekyll \
    -p 4000:4000 \
    jekyll/jekyll:$JEKYLL_VERSION \
    $@
