#!/bin/bash
sed -i -e "s/^version: .*$/version: 1.1.`date '+%y.%j'`\r/" -e "s/^issued: .*$/issued: `date '+%Y-%m-%d'`\r/" coldp/metadata.yaml

rm -f Pterophoridae.zip
cd coldp
zip -r ../Pterophoridae.zip *
cd ..