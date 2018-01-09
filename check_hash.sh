if [ "$1" == "" ]; then
  obj="HEAD"
else
  obj=$1
fi

obj_type=`git cat-file -t $obj`
obj_size=`git cat-file $obj_type $obj | wc -c`

(printf "$obj_type %s\0" $obj_size; git cat-file $obj_type $obj) | sha1sum
