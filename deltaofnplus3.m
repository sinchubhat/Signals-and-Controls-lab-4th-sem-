function[y,n]=deltaofnplus3()
% a and b are the lower and upper time limit
% c is the instant at which impulse exists
% a,b,c must be integers for discrete signals
n=-4:6; % n=a:b;
y=(n+3)==0; % y=(n-c)==0
stem(n,y)
% c=-3 for delta(n+3)