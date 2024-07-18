# autonomous_exploration_development_environment

## Introduction

Branch noetic-matterport is used for [MonoGS-LIV](https://github.com/SeanComeOn/MonoGS-LIV)

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

    Unzip and move it to `src/vehicle_simulator/mesh`. Replace the original matterport folder

3. Install Dependency:

    ```sh
    rosdep install -r --from-paths src --ignore-src --rosdistro $ROS_DISTRO -y
    ```

4. build

    ```sh
    catkin_make
    ```

## Launch

```sh
roslaunch vehicle_simulator system_matterport.launch
```

## Original README

<img src="img/header.jpg" alt="Header" width="100%"/>

The repository is meant for leveraging system development and robot deployment for ground-based autonomous navigation and exploration. Containing a variety of simulation environments, autonomous navigation modules such as collision avoidance, terrain traversability analysis, waypoint following, etc, and a set of visualization tools, users can develop autonomous navigation systems and later on port those systems onto real robots for deployment.

Please use instructions on our [project page](https://www.cmu-exploration.com).
