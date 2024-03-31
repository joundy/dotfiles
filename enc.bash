#!/usr/bin/env bash

read -s -p "Enter pass: " pass
echo ""

dec_dir="./sensitive/dec/"
enc_dir="./sensitive/enc/"

if [ ! -d "$dec_dir" ]; then
  exit 1
fi

if [ ! -d "$enc_dir" ]; then
  mkdir "$enc_dir"
fi

# for the hidden files
shopt -s dotglob

for file in "$dec_dir"/*; do
  if [ -f "$file" ]; then
    basename=$(basename "$file")
    cat $file | openssl enc -aes256 -pbkdf2 -base64 -k "$pass" > "$enc_dir""$basename"
    if [ $? -eq 0 ]; then
      echo "encrypted: $basename"
    fi
  fi
done
