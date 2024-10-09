 %Find DFT X(k) of a sequence x[n] = [1 2 3 -7 6 4 5 9].. Use X(k) and suitable property of
%DFT to find DFT of x((-n)16).
x = [1, 2, 3, -7, 6, 4, 5, 9, 0, 0, 0, 0, 0 ,0 ,0 ,0 ];
X = fft(x);
disp('DFT of x[n]:');
disp(X);

X_reversed = X(1);X(end:-1:2);
x_reveresed = x(1);x(end:-1:2);

disp('DFT of x((-n)_16):');
disp(X_reversed);

disp('Dipslaying x(-n) in reverse')
disp(x_reveresed);
