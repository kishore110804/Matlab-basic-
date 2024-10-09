x = [1 3 -2 0 5 7 2 -1];
m=3;
N=length(x);
z = zeros(1,N);
for n=0:N-1
    z(mod(n+m,N) + 1) = x(n + 1);
end
disp('Original sequence:');
disp(x);
disp('circular time shift:');
disp(z);
