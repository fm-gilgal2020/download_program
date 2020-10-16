#!/bin/bash
cd /mnt/c/Users/danil/Documents/Radio/Script/MeteoRoh/MeteoRoh_Zararadio/
rm sitio-clima.txt
wget --output-document=sitio-clima.txt http://infoclima.com/pronosticos/argentina/misiones/obera/
cat sitio-clima.txt | grep 'rmica <span>' -a -i | cut -c 45-46 > Temp.txt
cat sitio-clima.txt | grep '<p>Humedad: <span>'  | cut -c 19-20 > Hume.txt
Temp=cat Temp.txt
Hume=cat Hume.txt
rm clima.txt
echo Temperature:$Temp >> Clima.txt
echo Humidity:$Hume >> Clima.txt


