#!/usr/bin/env bash

set -euo pipefail

if [[ $# -ne 2 ]]; then
  echo "Usage: $0 <source_directory> <destination_directory>"
  exit 1
fi

SOURCE="$(realpath "$1")"
DEST="$(realpath -m "$2")"

if [[ ! -d "$SOURCE" ]]; then
  echo "Error: Source directory does not exist: $SOURCE"
  exit 1
fi

mkdir -p "$DEST"

find "$SOURCE" -type f | while IFS= read -r file; do
  filename="$(basename "$file")"
  target="$DEST/$filename"

  # If a file with the same name already exists, append a number.
  if [[ -e "$target" ]]; then
    name="${filename%.*}"
    ext="${filename##*.}"

    if [[ "$name" == "$ext" ]]; then
      ext=""
    else
      ext=".$ext"
    fi

    i=1
    while [[ -e "$DEST/${name}_$i$ext" ]]; do
      ((i++))
    done

    target="$DEST/${name}_$i$ext"
  fi

  cp "$file" "$target"
done

echo "All files copied to: $DEST"
