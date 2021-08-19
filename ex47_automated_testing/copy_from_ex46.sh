#!/bin/bash
# ex 46 에서 이미 생성한 폴더를 복사
# Copy folders already in ex 46

# 현재 폴더를 CURRENT_DIR 변수에 저장
# Store the current folder in a variable named CURRENT_DIR
# https://codechacha.com/ko/how-to-get-path-of-bash-script/
CURRENT_DIR=`dirname "$BASH_SOURCE"`

# 예상 ex 46 폴더를 EX46_FOLDER 변수에 저장
# Store the expected ex 46 folder in a variable named EX46_FOLDER
EX46_FOLDER=$CURRENT_DIR/../ex46_proj

# 예상했던 위치에서 ex46 폴더를 찾지 못하는 경우 중단
# If unable to find ex46 folder at the expected location, stop
if [[ ! -d $EX46_FOLDER ]]; then
    echo "unable to find ex46 folder at : $EX46_FOLDER"
    # cs.ait.ac.th/~on/O/oreilly/unix/upt/ch44_11.htm
    exit 1
fi;

# "skeleton" 이라는 문자열을 SKELETON_FOLDER 라는 변수에 저장
# Store a string "skeleton" in a variable named SKELETON_FOLDER
SKELETON_FOLDER=skeleton

# ex46 폴더 아래 skeleton 폴더의 예상 위치를 EX46_SKELETON_FOLDER 에 저장
# Store the expected location of skeleton folder under ex46 in a variable
EX46_SKELETON_FOLDER=$EX46_FOLDER/$SKELETON_FOLDER

# 예상했던 위치에서 skeleton 폴더를 찾지 못하는 경우 중단
# If unable to find skeleton folder at the expected location, stop
if [[ ! -d $EX46_SKELETON_FOLDER ]]; then
    echo "unable to find skeleton folder under ex46 at : $EX46_SKELETON_FOLDER"
    exit 1
fi;

# ex 46 의 skeleton 폴더 아래 트리를 현재 폴더로 복사함
# Copy the tree under ex 46 skeleton to the current folder
cp -r $EX46_SKELETON_FOLDER $SKELETON_FOLDER
