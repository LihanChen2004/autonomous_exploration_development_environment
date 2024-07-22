#!/bin/zsh
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