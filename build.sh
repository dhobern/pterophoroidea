##!/bin/bash
sed -i -e "s/^version: .*$/version: 1.1.`date '+%y.%j'`\r/" -e "s/^issued: .*$/issued: `date '+%Y-%m-%d'`\r/" -e "s/Version .* includes updates/Version 1.1.`date '+%y.%j'` includes updates/" coldp/metadata.yaml
sed -i -e "s/Version .* has been updated/Version 1.1.`date '+%y.%j'` has been updated/" -e "s/<h2>Catalogue of the Pterophoroidea of the World, .*</<h2>Catalogue of the Pterophoroidea of the World, version 1.1.`date '+%y.%j'`</" index.php
sed -i -e "s/<h2>Catalogue of the Pterophoroidea of the World, .*</<h2>Catalogue of the Pterophoroidea of the World, version 1.1.`date '+%y.%j'`</" catalogue.php

rm -f Pterophoroidea.zip
cd coldp
zip -r ../Pterophoroidea.zip *
cd ..

cp Pterophoroidea.zip ../../SyncProjects/hobern.net/Pterophoroidea
cp index.php ../../SyncProjects/hobern.net/Pterophoroidea
cp catalogue.php ../../SyncProjects/hobern.net/Pterophoroidea

java -cp ../../SyncProjects/CoLDPUtils/target/COLDPUtils-1.0-SNAPSHOT-jar-with-dependencies.jar io.github.dhobern.coldp.COLDPTool TOHTML -w 4 -t Pterophoroidea -T ../../SyncProjects/hobern.net/Pterophoroidea/catalogue.php -e Pterophoroidea-catalogue.html coldp/data | sed -e 's/\/img\//img\//' -e 's/\/css\//css\//' > ../../SyncProjects/hobern.net/Pterophoroidea-TEST.html

java -cp ../../SyncProjects/CoLDPUtils/target/COLDPUtils-1.0-SNAPSHOT-jar-with-dependencies.jar io.github.dhobern.coldp.COLDPTool TOHTML -w 4 -t Pterophoroidea -xo ../../SyncProjects/hobern.net/Pterophoroidea/Pterophoroidea-catalogue.html coldp/data
