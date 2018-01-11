#! /bin/bash

for file in *; do
	echo "]>" | cat - $file > temp && mv temp $file;
done

for file in *; do
	echo "  %entities;" | cat - $file > temp && mv temp $file;
done

for file in *; do
	echo '  <!ENTITY % entities SYSTEM "entities.ent">' | cat - $file > temp && mv temp $file;
done

for file in *; do
	echo '[' | cat - $file > temp && mv temp $file;
done

for file in *; do
	echo '<!DOCTYPE [[[DUMMY]]]' | cat - $file > temp && mv temp $file;
done

for file in *; do
	echo '<?xml version="1.0" encoding="UTF-8"?>' | cat - $file > temp && mv temp $file;
done

