#!/bin/bash
cd /mnt/c/Users/danil/Documents/Radio/Script/MeteoRoh/MeteoRoh_Zararadio/
rm sitio-clima.txt
wget --output-document=sitio-clima.txt http://infoclima.com/pronosticos/argentina/misiones/obera/
type sitio-clima.txt | find 'rmica <span>' -a -i | cut -c 45-46 > Temp.txt
type sitio-clima.txt | find '<p>Humedad: <span>'  | cut -c 19-20 > Hume.txt
Temp=type Temp.txt
Hume=type Hume.txt
rm clima.txt
echo Temperature:$Temp >> Clima.txt
echo Humidity:$Hume >> Clima.txt


