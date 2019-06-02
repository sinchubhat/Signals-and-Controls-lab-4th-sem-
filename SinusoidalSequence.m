% sinusoidal signal of f=0.1 cycle per sample (or N=10)
n=-10:10;
y=sin(2*0.1*pi*n);
stem(n,y);
