function[y,n]=stepseqofAmplitudeA(a,b,c)
% a and b are the lower and upper time limit
% c is the instant at which step exists
% a,b,c must be integers for discrete signals
n=a:b;
A=3;
y=(n-c)>=0;
stem(n,A*y)

