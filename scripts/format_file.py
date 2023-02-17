with open("onshape/humanoid_v1/robot.urdf", "r") as f:
    content = f.read()

print(content[:100])

content = content.replace("package:///", "package://humanoid_v1/meshes/")

with open("src/humanoid_v1/urdf/robot.urdf.xacro", "w") as f:
    f.write(content)