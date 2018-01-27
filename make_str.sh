# str=sign_SK_d(t:t_prev:root_t:H(STR_pref):policy)
echo "2018:2017:281901eba888ee630110d999bc84e2a42df364d8:H(null):default" | \
  gpg2 --armor --clear-sign --output tree-2018.signed \
       --local-user mahrud@berkeley.edu
