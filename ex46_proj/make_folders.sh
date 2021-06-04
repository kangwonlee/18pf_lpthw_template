# make a new folder
# 폴더 생성
mkdir skeleton

# change working directory to the new folder
# 폴더 이동
pushd skeleton

# make sub folders
# 하위 폴더 생성
mkdir bin NAME tests docs

# make empty files
# 빈 파일 생성
touch NAME/__init__.py
touch tests/__init__.py

# return to the folder where last pushd was executed
# pushd 명령을 실행했던 폴더로 이동
popd
