#!/bin/bash

fortunes="conan"

set -ex

sudo mkdir -p /usr/share/games/fortunes

for it in $fortunes
do
  strfile -c % $it $it.dat
  sudo cp $it /usr/share/games/fortunes
  sudo cp $it.dat /usr/share/games/fortunes
done

echo "fortune $fortunes" >> ~/.bashrc