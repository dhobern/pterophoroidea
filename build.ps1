$versionid=get-date -UFormat "%y%j (%d %b %Y)"
$releasedate=get-date -UFormat "%Y-%m-%d"
sed -i -e "s/^version: .*$/version: 1.1.$versionid/" -e "s/^released: .*$/released: $releasedate/" coldp/metadata.yaml

erase Pterophoroidea.zip
cd coldp
7z a ../Pterophoroidea.zip *
cd ..

copy Pterophoroidea.zip ..\hobern.net\Pterophoroidea

.\coldp.bat TOHTML -w 4 -t Pterophoroidea -T ../hobern.net/Pterophoroidea/catalogue.php -e Pterophoroidea-catalogue.html coldp/data | sed -e 's/\/img\//img\//' -e 's/\/css\//css\//' > ../hobern.net/Pterophoroidea-TEST.html

.\coldp.bat TOHTML -w 4 -t Pterophoroidea -xo ../hobern.net/Pterophoroidea/Pterophoroidea-catalogue.html coldp/data