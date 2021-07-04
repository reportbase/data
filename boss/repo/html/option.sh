source <(grep title meta.ini)
source <(grep count meta.ini)
PROJECTITLE="${title}"
PROJECTCOUNT="${count}"
PROJECTNAME=$1
          
printf '<form>\n' > html/option.txt
printf '<select onchange=\"selectproject()\" style=\"width:200\" id=\"sfr\" name=\"sfr\">\n' >> html/option.txt

COUNT=`expr $PROJECTCOUNT - 1`
for i in $(seq 0 $COUNT); do 
    FOLDER=$(printf "%04d" "$i") 
    source <(grep title $FOLDER/meta.ini)
    source <(grep count $FOLDER/meta.ini)
    source <(grep name $FOLDER/meta.ini)
    printf '<option value=%s>%s</option>\n' $name $name >> html/option.txt
    title=""
    name=""
done

printf '</select>\n' >> html/option.txt
printf '</form>\n' >> html/option.txt






