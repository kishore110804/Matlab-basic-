x=[1 2 3 -2 ];
N=length(x);
z=fft(x);
X=zeros(1,N);
for k=1:N
    X(k)= z(k).*exp(-1j*(pi/2)*(3)*(k-1));
end
disp(X);
y=circshift(x,3);
Z=fft(y);
disp(Z);
disp(X);
