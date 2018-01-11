#! /bin/bash
for file in *; do
    sed -i.bak '1,+2d' $file
done
