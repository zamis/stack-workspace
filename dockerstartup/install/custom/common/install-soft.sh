#!/usr/bin/env bash
set -ex

curl https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb >./google-chrome-stable_current_amd64.deb
apt -y install ./google-chrome-stable_current_amd64.deb
rm -f ./google-chrome-stable_current_amd64.deb
