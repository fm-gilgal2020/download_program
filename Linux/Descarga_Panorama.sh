#!/bin/bash
cd /mnt/c/Users/fmgil/Documents/Radio/Programas/Panorama

date +"%d" > .Dia.txt
date +"%B" > .Mes.txt
date +"%Y" > .Ano.txt
date +"%m" > .MesNumero.txt
Mes=`cat .Mes.txt`
MesNumero=`cat .MesNumero.txt`
Dia=`cat .Dia.txt`
Ano=`cat .Ano.txt`
Manana1="a"
Manana2="a.mp3"
guion='-'
Tarde1="b"
Tarde2="b.mp3"
newURL='https://archive.org/download'
URL="https://radioteca.net/media/uploads/audios/"
Slash="/"

if [ January = $Mes ] ; then
 MesENG=enero

elif [ February = $Mes ] ; then
 MesENG=febrero
 MesMayus=Febrero

elif [ March = $Mes ] ; then
 MesENG=marzo
  MesMayus=Marzo

elif [ April = $Mes ] ; then
 MesENG=abril
  MesMayus=Abril

elif [ May = $Mes ] ; then
 MesENG=mayo
  MesMayus=Mayo

elif [ June = $Mes ] ; then
 MesENG=junio
 MesMayus=Junio

elif [ July = $Mes ] ; then
 MesENG=julio
 MesMayus=Julio

elif [ August = $Mes ] ; then
 MesENG=agosto
 MesMayus=Agosto

elif [ September = $Mes ] ; then
 MesENG=septiembre
 MesMayus=Septiembre


elif [ October = $Mes ] ; then
 MesENG=octubre
 MesMayus=Octubre


elif [ November = $Mes ] ; then
 MesENG=noviembre
 MesMayus=Noviembre


elif [ December = $Mes ] ; then
 MesENG=diciembre
 MesMayus=Diciembre

fi  
cd /mnt/c/Users/fmgil/Documents/Radio/Programas/Panorama/Panorama1
rm *.mp3

wget $newURL$Slash$MesENG$guion$Dia$Manana1$Slash$MesMayus$Dia$Manana2 
# wget $newURL$Ano$Slash$MesNumero$Slash$MesENG2$Dia$Manana
cd /mnt/c/Users/fmgil/Documents/Radio/Programas/Panorama/Panorama2
rm *.mp3
wget $newURL$Slash$MesENG$guion$Dia$Tarde1$Slash$MesMayus$Dia$Tarde2 
# wget $newURL$Ano$Slash$MesNumero$Slash$MesENG2$Dia$Tarde

exit
