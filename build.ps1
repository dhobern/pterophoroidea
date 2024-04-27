$versionid=get-date -UFormat "1.1.%y.%j (%d %b %Y)"
$releasedate=get-date -UFormat "%Y-%m-%d"
$versionshort=get-date -UFormat "1.1.%y.%j"
sed -i -e "s/^version: .*$/version: $versionid\r/" -e "s/^issued: .*$/issued: $releasedate\r/" -e "s/Version .* includes updates/Version $versionshort includes updates/" coldp/metadata.yaml
sed -e "s/Version .* has been updated/Version $versionshort has been updated/" -e "s/<h2>Catalogue of the Pterophoroidea of the World, .*</<h2>Catalogue of the Pterophoroidea of the World, version $versionid</" index.php > index.tmp
copy index.tmp index.php
erase index.tmp
sed -e "s/<h2>Catalogue of the Pterophoroidea of the World, .*</<h2>Catalogue of the Pterophoroidea of the World, version $versionid</" catalogue.php > catalogue.tmp
copy catalogue.tmp catalogue.php
erase catalogue.tmp

erase Pterophoroidea.zip
cd coldp
7z a ../Pterophoroidea.zip *
cd ..

copy Pterophoroidea.zip ..\hobern.net\Pterophoroidea
copy index.php ..\hobern.net\Pterophoroidea
copy catalogue.php ..\hobern.net\Pterophoroidea

.\coldp.bat TOHTML -w 4 -t Pterophoroidea -T ../hobern.net/Pterophoroidea/catalogue.php -e Pterophoroidea-catalogue.html coldp/data | sed -e 's/\/img\//img\//' -e 's/\/css\//css\//' > ../hobern.net/Pterophoroidea-TEST.html

.\coldp.bat TOHTML -w 4 -t Pterophoroidea -xo ../hobern.net/Pterophoroidea/Pterophoroidea-catalogue.html coldp/data