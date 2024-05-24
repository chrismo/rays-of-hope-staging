#!/usr/bin/env bash

function css() {
  # you can tack on --watch for continuous updates
  npx tailwindcss -i ./src/input.css -o ./src/output.css
}

function usage() {
  grep -E '^function' "${BASH_SOURCE[0]}" | sort
}

if [ $# -eq 0 ]; then
  usage
else
  "$@"
fi
