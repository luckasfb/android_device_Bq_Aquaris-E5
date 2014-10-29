#!/bin/sh

VENDOR=Bq
DEVICE=E5HD

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary

echo "Pulling $DEVICE files..."
for FILE in `cat proprietary-files.txt | grep -v ^# | grep -v ^$`; do
DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
mkdir -p $BASE/$DIR
    fi
#adb pull /system/$FILE $BASE/$FILE
cp /home/david/Android/stock/system/$FILE $BASE/$FILE
done

./setup-makefiles.sh
