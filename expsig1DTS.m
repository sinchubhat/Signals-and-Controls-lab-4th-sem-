function[y,t]=expsig1DTS()
t=0:0.1:10;
y=exp(2*t);
stem(t,y)
