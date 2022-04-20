#!/bin/bash

#get highest tag number
VERSION=`git describe --abbrev=0 --tags`

#replace . with space so can split into an array
VERSION_BITS=(${VERSION//./ })

#get number parts and increase last one by 1
VNUM1=${VERSION_BITS[0]}
VNUM2=${VERSION_BITS[1]}
VNUM3=${VERSION_BITS[2]}
VNUM4=${VERSION_BITS[3]}
VNUM1=`echo $VNUM1 | sed 's/v//'`
VNUM4=$((VNUM4+1))


#create new tag
NEW_TAG="v$VNUM1.$VNUM2.$VNUM3.$VNUM4"

#echo "Updating $VERSION to $NEW_TAG"
#export VERSION=$NEW_TAG
echo $NEW_TAG
