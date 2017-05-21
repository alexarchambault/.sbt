#!/usr/bin/env bash
set -e

docker run -it \
  -v "$(pwd)/sbt:/root/.sbt" \
  -v "$(pwd)/ivy2:/root/.ivy2" \
  -v "$(pwd)/coursier:/root/.coursier" \
  -v "$(pwd)/foo:/root/foo" \
  -w /root/foo \
  openjdk:8 ./sbt compile
