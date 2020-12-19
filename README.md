Constrained Deformable Coherent Point Drift (CDCPD & CDCPD2)
=============

CDCPD is an implementation of *Occlusion-robust Deformable Object Tracking without Physics Simulation*
by Cheng Chi and Dmitry Berenson.

CDCPD2 is an implementation of *Tracking Partially-Occluded Deformable Objects while Enforcing Geometric Constraints*
by Yixuan Wang, Dale McConachie and Dmitry Berenson.

Requirements
------------
  * Environment:
    * Ubuntu 18 or 20
    * ROS Melodic or Noetic
  * non-source dependencies
    * [Gurobi](https://www.gurobi.com/)
    * [Eigen](http://eigen.tuxfamily.org/dox/GettingStarted.html)
    * [CGAL-5.0.3](https://github.com/CGAL/cgal/releases/tag/releases%2FCGAL-5.0.3)
  * source dependencies
    * [faiss-1.6.3](https://github.com/facebookresearch/faiss)
    * [kka_iiwa_interface](https://github.com/UM-ARM-Lab/kuka_iiwa_interface)
      * [robotiq](https://github.com/UM-ARM-Lab/robotiq) (needed by kuka_iiwa_interface)
    * [arc_utilities](https://github.com/UM-ARM-Lab/arc_utilities)
    
    

Installation
------------

Some of the dependencies are available on apt:
```
sudo apt install libeigen3-dev libgcgal-qt5-dev libopencv-dev
```

FAISS: should be installed from source, please see `install_scripts/install_faiss.sh`

We assume you have created a catkin workspace. Now clone this repo to that worksace. See `install_scripts/setup_ws.sh` or the ROS wiki on how to setup a catkin workspace.


```
# in the src directory
git clone https://github.com/UM-ARM-Lab/cdcpd.git
```


* Gurobi: follow instructions here https://www.gurobi.com/documentation/9.0/quickstart_linux/software_installation_guid.html

#### Gurobi Licence

Gurobi is a proprietary optimization package that we use. Please obtain a [free academic license](https://www.gurobi.com/academia/academic-program-and-licenses).

Demo
------------
To run the demo, you will need to download some [dataset](https://drive.google.com/drive/folders/1rnmUDIAFOpbrpt6wNurH6x2WF5xm_3ij?usp=sharing). Then run the corresponding scripts under `cdcpd/scripts`. You need to specify `.bag` file path in the shell script.

My own running result is [here](https://drive.google.com/drive/folders/1MZTR-hEaU5czsxzUIKvPnCCAEd29aM4u?usp=sharing), which includes MP4 files.
