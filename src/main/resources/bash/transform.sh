#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

source="../xml/$1.xml"

declare -A output
output=(
    ["project"]=".project" 
	["di"]="$1.di"
	["notation"]="$1.notation"
	["uml"]="$1.uml"
)

## now loop through the above array
for out in "${!output[@]}"; 
do 
    echo "$out -> ${output[$out]}"; 
	java -jar ../lib/saxon9he.jar  -s:$source -xsl:../xslt/onfParameters2$out.xslt -o:../papyrus/${output[$out]}
done


