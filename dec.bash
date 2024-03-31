#!/usr/bin/env bash

read -s -p "Enter pass: " pass
echo ""

dec_dir="./sensitive/dec/"
enc_dir="./sensitive/enc/"

if [ ! -d "$enc_dir" ]; then
  exit 1
fi

if [ ! -d "$dec_dir" ]; then
  mkdir "$dec_dir"
fi

# for the hidden files
shopt -s dotglob

for file in "$enc_dir"/*; do
  if [ -f "$file" ]; then
    basename=$(basename "$file")
    decrypted=$(cat $file | openssl aes-256-cbc -d -pbkdf2 -a -k "$pass")
    if [ $? -eq 0 ]; then
      echo "$decrypted" > "$dec_dir""$basename"
      echo "decrypted: $basename"
    fi
  fi
done
