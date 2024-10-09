x=[5 4 3 2];
h=[4 3 2 1];
g=x+1i*h;
G=fft(g);
N = length(G);
for n=1:N
    Gfold(n)=G(mod(mod(-n,N)+1,N)+1);
end
X=(G+conj(Gfold))*0.5;
H=(G-conj(Gfold))*0.5*-1i;
disp("22032");
disp(X);
disp("verification")
X_1=fft(x);
disp(X_1);
disp(H);
disp("verification");
H_1=fft(h);
disp(H_1);
