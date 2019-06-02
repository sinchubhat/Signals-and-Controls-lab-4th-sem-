function[y,n]=impulseseqofamplitudeA(a,b,c)
% a and b are the lower and upper time limit
% c is the instant at which impulse exists
% a,b,c must be integers for discrete signals
n=a:b;
y=(n-c)==0;
A=2;
stem(n,A*y)
