#!/bin/bash
#this is a comment

#should be added to testbranch
#should be the newest branch
echo "pwd"
pwd

echo "ls"
opt='-l'
ls $opt

echo "if"
read str
if [ "$str" = "hoge" ] ;then
	echo "hoge"
elif [ "$str" = "fuga" ] ;then
	echo "fuga"
else
	echo "unknown"
fi

echo "case"
read str2
case "$str2" in
	"hoge" ) echo "hoge";;
	"fuga" ) echo "fuga";;
	* ) echo "unknown";;
esac

echo "for"
for i in 0 1 2 3
do
	echo $i
done

echo "while"
while :
do
	read str3

	if [ "$str3" = "end" ];then
		break
	fi
done

#grep
if grep 'hoge' tesh.sh >/dev/null 2>&1
	then
		echo "hoge found."
	else
		echo "not found."
fi

#grep2
if echo $* | grep 'hoge' >/dev/null 1>&2
then
	echo "found."
else
	echo "not found."
fi
