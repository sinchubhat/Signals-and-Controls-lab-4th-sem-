clc;
clear all;
close all;
n1=25;
d1=[1 5 25];
[n2,d2]=feedback(n1,d1,1,1);
sys=tf(n2,d2)
t=0:0.001:5;
u1=t; % ramp input
plot(t,u1)
hold on;
lsimplot(sys,u1,t); 
grid on;
title(' Ramp Response ')
figure;
u2=t.*t; % parabolic input
plot(t,u2)
hold on;
lsimplot(sys,u2,t);
grid on;
title(' Parabolic Response ')
