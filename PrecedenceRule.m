clc;
clear;
close all;

x=input(' Enter the sequence x = ')
n=input(' The index of the sequence n = ')

% time shifting
k=input(' The shifting factor k =') % k is a scalar
n1=n+k

% amplitude scaling
a=input(' The scaling factor a =') % a is a scalar
y=a.*x;

% folding
y1=-fliplr(n1);
m=fliplr(y);

subplot(2,2,1);
stem(n,x);
subplot(2,2,2);
stem(n1,x);
subplot(2,2,3); % or subplot(212);
stem(n1,y);
subplot(2,2,4);
stem(y1,m);