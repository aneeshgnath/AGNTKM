
echo "No. of argument: $#"
if [ $# != 2 ]
then
	echo "you forgot something"
	exit 0
fi

echo $0
echo $1
FILE=$1
uname=$2
wordcount=$(wc -l < $1)
echo "no of lines is $wordcount"
wc -l $1
if [ ! -f "$FILE" ]      # -f for checking file existance
then
	echo "File $FILE does not exists"
	exit 0
else
	if grep  -xq "$uname" "$FILE"	# -x avoids substring cheking  -q avoid displaying property of grep 
	then 
		echo "chekkan undu"
	else
		echo $uname>>"$FILE"
		echo "Chekkane ketiee..."
	fi	
fi

cat /proc/cpuinfo | grep "model name"

