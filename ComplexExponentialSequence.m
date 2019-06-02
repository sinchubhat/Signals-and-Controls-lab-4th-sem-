% complex exponential with w=0.3 radians
% script file
n=-4:4;
y=exp(j*0.3*n);
subplot(2,1,1);
stem(n,abs(y));
subplot(2,1,2);
stem(n,angle(y));
% phase is in radians and within + or - pi
