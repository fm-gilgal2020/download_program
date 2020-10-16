#!/bin/bash


cd /mnt/c/Users/fmgil/Documents/Radio/Programas/Flash_de_noticias/Matutino ||  return 'no se encontró la carpeta'

rm *.mp3


#CODIGO Actual                          
wget --user fmgilgal --password 123abc http://www.descarganoticias.com.ar/editnoti/flash01.mp3
wget --user fmgilgal --password 123abc http://www.descarganoticias.com.ar/editnoti/flash02.mp3
wget --user fmgilgal --password 123abc http://www.descarganoticias.com.ar/editnoti/flash03.mp3
wget --user fmgilgal --password 123abc http://www.descarganoticias.com.ar/editnoti/flash04.mp3
wget --user fmgilgal --password 123abc http://www.descarganoticias.com.ar/editnoti/flash05.mp3
wget --user fmgilgal --password 123abc http://www.descarganoticias.com.ar/editnoti/flash06.mp3
wget --user fmgilgal --password 123abc http://www.descarganoticias.com.ar/editnoti/flash07.mp3
                                   

# FRAGMENTO DE CODIGO ANTIGUO QUE CONTENIA LA URL ANTEIOR LA CUAL YA NO ES FUNCIONAL
# wget --user fmgilgal --password 123abc http://www.descarganoticias.com.ar/genexflash/flash01.mp3
# wget --user fmgilgal --password 123abc http://www.descarganoticias.com.ar/genexflash/flash02.mp3
# wget --user fmgilgal --password 123abc http://www.descarganoticias.com.ar/genexflash/flash03.mp3
# wget --user fmgilgal --password 123abc http://www.descarganoticias.com.ar/genexflash/flash04.mp3
# wget --user fmgilgal --password 123abc http://www.descarganoticias.com.ar/genexflash/flash05.mp3
# wget --user fmgilgal --password 123abc http://www.descarganoticias.com.ar/genexflash/flash06.mp3
# wget --user fmgilgal --password 123abc http://www.descarganoticias.com.ar/genexflash/flash07.mp3
#exit
