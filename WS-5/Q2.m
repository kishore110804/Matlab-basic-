g=[0 0 0 3 4 5 6 7 8 9 10 11 0 0 0 0];
h=[0 0 4 6 8 10 0 0];%ODD
x=[0 3 5 7 9 11 0 0];%EVEN
disp("22032");
[X,H]=w5q2f1(x,h);
disp("DFTof X");
disp(X);
disp("Verification of X");
X_1=fft(x);
disp(X_1);
disp("DFT of H");
disp(H);
disp("Verification of H");
H_1=fft(h);
disp(H_1);
N=length(x);
G=zeros(1,16);
W=exp(-1j*2*pi/16);
for k=1:1:N
    G(k)=X(k)+W^(k-1).*H(k);
    G(k+8)=X(k)-W^(k-1).*H(k);
end
disp("DFT of P");
disp(G);
disp("verification of P");
G_1=fft(g);
disp(G_1);
function[X,H] =w5q2f1(x,h)
g=x+1i*h;
G=fft(g);
N=length(G)
for n=1:N
    Gfold(n)=G(mod(mod(-n,N)+1,N)+1);
end
X=(G+conj(Gfold))*0.5;
H=(G-conj(Gfold))*0.5*-1i;
end
