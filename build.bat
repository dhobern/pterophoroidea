java -cp ../CoLDPUtils/target/CoLDPUtils-1.0-SNAPSHOT-jar-with-dependencies.jar io.github.dhobern.coldp.CoLDPTool -t Pterophoroidea -i 4 -T ../hobern.net/Pterophoroidea/index.php -e Pterophoroidea-catalogue.html coldp/data | sed -e 's/\/img\//img\//' -e 's/\/css\//css\//' > ../hobern.net/Pterophoroidea-TEST.html

java -cp ../CoLDPUtils/target/CoLDPUtils-1.0-SNAPSHOT-jar-with-dependencies.jar io.github.dhobern.coldp.CoLDPTool -t Pterophoroidea -i 4 -xo ../hobern.net/Pterophoroidea/Pterophoroidea-catalogue.html coldp/data

erase Pterophoroidea.zip
cd coldp
7z a ../Pterophoroidea.zip *
cd ..

copy Pterophoroidea.zip ..\hobern.net\Pterophoroidea

