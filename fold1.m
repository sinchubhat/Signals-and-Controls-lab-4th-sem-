clc;
clear;
close all;
x=[1 2 3 6 2 -3 1];
n=[-2 -1 0 1 2 3 4];
subplot(211);
stem(n,x);
y=fliplr(x);
m=-fliplr(n);
subplot(2,1,2);
stem(m,y);
% folding of signal 
