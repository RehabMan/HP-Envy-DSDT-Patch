#!/bin/bash

set -x

if [ ! -d "tmp" ]; then
    mkdir ./tmp
fi
if [ -e tmp/* ]; then
    rm ./tmp/*
fi

cp ./linux_native/DSDT ./linux_native/SSDT* ./linux_native/dynamic/SSDT* ./tmp
chmod +w ./tmp/*
cd ./tmp
list=`echo *`
#list_comma=${list// /,}
list_comma=${list}

echo $list
echo $list_comma

for aml in $list; do
    iasl -p ../$aml.dsl -e ${list_comma//$aml/} -d $aml
#mv ../$aml.dsl $(echo "../$aml".dsl | tr '[:upper:]' '[:lower:]'.dsl)
done

cd ..
rm -R tmp
