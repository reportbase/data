for ((i=0;i<=5;i++)); do
    new=$(printf "%04d" "$i")
    rm -r ../$new/orig/thumb
done
