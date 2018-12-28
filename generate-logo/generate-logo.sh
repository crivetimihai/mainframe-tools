#!/bin/bash
# Mihai Criveti: generate LOGIN splash for MVS
# Usage: ./generate-logo.sh dino > out

logo=$1
IFS=$'\n'
linum=7
for line in $(cat ${logo})
do
  echo "         \$SBA   (${linum},15)\n"
  echo "         DC     C'$line'\n"
  echo "         \$SF    (SKIP,HI)\n"
  ((linum++))
done

