t = 0:0.001:12;
fm = 1/6;
fm_critical = 0.332;
x_t = cos(2*pi*fm*t);
x_n = cos(2*pi*n/fm_critical);
n = 0:1:12;
X_t = fft(x_t);
X_n = fft(x_n);


figure;
plot(t, x_t,'LineWidth', 2);
title('Continuous Signal x(t)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

figure;
stem(n,x_n,'filled','LineWidth', 2);
title('Discrete x(t)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

figure;
stem(n,X_t,'filled','LineWidth', 2);
title('DFT OF x(t)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

figure;
stem(n,abs(X_t),'filled','LineWidth', 2);
title('Discrete x(t)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

figure;
stem(n,angle(X_n),'filled','LineWidth', 2);
title('Discrete x(t)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;







