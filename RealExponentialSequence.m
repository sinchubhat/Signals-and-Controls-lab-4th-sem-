function[y,n]=RealExponentialSequence(a,b,c)
% RealExponentialSequence ( a to the power of n)
% b and c are the lower and upper time limit
% a is a constant
n=b:c;
y=a.^n;
stem(n,y)
