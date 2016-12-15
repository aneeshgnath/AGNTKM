
echo "No. of arguments: $#"
echo $1
echo $2
echo "Hai"

a=$1
b=$2
c=$(($a+$b))
echo "sum is $c"

if [ $a == $b ]
then
	echo "equal"
else
	echo "not equal"
fi

