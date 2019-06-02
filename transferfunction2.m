clc;
clear all;
close all;
n1=1;
d1=[1 1];
display('TF1 is: ') % Display enclosed text
printsys(n1,d1); % display transfer function from polynomials
n2=[1 2];
d2=[0 1];
display('TF2 is: ')
printsys(n2,d2);
n3=[1 0];
d3=[1 0 2];
display('TF3 is: ')
printsys(n3,d3);
n4=[1 0];
d4=[0 1];
display('TF4 is: ')
printsys(n4,d4);
[n5,d5]=parallel(n1,d1,n2,d2);
printsys(n5,d5);
[n6,d6]=feedback(n3,d3,n4,d4);
printsys(n6,d6);
[n7,d7]=series(n5,d5,n6,d6);
display('Overall transfer function is: ')
printsys(n7,d7);
%pole zero map
pzmap(n7,d7);
sgrid;
