#!/bin/bash

if [ $# -eq 0 ]; then
  echo ページのURLを入力:
  read url
else
  url=$1
fi

number=$(echo "$url" | sed -n 's|https://\([^.]\+\)\.gigafile\.nu.*|\1|p')
file=$(echo "$url" | sed -n 's|https://[^.]\+\.gigafile\.nu/\(.*\)|\1|p')

echo "Number: $number"
echo "File: $file"

wget --keep-session-cookies --save-cookies=cookies.txt "$url"
wget --load-cookies cookies.txt -r -k -E "https://$number.gigafile.nu/dl_zip.php?file=$file"

rm ./*-*
mv "./$number.gigafile.nu/dl_zip.php?file=$file" "./$number.gigafile.nu/dl_zip.php?file=$file.zip"

echo "done"
