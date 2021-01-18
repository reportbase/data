. ../meta.ini
PROJECTITLE=${title}
PROJECTNAME=${name}
PROJECTCOUNT=${count}

. meta.ini
NAME=$1
TITLE=${title}
COUNT=${count}

cp ../bin/describe.res describe.txt 2> /dev/null
sed -i s/{NAME}/${NAME}/ describe.txt 2> /dev/null
sed -i "s/{TITLE}/${TITLE}/" describe.txt 2> /dev/null
sed -i s/{PROJECTNAME}/${PROJECTNAME}/ describe.txt 2> /dev/null


