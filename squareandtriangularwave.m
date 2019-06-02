clc;
close all;
t=0:0.001:0.3
f1=input('Enter the frequency of square wave1,f1=')
sq_wave1=square(2*pi*f1*t); % square wave of 50% duty cycle
figure;
plot(t,sq_wave1);
f2=input('Enter the frequency of square wave2,f2=')
sq_wave2=square(2*pi*f2*t,75); % square wave of 75% duty cycle
figure;
plot(t,sq_wave2);
f3=input('Enter the frequency of triangular wave,f3=')
tri_wave1=sawtooth(2*pi*f3*t,0.5); % symmetric triangular wave
figure;
plot(t,tri_wave1);
f4=input('Enter the frequency of sawtooth wave1,f4=')
saw_tooth1=sawtooth(2*pi*f4*t,0); % negative sawtooth wave
figure;
plot(t,saw_tooth1);
f5=input('Enter the frequency of sawtooth wave2,f5=')
saw_tooth2=sawtooth(2*pi*f5*t,1); % positive sawtooth wave
figure;
plot(t,saw_tooth2);