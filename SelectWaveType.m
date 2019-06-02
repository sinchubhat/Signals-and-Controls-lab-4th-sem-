clc;
clear all;
close all;
t=0:0.001:0.3
choice=input(' 1.Square Wave\n 2.Rectangular Wave\n 3.Symmetric Triangular Wave\n 4.Negative Sawtooth Wave\n 5.Positive Sawtooth Wave\n Enter Choice !!')
if(choice==1)
    f1=input('Enter the frequency of square wave,f1=')
    sq_wave1=square(2*pi*f1*t); % square wave of 50% duty cycle
    figure;
    plot(t,sq_wave1);
elseif(choice==2)
     f2=input('Enter the frequency of Rectangular wave,f2=')
     d=input('Enter duty cycle with the range (0,100) (except 50)')
     sq_wave2=square(2*pi*f2*t,d); % square wave of d% duty cycle
     figure;
     plot(t,sq_wave2);
elseif(choice==3)
      f3=input('Enter the frequency of triangular wave,f3=')
      tri_wave1=sawtooth(2*pi*f3*t,0.5); % symmetric triangular wave
      figure;
      plot(t,tri_wave1);
elseif(choice==4)
      f4=input('Enter the frequency of Negative sawtooth wave,f4=')
saw_tooth1=sawtooth(2*pi*f4*t,0); % negative sawtooth wave
figure;
plot(t,saw_tooth1);
elseif(choice==5)
    f5=input('Enter the frequency of Positive sawtooth wave,f5=')
saw_tooth2=sawtooth(2*pi*f5*t,1); % positive sawtooth wave
figure;
plot(t,saw_tooth2);
else
    print(' Wrong Choice ... ')
end