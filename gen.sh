#!/bin/bash


find images -type f -name '*.jpg' -or -name '*.png' | sort | while read line ; do
  caption=$(basename $line | cut -d '.' -f 1 | tr '_' ' ' | tr '-' ' ')
  echo ""
  echo "## $caption"
  echo ""
  echo "![$caption]($line)"
  echo ""

done


