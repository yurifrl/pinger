#!/bin/sh

docker run --rm -ti \
  -e ENV=development \
  -w /app \
  -v $(pwd):/app \
  pinger scripts/inside-container.sh "$@"
