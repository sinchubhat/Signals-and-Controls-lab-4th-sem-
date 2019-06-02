clc;
clear;
close all;
x1=input(' Enter the sequence x1 = ') % x1 and x2 are vectors
n1=input(' The index of the sequence x1 is n1 = ')

x2=input(' Enter the sequence x2 = ') % x1 and x2 are vectors
n2=input(' The index of the sequence x2 is n2 = ')

n=min(min(n1),min(n2)):max(max(n1),max(n2));
y1=zeros(1,length(n));
y2=y1;
y1(find((n>=min(n1))&(n<=max(n1))))=x1;
y2(find((n>=min(n2))&(n<=max(n2))))=x2;
y=y1.*y2; % signal multiplication
 % subplot(number of rows,number of columns,figure number);
subplot(311);
 stem(n1,x1);
 subplot(312);
stem(n2,x2);
 
 subplot(313);
stem(n,y);
