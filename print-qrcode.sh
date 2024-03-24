#!/bin/bash
IMGPATH="/tmp/qr.png"


if [ -n "$1" ]; then
  QRVAL="$1"
else
  echo "Print a value transformed into the maximum printable size (128x128) QR Code"
  echo "USAGE: $0 <QR-VALUE>" 
  echo ""
  read -p "Value to print as QR:" QRVAL
fi


echo $QRVAL


PATH="https://api.qrserver.com/v1/create-qr-code/?size=128x128&data=$QRVAL"
#echo "Der volle Pfadv ist: $PATH  <<< "
/usr/bin/wget "$PATH" -O "$IMGPATH"

/usr/bin/sudo /usr/bin/ptouch-print --image "$IMGPATH"
/usr/bin/rm $IMGPATH
