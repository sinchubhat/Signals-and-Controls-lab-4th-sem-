function[y,t]=damp1
b=input('Enter starting time instant: ');
c=input('Enter ending time instant: ');
t=b:0.01:c;
f=input('Enter the damped frequency of oscillations: ')
y=sin(2*pi*f*t);
a=input('Enter a positive exponent for overdamped signal.\n Enter a negative exponent for underdamped signal. ')
m=(expsig(a,b,c)).*y;
plot(t,m)