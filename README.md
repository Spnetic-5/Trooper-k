## Team-Kerbecks-and-PS
### _Obstacle Avoidance and Goal To Goal Navigation using Coppeliasim(V-REP)_

## Table of Contents:
[About the Project](https://github.com/Git-Saurabh5/Team-Kerbecks-and-PS/blob/master/README.md#1-about-the-project)
   
    [Tech Stack](https://github.com/Git-Saurabh5/Team-Kerbecks-and-PS#i-tech-stack)
   
    [File Structure](https://github.com/Git-Saurabh5/Team-Kerbecks-and-PS#ii-file-structure)
   
[Getting Started](https://github.com/Git-Saurabh5/Team-Kerbecks-and-PS#2-getting-started)
    
    [Installation of Coppeliasim](https://github.com/Git-Saurabh5/Team-Kerbecks-and-PS#i--installation-of-coppeliasim)
   
    [Start](https://github.com/Git-Saurabh5/Team-Kerbecks-and-PS#ii--start)
   
[Usage](https://github.com/Git-Saurabh5/Team-Kerbecks-and-PS#3--usage)

    [Results and Demo](https://github.com/Git-Saurabh5/Team-Kerbecks-and-PS#results-and-demo)
   
[Troubleshooting](https://github.com/Git-Saurabh5/Team-Kerbecks-and-PS#4troubleshooting)

[Future Work](https://github.com/Git-Saurabh5/Team-Kerbecks-and-PS#5future-work)
   
[Contributors](https://github.com/Git-Saurabh5/Team-Kerbecks-and-PS#6contributors)

[Acknowledgements and Resources](https://github.com/Git-Saurabh5/Team-Kerbecks-and-PS#7acknowledgements-and-resources)

[License](https://github.com/Git-Saurabh5/Team-Kerbecks-and-PS#8licsense)
   
## 1. About the Project:
   The project is a very basic version of the latest self-driven/ autonomous car technology. At the basic levels, simple obstacle avoidance and goal to goal navigation is   achieved. Detecting the environment around it, the car takes necessary actions. Meanwhile, it orients itself in the direction of the target position after every turn or deviation.
  
  ## i. Tech Stack:
   	Coppeliasim (VRep)

	Lua programming (regular API)

	Model imported: Robotnik summit XL

 ## ii. File Structure:
 

      ├── final.ttt                            #Final project file - model with three sensors
      ├── sensor5.ttt
      ├── rotate.ttt
      ├── Ccurve.ttt
      ├── ObstacleAvoidanceandNavigation.ttt   #Goal to goal navigation
      │  
      ├── ProjectCode.lua
      │ 
      ├── docs
      │   ├── Final_report.pdf                 # Project report  
      ├── ...
      ├── ImagesForGitHub
      │       ├── sensor5.png  
      │       ├── sensor3.png
      │       ├── sensor1.mp4
      │       ├── Ccurve.png
      │      
      ├── ...
      ├── LICENSE
      ├── README.md 

 
## 2. Getting Started
  ## i.  Installation of Coppeliasim
  
   [installation in Windows](https://www.coppeliarobotics.com/files/CoppeliaSim_Edu_V4_0_0_Setup.exe)
   
   [installation in Ubuntu](https://www.coppeliarobotics.com/ubuntuVersions)
   
  ## ii.  Start:
   
   Clone repository:
   
     git clone https://github.com/Git-Saurabh5/Team-Kerbecks-and-PS.git
     
   Open the file final.ttt and Run it.
     
   OR
     
   [Download our project file](https://github.com/Git-Saurabh5/Team-Kerbecks-and-PS/raw/master/final.ttt)
   
   Run the program

## 3.  Usage
## Results and demo:
	Various changes were made in the course of project regarding different number of sensors and their position.
These are as follows:

##### •	3 sensors placed on the front side of the car: (as mentioned in the above file final.ttt)

![view image sensor3.png](https://github.com/Git-Saurabh5/Team-Kerbecks-and-PS/tree/master/ImagesForGitHub)

##### •	3 sensors placed on the front side of the car, 2 on either side: 

![view image sensor5.png](https://github.com/Git-Saurabh5/Team-Kerbecks-and-PS/tree/master/ImagesForGitHub)

[Download file](https://github.com/Git-Saurabh5/Team-Kerbecks-and-PS/raw/master/sensor5.ttt) OR open the file sensor5.ttt from cloned repository

##### •	1 sensor placed on a rotating platform placed at the front of the car (this rotating platform performs angular simple harmonic motion): 

![view video sensor1.mp4](https://github.com/Git-Saurabh5/Team-Kerbecks-and-PS/blob/master/ImagesForGitHub/sensor1.mp4) 

[Download file](https://github.com/Git-Saurabh5/Team-Kerbecks-and-PS/raw/master/rotate.ttt) OR open the file rotate.ttt from cloned repository

Based on all these observations we concluded that we would use 3 sensors in the front of the car.

We also tried making the car encounter a C curved obstacle. 

![view image Ccurve.png](https://github.com/Git-Saurabh5/Team-Kerbecks-and-PS/tree/master/ImagesForGitHub) 

[Download file](https://github.com/Git-Saurabh5/Team-Kerbecks-and-PS/raw/master/CcurveObstacle.ttt) OR open file CcurveObstacle.ttt from cloned repository 

####  For basic version of goal to goal navigation:

[Download file](https://github.com/Git-Saurabh5/Team-Kerbecks-and-PS/raw/master/ObstacleAvoidance%20andNavigation.ttt) OR open file ObstacleAvoidanceandNavigation.ttt from cloned repository

[Check out the YouTube video for a demo of all these results](https://youtu.be/kudX5SUs7Vo)
## 4.Troubleshooting:

      Sometimes while running the simulation, you may not get the desired result. In such cases, please try stopping and running the simulation once again. If the issue is not solved yet, then try closing the software and restart it.
      
## 5.Future Work:
    • Study path planning 
    • Objectives like pre-calculation of obstacle-free path, changing path according to static and dynamic objects,reaching and stopping at the correct position.
    • Implementing the same on ROS platform with much more convenience 
    • Studying libraries like OMPL
## 6.Contributors
•[Sanika Gadge](https://github.com/SanikaGadge)

•[Parvathy Nair](https://github.com/ParvatiNair)

•[Saurabh Powar](https://github.com/Git-Saurabh5)



## 7.Acknowledgements and Resources
• [SRA VJTI](http://sra.vjti.info/) Eklavya 2020

## 8.License

All rights as mentioned in [License](https://github.com/Git-Saurabh5/Team-Kerbecks-and-PS/blob/master/LICENSE)


