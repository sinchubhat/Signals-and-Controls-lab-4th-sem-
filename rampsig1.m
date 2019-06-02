function[y,t]=rampsig1()
t=-10:0.1:10;
y=(((t-0)>=0).*(t-0));
plot(t,y);

