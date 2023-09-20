#! /bin/bash

#Creo carpetas prnciapales
mkdir -p ./Taller_clase_4/Archivos
mkdir ./Taller_clase_4/Mover_Imagen1_aqui

#Creo segundo grupo de carpetas
cd ./Taller_clase_4/Archivos
mkdir ./Textos_Planos
mkdir ./Pdf


#Introducimos la ruta para crear posteriormente crear los archivos
cd ./Textos_Planos
touch Texto_Plano1.txt Texto_Plano2.txt
echo "Hola Texto Plano1" > Texto_Plano1.txt
echo "Hola Texto Plano2" > Texto_Plano2.txt

#Descargamos y cambiamos nombre de pdf
cd ..
cd ./pdf
Pdf=https://www.fing.edu.uy/inco/cursos/sistoper/recursosLaboratorio/tutorial0.pdf
curl -o Explicacion.pdf $Pdf

#cp Texto_Plano.txt ./Copia_Texto_Plano.txt

#Descargamos imagen
cd ..
cd ..
url=https://www.dzoom.org.es/wp-content/uploads/2017/07/seebensee-2384369-810x540.jpg
curl -o Imagen1.jpg $url

#Movemos imagen descargada a carpeta
mv Imagen1.jpg ./Mover_Imagen1_aqui

#Guardamos en un archivo txt la estrctura arbol de nuestro directorio
tree ./ > estructuraTree.txt
echo "El profe se la rifa tqm" >> estructuraTree.txt