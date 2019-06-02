clc;
clear all;
close all;
x=[1 2 3 1];
nx=[0 1 2 3];
h=[1 2 1 -1];
nh=[0 1 2 3];
% Index of the convolved signal
n=min(nx)+min(nh):max(nx)+max(nh);
y=conv(x,h);
disp('The convolved signal is:');
y
disp('The index of convolved sequence is:');
n
subplot(311);
stem(nx,x);
subplot(312);
stem(nh,h);
subplot(313);
stem(n,y);
