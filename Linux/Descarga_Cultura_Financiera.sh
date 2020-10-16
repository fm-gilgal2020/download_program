#!/bin/bash

cd/mnt/c/Users/fmgil/Documents/Radio/Programas/Cultura_Financiera
rm *.mp3 *.zip

#Crea un subdirectorio llamado tambien "Cultura_Financiera"
#mkdir Cultura_Financiera

#Se ubica en el directorio
cd/mnt/c/Users/fmgil/Documents/Radio/Programas/Cultura_Financiera
	
#Descarga los archivos

date +"%b" > Mes.txt
#date +"%y" > Ano.txt
date +"%Y" > Ano.txt
# date +"%m" > MesNumero.txt
Mes=`cat Mes.txt`
# MesNumero=`cat MesNumero.txt`
Ano=`cat Ano.txt`



if [ Jan = $Mes ] ; then
 newMes=ene

elif [ Feb = $Mes ] ; then
 newMes=feb

elif [ Mar = $Mes ] ; then
 newMes=mar

elif [ Apr = $Mes ] ; then
 newMes=abr

elif [ May = $Mes ] ; then
newMes=may

elif [ Jun = $Mes ] ; then
 newMes=jun

elif [ Jul = $Mes ] ; then
 newMes=jul

elif [ Aug = $Mes ] ; then
 newMes=ago

elif [ Sep = $Mes ] ; then
 newMes=sep

elif [ Oct = $Mes ] ; then
 newMes=oct

elif [ Nov = $Mes ] ; then
 newMes=nov

elif [ Dec = $Mes ] ; then
 newMes=dic

fi

password='tK6WPv5*4Ca$p0qdmihEPf0w'

#a partir de junio del 2020 cultura financiera paso a nombrar de july_20 a jul2020 por $ano se cambio de -y a -Y
wget fmgilgal@gmail.com --password iglesia423618 http://miculturafinanciera.com/archivos/$newMes$Ano.zip
# wget  --no-hsts --user fmgilgal@gmail.com --password  $password https://miculturafinanciera.org/archivos/$newMes$Ano.zip

# http://miculturafinanciera.com/archivos/sep2020.zip
							
#Descomprime todos los archivos
#unzip $MesENG$Ano.zip
#unzip -l $MesENG$Ano.zip
#unzip -j $MesENG$Ano.zip "*.mp3" -d .
#Lista los archivos


#Extrae todos los archivos de los subdirectorios
#-find /mnt/c/Users/fmgil/Documents/Radio/Programas/Cultura_Financiera/ -type f -name *.mp3 -exec mv {} #-/mnt/c/Users/fmgil/Documents/Radio/Programas/Cultura_Financiera/ \;

#rm *.zip
rm *.txt
#rm -r Cultura_Financiera

exit