# copies skeleton folder from ex46
# copy skeleton folder from ex46
# ex46 로 부터 skeleton 폴더를 복사
import os
import shutil
import sys


def main():

    ex47_folder = os.path.abspath(os.path.dirname(__file__))
    ex46_folder = os.path.split(ex47_folder)[0]

    assert os.path.exists(ex46_folder), "unable to find ex46 folder"
    
    skeleton_folder = 'skeleton'
    ex46_skeleton_folder = os.path.join(ex46_folder, skeleton_folder)

    assert os.path.exists(ex46_skeleton_folder), f'''unable to find "{skeleton_folder}" under {ex46_folder}'''

    ex47_skeleton_folder = os.path.join(ex47_folder, skeleton_folder)

    shutil.copytree(ex46_skeleton_folder, ex47_skeleton_folder)


if "__main__" == __name__:
    main()
