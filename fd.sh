if [ -f $1 ]
 then
 echo "it is a file"
 elif [ -d $1 ]
 then
 echo "it is a directory"
 else
 echo "something else"
fi
