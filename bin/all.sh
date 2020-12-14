#todo load size
for ((i=0;i<=40;i++)); do
    new=$(printf "%04d" "$i")
    ./run.sh $new 2> error
done
