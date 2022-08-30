#!/bin/bash
BEGIN=1
END=379897

for playerid in $(seq $BEGIN $END)
do
  convert "/content/drive/My Drive/CarruselBot/ImagesFootball/Players/"$playerid".png" -resize 60x60 "/content/drive/My Drive/CarruselBot/ImagesFootball/Players/"$playerid"_small.png"
  mogrify -dither FloydSteinberg -colors 24 "/content/drive/My Drive/CarruselBot/ImagesFootball/Players/"$playerid"_small.png"
  mogrify -strip "/content/drive/My Drive/CarruselBot/ImagesFootball/Players/"$playerid"_small.png"
  echo "Last conversion: $i"
done


