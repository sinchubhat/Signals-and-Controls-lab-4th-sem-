% sinusoidal signal of f=0.1 cycle per sample (or N=10)
% phase delay of 36degrees
n=-10:10;
y=sin((2*0.1*pi*n)+(pi*0.2));
stem(n,y);

