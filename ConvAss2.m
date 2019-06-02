clc;
clear all;
close all;

% a is a constant , |a|<1
a=input(' Enter the value of a (constant) , |a|<1 ');
n=0:1:5;
y=exp(a*n);


u=(n-0)>=0;


h=y.*u;

% Index of the convolved signal
nout=min(n)+min(n):max(n)+max(n);

output=conv(u,h);

disp('The convolved signal is:');
output
disp('The index of convolved sequence is:');
nout
subplot(311);
stem(n,y);
subplot(312);
stem(n,u);
subplot(313);
stem(nout,output);

