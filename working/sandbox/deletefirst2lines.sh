#! /bin/bash
for file in *; do
    sed -i.bak '1,+1d' $file
done
