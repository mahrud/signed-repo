git cat-file -p HEAD > sig
vim sig  # only signature
git cat-file -p HEAD > file
vim file # no signature
gpg --verify sig file
