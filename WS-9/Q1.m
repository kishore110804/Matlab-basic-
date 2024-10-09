No=4;
t=0:0.00001:1/800;
xt=2*sin(100*pi*t)+3*cos(800*pi*t)+sin(1600*pi*t);
fs=2000;
N1=2*pi/(100*pi/fs);
N2=2*pi/(800*pi/fs);
N3=4*pi/(1600*pi/fs);
N=lcm(lcm(N1,N2),N3);
n=0:N-1;
xn=2*sin(100*pi*n/fs)+3*cos(800*pi*n/fs)+sin(1600*pi*n/fs);
subplot(2,2,1)
stem(n,xn);title('x(n)')
xlabel('n');ylabel('Amplitude');grid
k=0:N-1;
Xn=fft(xn);
subplot(2,2,3)
stem(k*fs/N,abs(Xn));title('X(k)')
xlabel('fa (Hz)');ylabel('Magnitude');grid
w1=2*250/fs;
w2=2*600/fs;
wb=[w1 w2];
[b,a]=cheby1(No,0.2,wb);
y=filter(b,a,xn);
subplot(2,2,2)
stem(n,y);title('y(n)')
xlabel('n');ylabel('Amplitude');grid
Y=fft(y);
subplot(2,2,4)
stem(k*fs/N,abs(Y));title('Y(k)')
xlabel('fa (Hz)');ylabel('Magnitude');grid
figure
freqz(b,a);title('Chebyshev Bandpass')