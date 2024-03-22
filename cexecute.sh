#!/bin/bash

input=$1
namewithextension=${input##*/}
name=${namewithextension%.*}

gcc $1 -o $name
./$name