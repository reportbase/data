identify *jpg | \
gawk '{split($3,sizes,"x"); print $1,sizes[1]/sizes[2]}' | \
sed 's/\[.\]//' | sort -gk 3 | \
sort -k2,2nr


