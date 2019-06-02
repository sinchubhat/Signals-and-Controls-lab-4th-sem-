clc;
close all;
clear all;
t=-2:0.01:4;
h=(t==2); % impulse at t=2
x=(t>=0 & t<=3); % pulse of duration 3 seconds
y=convn(x,h);
t1=2*min(t):0.01:2*max(t);
subplot(311);
plot(t,h);
subplot(312);
plot(t,x);
subplot(313);
plot(t1,y);