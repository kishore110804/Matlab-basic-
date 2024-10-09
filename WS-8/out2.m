N=21;
wc=0.6*pi;
n=0:1:N-1;
eps=0.001;
alpha=(N-1)/2;
hd=sin(wc*(n-alpha+eps))./(pi*(n-alpha+eps));
wr=hamming(N);
h=hd.*wr';
w=0:0.01:pi;
H=freqz(h,1,w);
subplot(2,1,1);
plot(w/pi,20*log10(abs(H)));
grid on;
xlabel('w/pi')
ylabel('magnitude response of h(w/pi) in db')
title("Hamming window");
w1=freqz(wr/N,1,w);
subplot(2,1,2)
plot(w/pi,20*log10(abs(w1)));
grid on;
xlabel('w/pi');
ylabel('magnitude of wr(w/pi)');
