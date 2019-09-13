#!/usr/bin/env bash

trap 'exit 0' SIGTERM

while true; do
  /usr/games/cowsay -f ./rabbit.cow $(/usr/games/polygen /usr/share/polygen/fra/grandeur.grm)
  sleep 1
done
