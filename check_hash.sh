if [ "$1" == "" ]; then
  obj="HEAD"
else
  obj=$1
fi

# git ls-tree HEAD^{tree} | git mktree
# git write-tree --prefix=root/
# git hash-object -t blob file

obj_type=`git cat-file -t $obj`
obj_size=`git cat-file $obj_type $obj | wc -c`

(printf "$obj_type %s\0" $obj_size; git cat-file $obj_type $obj) | sha1sum
