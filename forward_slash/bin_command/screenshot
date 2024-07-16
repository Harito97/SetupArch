#!/bin/bash

case $1 in
  full)
    grim ~/Pictures/Screenshot_$(date +%F_%T).png
    ;;
  region)
    grim -g "$(slurp)" ~/Pictures/Screenshot_$(date +%F_%T).png
    ;;
  *)
    echo "Usage: $0 {full|region}"
    exit 1
    ;;
esac