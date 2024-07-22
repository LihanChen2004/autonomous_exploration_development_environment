# autonomous_exploration_development_environment

## Introduction

Add ros service to spawn world model and get pointcloud at any pose

## Installation

- Enviroment:
  - Ubuntu 20.04
  - ROS noetic

1. Clone in your ros_ws

    ```sh
    git clone https://github.com/LihanChen2004/autonomous_exploration_development_environment -b noetic-matterport
    ```

2. Download Mesh

    If the url is still available:

    ```sh
    wget https://cdn2.flowus.cn/oss/a19fef15-c6a0-40fe-a90e-4bf9f09dd1ed/matterport.zip\?filename\=matterport.zip\&time\=1721271600\&token\=1751d35a9a7be2af3fc8c285ac9e536734c28f471005348328de1934df19cda9\&role\=free
    ```

    Or you can download from [here](https://flowus.cn/lihanchen/share/b10aa809-28d3-4b4b-a65f-d72755b1026e?code=4PP1RS)

    Unzip and move it to `src/vehicle_simulator/mesh` . Replace the original matterport folder

3. Install Dependency:

    ```sh
    rosdep install -r --from-paths src --ignore-src --rosdistro $ROS_DISTRO -y
    ```

4. build

    ```sh
    catkin_make
    ```

## Usage

1. Launch

    ```sh
    roslaunch vehicle_simulator system_matterport.launch
    ```

2. Init Gazebo to Spawn world model

    Remember to change the absolute Path

    ```sh
    rosservice call /init_gazebo "{
    world_pose: {
        position: {
        x: 0.0, 
        y: 0.0, 
        z: 0.0
        }, 
        orientation: {
        x: 0.0, 
        y: 0.0, 
        z: 0.0, 
        w: 1.0
        }
    }, 
    model_path: '/home/lihanchen2004/AIR_SUMMER/autonomous_exploration_development_environment/src/vehicle_simulator/mesh/matterport/model.sdf'
    }"
    ```

3. Get pointcloud at any pose

    ```sh
    rosservice call /get_pointcloud "
    pose: {
        position: {
        x: 2.0,
        y: 2.0,
        z: 0.0
        },
        orientation: {
        x: 0.0,
        y: 0.0,
        z: 0.0,
        w: 1.0
        }
    }"
    ```

## Original README

<img src="img/header.jpg" alt="Header" width="100%"/>

The repository is meant for leveraging system development and robot deployment for ground-based autonomous navigation and exploration. Containing a variety of simulation environments, autonomous navigation modules such as collision avoidance, terrain traversability analysis, waypoint following, etc, and a set of visualization tools, users can develop autonomous navigation systems and later on port those systems onto real robots for deployment.

Please use instructions on our [project page](https://www.cmu-exploration.com).
