for i in `ls -d ./*/`
do
  cd "$i"
    ./run.sh 2> /dev/null
  cd ..
done

html/./meta.sh
ini/./linkp.sh 

