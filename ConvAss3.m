clc;
close all;
clear all;
t=-2:0.01:4;

x=(t>=0 & t<=1); % pulse of duration 1 second

h1=(t>=0 & t<=1);
h2=(t>1 & t<=2);
h=h1+(-1*h2);

y=convn(x,h);
t1=2*min(t):0.01:2*max(t);
subplot(311);
plot(t,h);
subplot(312);
plot(t,x);
subplot(313);
plot(t1,y);