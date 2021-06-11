# ControlSystems1_TP
Designing the right PID controller is extremely essential for any control system and hence we need to fine tune the controller so that we get the right amount of gains and hence the system reaches the steady state very efficiently and quickly provided the stabilty is maintained.
In this project i have used the state space equation of a simple mobile robot and used it as a plant model for the PID controller on simulink. I have also used a erro feedback loop to improve the overall accuracy of the controller. For stabilty analysis of the contoller i have also plotted the bode plot, impulse response, and root locus plots of the same. For tuning the PID contoller i used the in-built tuner on simulink in the properties window of the PID controller. 

## PID Controller 
It is an intrument used in control applications to regulate either temperature, speed, airflow etc. It is also called proportional integral derivative and uses a control loop feedback mechanism to control the process variables and is by far the most used low level controller. the equation governing the PID controller design is 

<img width="715" alt="Screenshot 2021-06-11 at 09 31 21" src="https://user-images.githubusercontent.com/67947994/121629392-af4f9480-ca98-11eb-995f-042a2aa15b14.png">

where P contributes to stability, meaduim rate responsiveness, I contributes to tracking and disturbance rejection, slow rate responsiveness but may cause OSCILLATIONS! and D contributes to fast rate responsiveness and is sensitive to noise. 

## State Space Model 
The following image shiws the state space model,

<img width="942" alt="Screenshot 2021-06-11 at 09 48 11" src="https://user-images.githubusercontent.com/67947994/121630224-5f71cd00-ca9a-11eb-810f-f39b26e70e5c.png">

In this example i have used the matrices as follows 
A = [0 1;0 0] 
B = [0 ; 1]
C = [1 0]

The initial gains of the controller i took were 
Kp=1, Ki=10, Kd=0.1

## Plots 


