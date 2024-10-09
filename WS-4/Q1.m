x = [1, 2, 3, -2, 6, 4,0,0];
N = 8;
x_c = zeros(1, N);
for n = 0:N-1
   x_c(mod(-n,8)+1) = x(mod(n,8)+1);
end

disp('Original sequence:');
disp(x);

disp('Circularly folded sequence:');
disp(x_c);
