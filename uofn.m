function[y,n]=uofn()
% a and b are the lower and upper time limit
% c is the instant at which step exists
% a,b,c must be integers for discrete signals
n=-5:5;  %n=a:b;
y=(n-0)>=0; %y=(n-c)>=0;
stem(n,y)


