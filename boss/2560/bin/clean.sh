for ((i=0;i<=9;i++)); do
    new=$(printf "%04d" "$i")
    rm -r ../$new/orig/thumb
    rm -r ../$new/orig/tmp
    rm -r ../$new/4*
    rm -r ../$new/5*
done
