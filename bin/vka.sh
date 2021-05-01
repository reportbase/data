vkd.sh extent
vkd.sh aspect
source <(grep montagecols_4 meta.ini)
source <(grep MontageCols_4 meta.ini)
. meta.ini

F1=$montagecols_4
F2=$MontageCols_4

if [ -z "$F1" ] 
then
    COUNT=$F2
else
    COUNT=$F1
fi

F3=$(printf "%03d.000.jpg" $COUNT)
identify $F3 | gawk '{print "extent="$3}' >> meta.ini
identify $F3 | gawk '{split($3,sizes,"x"); print "aspect="sizes[1]/sizes[2]}' >> meta.ini





