rm -rf clone
git clone --no-checkout --depth 1 https://github.com/mahrud/signed-repo/ clone
cd clone
git config core.sparseCheckout true
echo "root/0/0/0" >> .git/info/sparse-checkout
git checkout origin/master
cd ..
