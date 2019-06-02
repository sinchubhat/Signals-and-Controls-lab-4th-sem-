function[y,n]=rofnminus1()
% a and b are the lower and upper time limit
% c is the instant at which ramp exists
% a,b,c must be integers for discrete signals
n=-5:7;  %n=a:b;
y=((n-1)>=0).*(n-1); %y=((n-c)>=0).*(n-c);
stem(n,y)