#!/bin/bash

source_path=$1
dest_path=$2

for filename in $source_path/*; do
        ln -fs $filename $dest_path/$(basename ${filename}) 
done

