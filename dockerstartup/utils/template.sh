#!/usr/bin/env bash
set -ex

docker context create dind --description "DinD" --docker "host=tcp://docker:2376,ca=/certs/client/ca.pem,cert=/certs/client/cert.pem,key=/certs/client/key.pem"
# docker context create rootless --description "Rootless mode" --docker "host=unix:///home/kasm-user/.docker/run/docker.sock"
docker context use dind
docker context use default
