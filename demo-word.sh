make
if [ ! -e text8 ]; then
  wget http://mattmahoney.net/dc/text8.zip -O text8.gz
  gzip -d text8.gz -f
fi
time ./OptRank3 -train text8 -output Opt_text8 -cbow 1 -size 300 -window 5 -negative 5 -hs 0 -sample 1e-4 -threads 20 -min-count 5 -binary 1 -iter 5
