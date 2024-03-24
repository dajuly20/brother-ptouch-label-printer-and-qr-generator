#!/bin/bash

PATH=`pwd`
BINPATH="$PATH/build/ptouch-print"
LINKPATH="/usr/bin/ptouch-print"

# Too scared to use the $LINKPATH. 
/usr/bin/sudo `/usr/bin/rm -r "/usr/bin/ptouch-print"`
/usr/bin/echo "Linking $BINPATH to $LINKPATH"
/usr/bin/sudo ln -s "$BINPATH" "$LINKPATH"