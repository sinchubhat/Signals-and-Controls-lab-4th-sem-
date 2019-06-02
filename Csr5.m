% program using PID function
clc;
close all;
clear all;
% Transfer function without derivative control
nwd=25;
dwd=[1 2.5 0];
sys=tf(nwd,dwd);
[n1,d1]=feedback(nwd,dwd,1,1);
disp(' Transfer Function without derivative control is : ');
sys1=tf(n1,d1)
%% Step response without PD controller
step(sys1);
grid;
hold on;
%% Define as a PID object
Kp=1;
Ki=0;
Kd=0.18;
C1=pid(Kp,Ki,Kd)
% Add derivative term to increase stability
step(feedback(C1*sys,1)); % step response with PD controller
legend('without','with PD')
