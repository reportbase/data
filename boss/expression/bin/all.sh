for ((i=0;i<=6;i++)); do
    new=$(printf "%04d" "$i")
    ./run.sh $new
done
