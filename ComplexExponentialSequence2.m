% complex exponential with w=0.3 radians
% script file
n=-5:5;
y=exp((1+(j*0.3))*n);
subplot(2,1,1);
stem(n,abs(y));
subplot(2,1,2);
stem(n,angle(y));
% phase is in radians and within + or - pi
