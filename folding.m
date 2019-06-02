clc;
clear;
close all;
x=input(' Enter the sequence x =') % x must be vector (magnitudes)
n=input('The index of the sequence n=') %length of x and n must be same
m=-fliplr(n);
y=fliplr(x);
subplot(2,1,1);
stem(n,x);
subplot(2,1,2);
stem(m,y);