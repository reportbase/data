. meta.ini
GLOBIGNORE="*"
shopt -s nocasematch
F1=$(printf "ls %03d* | wc -l" $montagecols_4)
F2=$(printf "ls %03d* | wc -l" $MontageCols_4)
GLOBIGNORE=""

if [ -z "$F1" ] 
then
    COUNT=$(eval "$F1")
else
    COUNT=$(eval "$F2")
fi

vkr.sh count $COUNT
