# ControlSystems1_TP
Designing the right PID controller is extremely essential for any control system and hence we need to fine tune the controller so that we get the right amount of gains and hence the system reaches the steady state very efficiently and quickly provided the stabilty is maintained.
In this project i have used the state space equation of a simple mobile robot and used it as a plant model for the PID controller on simulink. I have also used a erro feedback loop to improve the overall accuracy of the controller. For stabilty analysis of the contoller i have also plotted the bode plot, impulse response, and root locus plots of the same. For tuning the PID contoller i used the in-built tuner on simulink in the properties window of the PID controller. To visualise the signals i have used scope on simulink. 

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

Before tuning the PID controller the scope gives me the output as follows, 

<img width="718" alt="Screenshot 2021-06-11 at 10 05 45" src="https://user-images.githubusercontent.com/67947994/121631425-b5477480-ca9c-11eb-9720-6eee2ce0724d.png">

As we can observe the oscillations are too much in this case as we have taken the Ki value to be 10. Now if we reduce the Ki value to 0.1, the oscillations reduces drastically and hence becomes more stable as below

<img width="712" alt="Screenshot 2021-06-11 at 10 09 02" src="https://user-images.githubusercontent.com/67947994/121631672-28e98180-ca9d-11eb-8aba-6566d5f4713b.png">

After tuning the controller using the in built tuner, we get the response as

<img width="978" alt="Screenshot 2021-06-11 at 10 12 57" src="https://user-images.githubusercontent.com/67947994/121631941-af05c800-ca9d-11eb-86a4-71aed667a06e.png">

after tuning we get the new values of the gains as Kp=0.1857, Ki=0.0086, Kd=0.9739. 

We can see that the system is reaching the steady state much faster and is more stable than the previous models. Although it doesn't quite reach the unit step response straight line but still nearly matches it. 

## Bode Plot

<img width="634" alt="Screenshot 2021-06-11 at 10 51 04" src="https://user-images.githubusercontent.com/67947994/121634892-0195b300-caa3-11eb-83ac-2a5813e86ce7.png">

## Impulse Response 

<img width="642" alt="Screenshot 2021-06-11 at 10 53 33" src="https://user-images.githubusercontent.com/67947994/121635155-63561d00-caa3-11eb-895d-e9fd8faea592.png">

## Root locus

<img width="634" alt="Screenshot 2021-06-11 at 10 56 37" src="https://user-images.githubusercontent.com/67947994/121635391-c942a480-caa3-11eb-96ba-c96bdaf4ff3d.png">




