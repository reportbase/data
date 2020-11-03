for ((i=0;i<=40;i++)); do
    new=$(printf "%04d" "$i")
    rm ../$new/orig/thumb/0*.jpg 2> error
    rm -r ../$new/orig/tmp 2> error
    rm -r ../$new/4* 2> error
    rm -r ../$new/5* 2> error
done
