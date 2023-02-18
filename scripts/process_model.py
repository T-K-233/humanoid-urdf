import os
import sys
import glob
import shutil


src_urdf_path = "onshape/humanoid_v1"
target_urdf_path = "src/humanoid_v1"


def copySTL():
    stl_files = glob.iglob(os.path.join(src_urdf_path, "*.stl"))
    for file in stl_files:
        if os.path.isfile(file):
            shutil.copy2(file, os.path.join(target_urdf_path, "meshes"))

def copyURDF(): 
    with open(os.path.join(src_urdf_path, "robot.urdf"), "r") as f:
        content = f.read()

    content = content.replace("package:///", "package://humanoid_v1/meshes/")

    with open(os.path.join(target_urdf_path, "urdf/robot.urdf.xacro"), "w") as f:
        f.write(content)

copyURDF()
copySTL()

