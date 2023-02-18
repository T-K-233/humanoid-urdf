

urdf-build:
	onshape-to-robot onshape/humanoid_v1
	python3 scripts/process_model.py 

urdf-clean:
	rm -f onshape/humanoid_v1/*.stl
	rm -f onshape/humanoid_v1/*.part
	rm -f onshape/humanoid_v1/robot.urdf

ros-build:
	colcon build

ros-clean:
	rm -rf install/humanoid_v1/

ros-run:
	ros2 launch humanoid_v1 humanoid_v1.launch.py

pybullet-run:
	onshape-to-robot-bullet onshape/humanoid_v1

