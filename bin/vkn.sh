NAME=$(grep -i "name=" meta.ini)

if [ -z "$NAME" ] 
then
    RNAME=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 4 | head -n 1)
    RNAME=${RNAME^^}
    vkr.sh name $RNAME
fi







