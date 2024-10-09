fp=400;
fs=800;
fsamp=2000; 
ks=30;
kp=0.4;
wp=(2*fp)/fsamp;
ws=(2*fs)/fsamp; 
[N,wc]=buttord(wp,ws,kp,ks);
[b,a]=butter(N,wc,'low');
freqz(b,a,256);
title('Low Pass');
[b,a]=butter(N,wc,'high');
freqz(b,a,256);
title('High Pass');

[b,a]=butter(N,[wp ws],'bandpass');
freqz(b,a,256);
title('Band Pass');

[b,a]=butter(N,[wp ws],'stop');
freqz(b,a,256);
title('Band Stop');
