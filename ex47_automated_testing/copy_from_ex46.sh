#!/bin/bash
# https://codechacha.com/ko/how-to-get-path-of-bash-script/
CURRENT_DIR=`dirname "$BASH_SOURCE"`

EX46_FOLDER=$CURRENT_DIR/../ex46_proj
if [[ ! -d $EX46_FOLDER ]]; then
    echo "unable to find ex46 folder"
    # cs.ait.ac.th/~on/O/oreilly/unix/upt/ch44_11.htm
    exit 1
fi;

SKELETON_FOLDER=skeleton
EX46_SKELETON_FOLDER=$EX46_FOLDER/$SKELETON_FOLDER

if [[ ! -d $EX46_SKELETON_FOLDER ]]; then
    echo "unable to find skeleton folder under ex46"
    exit 1
fi;

cp -r $EX46_SKELETON_FOLDER $SKELETON_FOLDER
