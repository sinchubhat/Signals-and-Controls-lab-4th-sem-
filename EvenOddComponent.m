clc;
clear;
close all;
x=input(' Enter the sequence x = ')
n=input(' The index of the sequence n = ')
n1=-fliplr(n);
x1=fliplr(x);

n2=min(min(n),min(n1)):max(max(n1),max(n));
y1=zeros(1,length(n2));
y2=y1;
y1(find((n2>=min(n))&(n2<=max(n))))=x;
y2(find((n2>=min(n1))&(n2<=max(n1))))=x1;
even=.5*(y1+y2)
odd=.5*(y1-y2)

subplot(311);
stem(n,x);
subplot(312);
stem(even);
subplot(313);
stem(odd);


