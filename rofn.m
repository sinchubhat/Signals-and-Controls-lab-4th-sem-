function[y,n]=rofn()
% a and b are the lower and upper time limit
% c is the instant at which ramp exists
% a,b,c must be integers for discrete signals
n=-5:5;  %n=a:b;
y=((n-0)>=0).*(n-0); %y=((n-c)>=0).*(n-c);
stem(n,y)
