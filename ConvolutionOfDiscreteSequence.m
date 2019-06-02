clc;
clear all;
close all;
x=input('Enter the first sequence x =');
nx=input('Enter the index of the first sequence nx=');
h=input('Enter the impulse response of the system,second sequence h=');
nh=input('Enter the index of the second sequence nh=');
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
