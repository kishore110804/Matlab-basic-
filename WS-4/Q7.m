%Use Parseval%s theorem to find the energy of the signal x[n] = [1 5 3 7 -20 12 8 2]
x = [1, 5, 3, 7, -20, 12, 8, 2];
X = fft(x);
X_sq= abs(X).^2;
energy_TD = sum(abs(x).^2);
energy_FD = (1 / length(x)) * sum(X_sq);

disp(['Energy - time domain: ', num2str(energy_TD)]);
disp(['Energy - frequency domain: ', num2str(energy_FD)]);
