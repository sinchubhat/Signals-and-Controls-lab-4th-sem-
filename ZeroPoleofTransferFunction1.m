clc;
num=[1 -1]; % coefficients of numerator
den=[1 0]; % coefficients of denominator
zplane(num,den); % plot in the z-plane
sys=filt(num,den,-1) % discrete system transform function in z^-1 polynomials
[R,P,K]=residue(num,den) 
omega=-2*pi:pi/100:2*pi;
y=freqz(num,den,omega); % Frequency response
figure;
subplot(211);
plot(omega,abs(y));
subplot(212);
plot(omega,angle(y));
