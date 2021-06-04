# make lpthw venv & install pytest
# lpthw 가상환경을 만들고 pytest를 설치

# update pip, the python package management software
# 파이썬 패키지 관리 프로그램인 pip 를 최신판으로 개정
python -m pip install --upgrade pip

# save the list of python packages installed to a file named list.txt 
# 설치된 파이썬 패키지 목록을 출력하여 list.txt 파일에 저장
python -m pip list > list.txt
git add list.txt
git commit -m "package list"

# write the full path to the python program to location.txt
# bash shell 에서 python 을 실행시킬 때 실행되는 파일의 전체 경로를 location.txt 파일에 기록
which python > location.txt
# append the full path to the pip to the location.txt
# pip 프로그램의 전체 경로를 location.txt 파일에 덧붙임
which pip >> location.txt
git add location.txt
git commit -m "locations"

# make .venvs folder under user's home
# 사용자 홈 폴더에 .venvs 폴더를 생성
mkdir ~/.venvs
# make a venv virtual environment named lpthw
# lpthw 라는 이름의 venv 가상환경 생성
python -m venv ~/.venvs/lpthw
# activate lpthw virtual environment
# lpthw 가상환경을 활성화
. ~/.venvs/lpthw/bin/activate

# overwrite list.txt with the package list of lpthw venv before installing pytest
# pytest를 설치하기 전 lpthw 가상환경의 패키지 목록으로 list.txt 파일을 덮어씀
python -m pip list > list.txt
git add list.txt
git commit -m "venv package list"

# overwrite location.txt file with the full path to python of lpthw venv
# lpthw 가상환경의 python 파일의 전체 경로로 location.txt 파일을 덮어씀
which python > location.txt
# append the full path to the pip of lpthw venv to the location.txt
# lpthw 가상환경의 pip 프로그램의 전체 경로를 location.txt 파일에 덧붙임
which pip >> location.txt
git add location.txt
git commit -m "venv locations"

# install pytest (within the lpthw venv)
# (lpthw 가상환경에) pytest를 설치
python -m pip install pytest

# overwrite list.txt with the list of the packages
# pytest 설치 이후 패키지 목록으로 list.txt를 덮어씀
python -m pip list > list.txt
git add list.txt
git commit -m "package list after installing pytest"
