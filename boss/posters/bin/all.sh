for ((i=0;i<=05;i++)); do
    new=$(printf "%04d" "$i")
    ./run.sh $new
done
