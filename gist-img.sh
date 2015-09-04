#!/bin/bash

# Bail on errors.
set -e

# Check the user has `gist(1)` installed.
[ "`command -v gist`" ] || (echo "gist-img: Please 'brew install gist'" && exit 1)

# Show usage if no arguments are given.
if [ "$#" = "0" ]; then
  echo 'Usage: gist-img <path-to-file.png|gist-id>'
  exit 1
fi

# Given a gist id, return the raw image data.
decode_gist() {
  curl -fsSL "https://gist.github.com/raw/$1/gistfile1" | base64 -D
}

# Given a path to an image, base64 encode it and gist it.
encode_image() {
  base64 < "$1" | gist -p -
}

if [ -f "$1" ]; then
  # The user has provided a file, convert it and gist it.
  file="$1"
  if [ "`file --mime-type -b \"$file\"`" != 'image/png' ]; then
    echo "gist-img only works with pngs right now"
    exit 1
  fi
  encode_image "$file"
else
  # The user is requesting a gist id.
  if [ -t 1 ]; then
    # STDOUT is a tty, write the image to a file.
    decode_gist "$1" > gist-img.png
    echo "Written to gist-img.png"
  else
    # STDOUT is something else, give it the raw image data.
    decode_gist "$1"
  fi
fi
