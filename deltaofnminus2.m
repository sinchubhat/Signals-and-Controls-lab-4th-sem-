function[y,n]=deltaofnminus2()
% a and b are the lower and upper time limit
% c is the instant at which impulse exists
% a,b,c must be integers for discrete signals
n=-5:7; % n=a:b;
y=(n-2)==0; % y=(n-c)==0
stem(n,y)
% c=2 for delta(n-2)