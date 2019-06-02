clc;
close all;
clear all;
% Transfer function without derivative control
nwd=25;
dwd=[1 2.5 0];
sys=tf(nwd,dwd);
[n1,d1]=feedback(nwd,dwd,1,1);
disp('Transfer Function without derivative control is: ');
sys1=tf(n1,d1)
% STep response without PD controller
step(sys1);
grid;
hold on;
% Define as a PID object
Kp=1;
Ki=0;
Kd=0.18;
C1=pid(Kp,Ki,Kd)
% Add derivative term to increase stability
step(feedback(C1*sys,1)); % step response with PD controller
hold on;
% Define as a PID object
Kp=0.8;
Ki=0.6;
Kd=0.18;
C2=pid(Kp,Ki,Kd)
% Add derivative term to increase stability and integral term to reduce
% steady state error
% step response with PID controller
step(feedback(C2*sys,1));
legend('without','with PD','with PID')
% Design from command line
[C3,Info]=pidtune(sys,'pid')
% look at controller , C3, info
figure;
step(feedback(C3*sys,1));
grid;
