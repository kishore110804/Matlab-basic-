x = [0, -5, -4, 0, 5,4];
N=length(x);
x_folded=zeros(1,N);
for n=1:N
      x_folded(n) = x(mod(mod(-n,N)+1,N)+1); 
end
xo=(x-(x_folded))/2;
x_real=real(xo);
X=fft(x_real,6);
disp(X);
