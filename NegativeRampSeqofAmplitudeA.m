function[y,n]=NegativeRampSeqofAmplitudeA(a,b,c)
% a and b are the lower and upper time limit
% c is the instant at which ramp exists
% a,b,c must be integers for discrete signals
n=a:b;
A=2;
y=((n-c)>=0).*(n-c);
stem(n,-(A*y))
