#!/bin/bash

tiempo=$( curl -X GET http://www.google.com.ar -s -o /dev/null -w  %{time_total}  )
##echo $tiemp
tiempoAux=0,3
echo $tiempo
echo $tiempoAux



if ["$tiempo">"$tiempoAux"]
then
echo 'Has acertado'
exit 
else
echo 'Error, te has equivocado'
exit
fi