clc;
clear;
close all;
x=input('Enter the sequence x =') % x must be vector
n=input(' The index of the sequence n =')
k=input(' The shifting factor k =') % k is a scalar
n1=n+k
% k is positive -- delayed version
% k is negative -- advanced version
subplot(2,1,1);
stem(n,x);
subplot(2,1,2);
stem(n1,x);
