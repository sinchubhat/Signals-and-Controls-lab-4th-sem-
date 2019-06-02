clc;
clear all;
2+3
b=2+3
d=5+4; % a semicolon at the end of a command suppresses the screen output
d
% to create an array of single row (row vector)
z=[1 2 3] % or z=[1,2,3]
%to create a column vector
a=[4;5;6]
%to create a vector with 6 elements linearly spaced between 0 and 10
m=linspace(0,10,6)
%to create a vector with elements linearly spaced between 0 and 1
t=0:0.01:1
%Basic Matrix operations
A=[1 2 3;9 8 7]
%transpose of a matrix is obtained by interchanging the rows and columns
A'
%size of a matrix is defined by a pair of numbers the first is number of its row and second the number of its column
% the command size returns the size of a matrix
size(A)
%selecting an element from a matrix is obtained through indexing
A(2,2)
%selecting a row and a column
C=A(1,1:3) %select the first row and columns 1 to 3
B=[-2 4;3 1;5 6]
D=B(:,2) % colon indicates all rows and the second column
E=B(1:2,2) % select 1 to 2 rows and second column
%appending a row and a column
C=[-2 5 7];
D=[A;C] %appending a row vector C as another row of matrix D
size(C)
size(B)
C=[-2;5;7];
size(C)
E=[B,C] %appending a column vector C as another column of matrix E
%inverse of a matrix 
inv(D)
%matrix multiplication
F=D*E
%addition and subtraction of matrices
D
E
D+E
D-E
%element wise multiplication: here the size of both the matrices must be
%same .this operation is required to obtain signals multiplication
D.*E
%to generate a matrix or vector with all elements zero/one
%used in generating step and impulse signals
c=ones(2,3)
d=zeros(1,3)
f=ones(2,1)
%general commands to remember
% who -- lists variables currently in the workspace
% whos -- lists variables currently in the workspace with their space
% clear -- clears the workspace,all variables are removed
% clc -- clears command window
% close -- closes all the figure window

% creating simple plots
%plot - creates a 2-D plot
x=-1:0.1;1;
y=0.5x+1;
plot(x,y) %gives continuous plot
stem(x,y) %gives discrete plot

% xlabel  -- annotates the x-axis
xlabel('time')
% ylabel  -- annotates the y-axis
ylabel('amplitude')
% title  -- puts title on the plot
title('simple plot')

% figure  -- creates a new figure window and thus avoids over plotting on
% the same figure window.This function can be used when there are more than
% one plot and calling this function between the plots
plot(x,y)
figure
stem(x,y)

% subplot  -- create axes in tiled positions
% H=subplot(m,n,p) or subplot(mnp) breaks the figure window into an m-by-n
% matrix of small axes,selects the p-th axes for the current plot,and
% returns the axes handle
subplot(2,1,1) %dividing the figure window as 2 rows and a column
plot(x,y)
subplot(2,1,2)
stem(x,y)




