clc;
syms k n w z
F1=ztrans(2^n) % n as default time variable and 'z' as default variable in z-domain
F2=ztrans(2^n,w) % n as default time variable and 'w' as default variable in z-domain
F3=ztrans(2^k,k,w) % k as default time variable and 'w' as default variable in z-domain
F4=iztrans(z/(z-1))
