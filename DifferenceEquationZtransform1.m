b=1;
a=[1 -1 .9];
n=0:50;
y=[4,2];
z=filtic(b,a,y);
delta=(n==0);
h=filter(b,a,delta,z);
figure (1)
subplot(211);
stem(n,delta);
title('Impulse Input');
subplot(212)
stem(n,h);
title('Impulse Response');
step=(n>=5);
s=filter(b,a,step,z);
figure(2)
subplot(211);
stem(n,step);
title('Step Input');
subplot(212)
stem(n,s);
title('Step response');
x=.25.^n;
y=filter(b,a,x,z);
figure(3)
subplot(211);
stem(n,x);
title('Expo input');
subplot(211);
stem(n,y);
title('Response');