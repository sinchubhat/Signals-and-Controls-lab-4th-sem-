clc;
clear all;
close all;
num=[1 1];
den=[1 2 0];
[n1,d1]=feedback(num,den,1,1);
sys=tf(n1,d1)
roots(den) % poles of the system
t=0:0.01:10; % response time vector
step(sys,t); % step response of the system with plot
grid on;
figure;
impulse(sys,t); % impulse response of the system with plot
grid on;
stepinfo(sys) % step response information
[u,t1]=gensig('square',6); % generate square wave
figure;
lsimplot(sys,u,t1) % plot the response of LTI system for the specified input % u
