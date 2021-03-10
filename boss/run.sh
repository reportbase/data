for i in `ls -d ./*/`
do
  cd "$i"
    ./run.sh
  cd ..
done

html/./meta.sh
ini/./linkp.sh 

