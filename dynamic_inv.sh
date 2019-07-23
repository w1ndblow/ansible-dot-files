#!/bin/bash

set -xu

CHANGEVARFILE=`grep -oE "FILENAME=(.*)" dynamic_inv.py`
CHANGEVARGROUP=`grep -oE "GROUP=(.*)" dynamic_inv.py`
PATH_TO_FILE=${1//\//\\\/}

if [ -f $1 ];
then
sed -i "s/$CHANGEVARFILE/FILENAME=\'$PATH_TO_FILE\'/g" dynamic_inv.py;
sed -i "s/$CHANGEVARGROUP/GROUP=\'$2\'/g" dynamic_inv.py;
else
exit 1;
fi
