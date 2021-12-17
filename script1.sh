#!/bin/bash

: '
number=4
if [ $number -gt 5 ]
then
	echo "$number > 5"
elif [ $number -lt 5 ]
then
	echo "$number < 5"
	#statements
fi
number=4
if [ $number -gt 5 ]
then
	echo "$number > 5"
else
	echo "$number < 5"
	#statements
umber=4
if [ $number -gt 5 ]
then
	echo "$number > 5"
elif [ $number -lt 5 ]
then
	echo "$number < 5"
else
	echo "$number = 5"

fi
: '
: '
read number
if [ $number -gt 5 ]
then
	echo "$number > 5"
elif [ $number -lt 5 ]
then
	echo "$number < 5"
else
	echo "$number = 5"
fi

echo " Enter number"
if [ $number -gt 5 ]
then
	echo "$number > 5"
elif [ $number -lt 5 ]
then
	echo "$number < 5"
else
	echo "$number = 5"
fi
: '
: '
read -p "Enter a number: " number
if [ $number -gt 5 ]
then
	echo "$number > 5"
elif [ $number -lt 5 ]
then
	echo "$number < 5"
else
	echo "$number = 5"
fi
: '
: '
name="Dmitry"
read -p "Enter a name:" name_input
if [[ $name == $name_input ]]
then
	echo "Success!!!"
else
	echo "Faiked!!!"
fi
: '
: '
read -p "Enter a number" number
number=$(( $number + 10 ))
echo "Result: $number"

read -p "Enter a number" number
let "number+10"
echo "Result: $number"
: '
: '
cmd_1=$(ls)
cmd_2=`ls`
echo -e "$cmd_1\n$cmd_2"
read -p "Enter a number:" value
if [ $value -gt 10 ]
then
	echo "$value > 10"
elif [ $value -lt 10 ]
then
	echo "$value < 10"
else
	echo "$value = 0 or Error"
fi
: '
: '
number=1
while [ $number -lt 10 ] 
do
	echo $number
	number=$(( $number + 1 ))
done
: '
: '
IFS=$'\n'
number=0
for line in `cat file.txt`
do
	number=$(( $number + 1 ))
	echo "$number) $line"
done
: '
: '
name="Andrey"
case $name in 
	Andrey) 
			echo "Correct!";
			echo "...";;
	Oksana)
			echo -e "Incorrect!\nYou enetered Oksana.";;
	*) 
			echo "Default value!";;
esac
: '
: '
read -p "Enter some name;" name
case $name in 
	Andrey) 
			echo "Correct!";
			echo "...";;
	Oksana)
			echo -e "Incorrect!\nYou enetered Oksana.";;
	*) 
			echo "Default value!";;
esac

: '
read -p "Enter some name;" name
case $name in 
	Andrey|andrey) 
			echo "Correct!";
			echo "...";;
	[Oo][kK][sS][aA][nN][aA])
			echo -e "Incorrect!\nYou enetered Oksana.";;
	*) 
			echo "Default value!";;
esac