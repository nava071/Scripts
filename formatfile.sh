#! /bin/bash

file=$1
# echo $file
sed -i 's/<?xml version/\n<temp>\n<?xml version/g' "$file"
sed -i '1,/<temp>/d' "$file"
sed -i 's/<\/lastTag>/<\/lastTag>\n<temp>\n/g' "$file"
sed -i '/<temp>/,+20d' "$file"
