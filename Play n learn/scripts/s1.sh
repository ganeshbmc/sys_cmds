! /bin/bash
# s1.sh is my first script
echo I am invoked as: 
echo $0
echo "Number of arguments passed to the script:"
echo $#
echo First argument passed:
echo $1
echo Second argument passed:
echo $2
# -----------------------------------------------
if test $# -ge 2;
then
    if test $1 = $2;
    then
        echo The two arguments are same
    fi
fi
# -----------------------------------------------
