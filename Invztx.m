clc;
x=[1,zeros(1,10)]; % impulse input,length of the impulse must be equal to the number of terms in the inverse ZT

num=[10 5 0]; % coefficients of numerator
den=[1 -1.2 .2]; % coefficients of denominator
y=filter(num,den,x) % impulse response of the system
