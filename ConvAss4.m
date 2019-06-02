clc;
close all;
clear all;
t=-4:0.01:4;

x=(t>=0 & t<=2); % pulse of duration 2 seconds
x1=4*x;

h=(t>=-2 & t<=2); % pulse of duration 4 seconds
h1=2*h;

y=convn(x1,h1);
y=y/1000;
t1=2*min(t):0.01:2*max(t);
subplot(311);
plot(t,h1);
subplot(312);
plot(t,x1);
subplot(313);
plot(t1,y);