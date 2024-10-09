No=6;
t=0:0.00001:1/200;
xt=2+sin(80*pi*t)+sin(200*pi*t);
fs=800;
N1=2*pi/(80*pi/fs);
N2=round(2*pi/(200*pi/fs));
N=lcm(N1,N2);
n=0:N-1;
xn=2+sin(80*pi*n/fs)+sin(200*pi*n/fs);
figure
subplot(2,2,1)
stem(n,xn);title('x(n)')
xlabel('n');ylabel('Amplitude');grid
k=0:N-1;
Xn=fft(xn);
subplot(2,2,3)
stem(k*fs/N,abs(Xn));title('X(k)')
xlabel('fa (Hz)');ylabel('Magnitude');grid
w1=2*20/fs;
w2=2*70/fs;
wb=[w1 w2];
[b,a]=butter(No,wb,'stop');
y=filter(b,a,xn);
subplot(2,2,2)
stem(n,y);title('y(n)')
xlabel('n');ylabel('Amplitude');grid
Y=fft(y);
subplot(2,2,4)
stem(k*fs/N,abs(Y));title('Y(k)')
xlabel('fa (Hz)');ylabel('Magnitude');grid
figure
freqz(b,a);title('Butterworth Band Stop')