kp=2;
wp=[0.2 0.4];
ks=20;
ws=[0.1 0.5];
[N,wc]=cheb1ord(wp,ws,kp,ks);
[b,a]=cheby1(N,0.5,wc);
freqz(b,a);
title('Chebyshev Bandpass');
