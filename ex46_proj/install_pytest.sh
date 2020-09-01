python -m pip list > list.txt
git add list.txt
git commit -m "package list"

which python > location.txt
which pip >> location.txt
git add location.txt
git commit -m "locations"

mkdir ~/.venvs
python -m venv ~/.venvs/lpthw
. ~/.venvs/lpthw/bin/activate

python -m pip list > list.txt
git add list.txt
git commit -m "venv package list"

which python > location.txt
which pip >> location.txt
git add location.txt
git commit -m "venv locations"

python -m pip install pytest

python -m pip list > list.txt
git add list.txt
git commit -m "package list after installing pytest"
