. ../meta.ini
COUNT=${count}

for ((i=0;i<=$COUNT;i++)); do
    new=$(printf "%04d" "$i")
    ./run.sh $new 2> error
done
