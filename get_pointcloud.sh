#!/bin/zsh
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