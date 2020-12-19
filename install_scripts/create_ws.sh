#!/usr/bin/env bash

WS_PATH=~/catkin_ws

mkdir -p $WS_PATH/src
cd $WS_PATH
catkin_init_workspace
cd ..
catkin build
source devel/setup.bash
