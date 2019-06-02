clc;
x=[1,zeros(1,10)]; % impulse input,length of the impulse must be equal to the number of terms in the inverse ZT

num=[0 5 10];
den=[.2 -1.2 1];
y=filter(num,den,x)
