for n in $(seq 1 5)
do
for i in $(seq 1 10)
do
if [ $n -eq 3 ]
then
continue
fi
echo "$n * $i = `expr $n \* $i`"
done
done
