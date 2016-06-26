#!/bin/bash

(
  echo
  echo "Downloading latest version of Chrome"
  echo
  curl https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg > /tmp/googlechrome.dmg

  echo
  echo "Attaching disk image"
  echo
  cd /tmp
  hdiutil attach -mountpoint chrome -noverify -nobrowse /tmp/googlechrome.dmg

  echo
  echo "Copying to aplication directory"
  echo
  cp -R chrome/Google\ Chrome.app /Applications

  echo
  echo "Detach disk image"
  echo
  hdiutil detach chrome

  echo
  echo "Deleting disk image"
  echo
  rm googlechrome.dmg

  echo
  echo "Chrome installation complete"
  echo
)
