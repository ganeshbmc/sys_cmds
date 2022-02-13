read x;
if [[ $x =~ '[a-zA-Z]+' ]]; then echo "STRING";
elif [[ $x =~ '^-' ]]; then if [[ $x =~ '-0' ]]; then echo "PNUM"; else echo "NNUM"; fi;
else echo "PNUM"; fi;
