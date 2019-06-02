% program without PID function
clc;
close all;
clear all;
% transfer function without derivative control
nwd=25;
dwd=[1 2.5 0];
[n1,d1]=feedback(nwd,dwd,1,1); % unity feedback
disp(' Transfer Function without derivative control is : ');
sys1=tf(n1,d1)
Td=0.18;
nd=[Td 1];
dd=[0 1];
% Transfer Function of derivative control
[ns,ds]=series(nd,dd,nwd,dwd);
[n2,d2]=feedback(ns,ds,1,1);
disp(' Transfer Function with derivative control is : ');
sys2=tf(n2,d2)
step(sys1);
grid;
hold on;
step(sys2);
legend('without','with PD')
