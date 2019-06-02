clc;
clear;
close all;
x=input(' Enter the sequence x =') % x must be vector
n= input(' The index of the sequence n =') % n indicates the starting and ending position of a sequence x
a=input(' The scaling factor a =') % a is a scalar
y=a.*x;
subplot(2,1,1); % or subplot(211);
stem(n,x);
subplot(2,1,2); % or subplot(212);
stem(n,y);
