#!/usr/bin/env bash
set -e

echo 'alias cubbit="cd ~/cubbit"' >> ~/.bashrc
echo 'alias cubbit-tilt="cubbit && tilt -f coordinator/Tiltfile"' >> ~/.bashrc
echo 'alias cup="cubbit-tilt up"' >> ~/.bashrc
echo 'alias cdown="cubbit-tilt down"' >> ~/.bashrc

source ~/.bashrc
