%Find the circular convolution of the signals x[n] = [5 4 3 2 2 4 6 6 8] and h[n] = [4 3 2 1]
%using DFT computation. Determine the linear convolution of the above-mentioned
%sequences and compare it with circular convolved output.
x = [5, 4, 3, 2, 2, 4, 6, 6, 8];
h = [4, 3, 2, 1, 0, 0, 0, 0, 0];

X = fft(x);
H = fft(h);

Y = X .* H;
y_circular = ifft(Y);
y_linear = conv(x, h);

disp('Circular Convolution:');
disp(y_circular);

disp('Linear Convolution:');
disp(y_linear);
