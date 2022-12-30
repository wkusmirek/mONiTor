rm $2/*fast5
for file in $(ls -a $1)
do
     cp $1/$file $2
     sleep 20
done
