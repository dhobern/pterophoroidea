@ECHO OFF
erase Pterophoroidea.zip
cd coldp
7z a ../Pterophoroidea.zip *
cd ..

copy Pterophoroidea.zip ..\hobern.net\Pterophoroidea

.\coldp.bat TOHTML -t Pterophoroidea -i 4 -T ../hobern.net/Pterophoroidea/catalogue.php -e Pterophoroidea-catalogue.html coldp/data | sed -e 's/\/img\//img\//' -e 's/\/css\//css\//' > ../hobern.net/Pterophoroidea-TEST.html

.\coldp.bat TOHTML -t Pterophoroidea -i 4 -xo ../hobern.net/Pterophoroidea/Pterophoroidea-catalogue.html coldp/data
