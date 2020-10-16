
#!/bin/bash

#Descarga los datos del clima
cd /mnt/c/Users/danil/Documents/Radio/Script/MeteoRoh/
rm INFOCLIMA.mp3
wget --output-document=.sitio-clima http://infoclima.com/pronosticos/argentina/misiones/obera/

#################################################################################################################################
cat .sitio-clima | grep 'rmica <span>' -a -i | cut -c 45-46 > .Temp2.txt
cat .sitio-clima | grep '<p>Humedad: <span>'  | cut -c 19-20 > .Hume2.txt

Temperatura=`cat .Temp2.txt` 
Humedad=`cat .Hume2.txt`
Hora=`cat .Hora.txt`
Minutos=`cat .Minutos.txt`

if [ 10 > $Temperatura ];
then
      cat .sitio-clima | grep 'rmica <span>' -a -i | cut -c 45 > .Temp2.txt
      cat .sitio-clima | grep '<p>Humedad: <span>'  | cut -c 19-20 > .Hume2.txt
      cat .Hora.txt
      ls -a
     `cat .Hth/Time/HRS$Hora.mp3 .Hth/Time/MIN$Minutos.mp3 .Hth/Temp/TMP0$Temperatura* .Hth/Hume/HUM0$Humedad.mp3 > INFOCLIMA.mp3`
else
     `cat .Hth/Time/HRS$Hora.mp3 .Hth/Time/MIN$Minutos.mp3 .Hth/Temp/TMP0$Temperatura* .Hth/Hume/HUM0$Humedad.mp3 > INFOCLIMA.mp3`   
fi
      
#################################################################################################################################
#Salida a Radit
echo $Temperatura $Humedad > /home/fm-gilgal/Radit-1.0-Lucid-Amd64/Currenweather/currenweather.txt
exit
#Toma la hora

date +"%H" > .Hora.txt
date +"%M" > .Minutos.txt
Hora=`cat .Hora.txt`
Minutos=`cat .Minutos.txt`
Temp=`cat .Temp.txt`
Hume=`cat .Hume.txt`
Pres=`cat .Pres.txt`
Vien=`cat .Vien.txt`
Puntos=:

rm .MeteoRoh.txt
echo Es la hora $Hora$Puntos$Minutos >> .MeteoRoh.txt
echo Temperatura $Temp >> .MeteoRoh.txt
echo Humedad $Hume >> .MeteoRoh.txt
echo Presion Atmosferica $Pres >> .MeteoRoh.txt
echo Velocidad del Viento $Vien >> .MeteoRoh.txt
