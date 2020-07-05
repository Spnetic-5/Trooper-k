function sysCall_threadmain()  --Declaring a Threadmain function
    motorHandles={-1,-1,-1,-1}   -- Declaring motor handles
    Robot = sim.getObjectHandle('Robotnik_Summit_XL')  -- Declaring object handles
    Goal = sim.getObjectHandle('Goal')
    motorHandles[1]=sim.getObjectHandle('joint_front_left_wheel')
    motorHandles[2]=sim.getObjectHandle('joint_front_right_wheel')
    motorHandles[3]=sim.getObjectHandle('joint_back_right_wheel')
    motorHandles[4]=sim.getObjectHandle('joint_back_left_wheel')
    sensorMiddle=sim.getObjectHandle('Proximity_sensor')
    sensorLeft=sim.getObjectHandle('Proximity_sensor2')
    sensorRight=sim.getObjectHandle('Proximity_sensor1')
    flag=0
    s=1
    t=1
    r=0
    o=0
    rp = sim.getObjectPosition(Robot,-1) -- position of Bot
    cp = sim.getObjectPosition(Goal,-1) -- position of Goal
    f = math.atan2(cp[2]-rp[2],cp[1]-rp[1])  --angle by which the bot should rotate so as to orient itself towards the goal
    changeDirection()  -- function which rotates Bot
    
    while(true)do
    pos = sim.getObjectPosition(Robot,-1)
    f = math.atan2(cp[2]-rp[2],cp[1]-rp[1])
    result=sim.readProximitySensor(sensorMiddle) --Reading Proximity Sensor Values 
    result1=sim.readProximitySensor(sensorRight)
    result2=sim.readProximitySensor(sensorLeft)
    print(pos,cp)
    
       
        --- 000 ---

    if (result1==0 and result==0 and result2==0 and flag==0) then      --straight--
    r=0
    o=0
    sim.setJointTargetVelocity(motorHandles[1],2)
    sim.setJointTargetVelocity(motorHandles[2],-2)
    sim.setJointTargetVelocity(motorHandles[3],-2)
    sim.setJointTargetVelocity(motorHandles[4],2)
    flag=0
    end
    
    if (result1==0 and result==0 and result2==0 and flag==1) then     --first straight then left turn--
    o=1
    sim.setJointTargetVelocity(motorHandles[1],2)
    sim.setJointTargetVelocity(motorHandles[2],-2)
    sim.setJointTargetVelocity(motorHandles[3],-2)
    sim.setJointTargetVelocity(motorHandles[4],2)
    sim.wait(2)                                      --straight movement prevails for 2 sec--
    sim.setJointTargetVelocity(motorHandles[1],-2)
    sim.setJointTargetVelocity(motorHandles[2],-2)
    sim.setJointTargetVelocity(motorHandles[3],-2)
    sim.setJointTargetVelocity(motorHandles[4],-2)
    sim.wait(13/7)                                   --left turn prevails for 13/7 sec, 13 sec is the time for 360deg rotation so bot rotates 360/7deg in the left to orient back in direction of goal--
    flag=0
    r=0
    end
    
    if (result1==0 and result==0 and result2==0 and flag==2) then     --first straight then right turn--
    o=1
    sim.setJointTargetVelocity(motorHandles[1],2)
    sim.setJointTargetVelocity(motorHandles[2],-2)
    sim.setJointTargetVelocity(motorHandles[3],-2)
    sim.setJointTargetVelocity(motorHandles[4],2)
    sim.wait(2)                                    --as same as above--
    sim.setJointTargetVelocity(motorHandles[1],2)
    sim.setJointTargetVelocity(motorHandles[2],2)
    sim.setJointTargetVelocity(motorHandles[3],2)
    sim.setJointTargetVelocity(motorHandles[4],2)
    sim.wait(13/8)                                 --same as in left turn--
    flag=0
    r=0
    end
    
    if (result1==0 and result==0 and result2==0 and flag==3) then    --restores angle after a 180 deg turn--
    o=1
    sim.setJointTargetVelocity(motorHandles[1],1)
    sim.setJointTargetVelocity(motorHandles[2],-1)
    sim.setJointTargetVelocity(motorHandles[3],-1)
    sim.setJointTargetVelocity(motorHandles[4],1)
    sim.wait(3)
    sim.setJointTargetVelocity(motorHandles[1],-2)
    sim.setJointTargetVelocity(motorHandles[2],-2)
    sim.setJointTargetVelocity(motorHandles[3],-2)
    sim.setJointTargetVelocity(motorHandles[4],-2)
    sim.wait(13/2)
    sim.setJointTargetVelocity(motorHandles[1],2)
    sim.setJointTargetVelocity(motorHandles[2],2)
    sim.setJointTargetVelocity(motorHandles[3],2)
    sim.setJointTargetVelocity(motorHandles[4],2)
    sim.wait(13/4)
    flag=0
    r=0
    end
    
    
     --- 010 ---
     if (result1==0 and result>0 and result2==0 and o==0) then
    sim.setJointTargetVelocity(motorHandles[1],-2)
    sim.setJointTargetVelocity(motorHandles[2],-2)
    sim.setJointTargetVelocity(motorHandles[3],-2)
    sim.setJointTargetVelocity(motorHandles[4],-2)
    sim.wait(13/8)                                  --45 deg turn in left--
    flag = 2    
    r=1
    
    end
    
     --- 101 --- 
     if (result1>0 and result==0 and result2>0) then
    sim.setJointTargetVelocity(motorHandles[1],1)
    sim.setJointTargetVelocity(motorHandles[2],-1)
    sim.setJointTargetVelocity(motorHandles[3],-1)
    sim.setJointTargetVelocity(motorHandles[4],1)
    flag=0                                         --straight--
    end
   
    --- 111 --- 
    if (result1==1 and result==1 and result2==1) then             
    sim.setJointTargetVelocity(motorHandles[1],2)
    sim.setJointTargetVelocity(motorHandles[2],2)
    sim.setJointTargetVelocity(motorHandles[3],2)
    sim.setJointTargetVelocity(motorHandles[4],2)               
    sim.wait(13/2)                                          --rotation about its own axis for 13/2 sec, 180deg--
    flag=3
    end
    
     --- 100 ---   
    if(result1>0 and result==0 and result2==0 and r==0 and o==0) then
    sim.setJointTargetVelocity(motorHandles[1],-2)
    sim.setJointTargetVelocity(motorHandles[2],-2)
    sim.setJointTargetVelocity(motorHandles[3],-2)
    sim.setJointTargetVelocity(motorHandles[4],-2)
    sim.wait(13/8)                               --45 deg turn in left--
    flag = 2    
    end
    
    if(result1>0 and result==0 and result2==0 and r==1 and o==0) then
    sim.setJointTargetVelocity(motorHandles[1],1)
    sim.setJointTargetVelocity(motorHandles[2],-1)
    sim.setJointTargetVelocity(motorHandles[3],-1)
    sim.setJointTargetVelocity(motorHandles[4],1) -- if already rotated towards left then don't rotate again go straight
    flag = 2    
    end     
    
    --- 110 ---  
    if(result1>0 and result>0 and result2==0 and o==0) then
    sim.setJointTargetVelocity(motorHandles[1],-2)
    sim.setJointTargetVelocity(motorHandles[2],-2)
    sim.setJointTargetVelocity(motorHandles[3],-2)
    sim.setJointTargetVelocity(motorHandles[4],-2)
    sim.wait(13/8)                               --45 deg turn in left--
    flag = 2    
    r=1
    end
      --- 001 ---  
    if (result1==0 and result==0 and result2>0 and r==0 and o==0) then
    sim.setJointTargetVelocity(motorHandles[1],2)
    sim.setJointTargetVelocity(motorHandles[2],2)
    sim.setJointTargetVelocity(motorHandles[3],2)
    sim.setJointTargetVelocity(motorHandles[4],2)
    sim.wait(13/8)                                --45 deg turn in right--
    flag = 1
    end
    
    if(result1>0 and result==0 and result2==0 and r==2 and o==0) then
    sim.setJointTargetVelocity(motorHandles[1],1)
    sim.setJointTargetVelocity(motorHandles[2],-1)
    sim.setJointTargetVelocity(motorHandles[3],-1)
    sim.setJointTargetVelocity(motorHandles[4],1)
    flag = 1                                    -- if already rotated towards right then don't rotate again go straight
    end     
    
    --- 011 ---
    if (result1==0 and result>0 and result2>0 and o==0) then
    sim.setJointTargetVelocity(motorHandles[1],2)
    sim.setJointTargetVelocity(motorHandles[2],2)
    sim.setJointTargetVelocity(motorHandles[3],2)
    sim.setJointTargetVelocity(motorHandles[4],2)
    sim.wait(13/8)                                  --45 deg turn in right
    flag = 1
    r=2
    end
    
    
end
end

function rotateL()                               -- function which rotates bot towards goal if it is on left side of the Bot
    sim.setJointTargetVelocity(motorHandles[1],-2)
    sim.setJointTargetVelocity(motorHandles[2],-2)
    sim.setJointTargetVelocity(motorHandles[3],-2)
    sim.setJointTargetVelocity(motorHandles[4],-2)
    sim.wait(timetorotate)    
    sim.setJointTargetVelocity(motorHandles[1],0)
    sim.setJointTargetVelocity(motorHandles[2],0)
    sim.setJointTargetVelocity(motorHandles[3],0)
    sim.setJointTargetVelocity(motorHandles[4],0)
    s=0
end
function rotateR()                            ---function which rotates bot towards goal if it is on right side of the Bot
    sim.setJointTargetVelocity(motorHandles[1],2)
    sim.setJointTargetVelocity(motorHandles[2],2)
    sim.setJointTargetVelocity(motorHandles[3],2)
    sim.setJointTargetVelocity(motorHandles[4],2)
    sim.wait(timetorotate)    
    sim.setJointTargetVelocity(motorHandles[1],0)
    sim.setJointTargetVelocity(motorHandles[2],0)
    sim.setJointTargetVelocity(motorHandles[3],0)
    sim.setJointTargetVelocity(motorHandles[4],0)
    t=0
end
function changeDirection()    --- function checks in which side the goal is and rotates according to that
   if (f>0 and s==1) then
    timetorotate = (13*f*180)/(360*math.pi)
    rotateL()
   end    
   if (f<0 and t==1) then
    timetorotate = (13*f*180)/(-360*math.pi)
    rotateR()
   end    
end
