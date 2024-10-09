fm = 0.02; 
t = -100:0.0001:100;
fs1 = 0.02; 
fs2 = 0.04; 
fs3 = 0.5; 
ts1 = 1/fs2;
ts2 = 1/fs3;
ts3 = 1/fs2;
x_t = cos(2*pi*fm*t);

n1 = -2:1:2;
n2 = -4:1:4; % 1/0.04 = 25
n3 = -50:1:50; % 1/0.5 = 2

x_n1 = cos(2*pi*fm*n1/fs1); 
x_n2 = cos(2*pi*fm*n2/fs2); 
x_n3 = cos(2*pi*fm*n3/fs3); 


figure;
subplot(4,1,1);
plot(t, x_t,'LineWidth', 2);
title('Continuous Signal x(t)');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(4,1,2);
stem(n1, x_n1,'filled','LineWidth', 2);
legend('less samples')
title('Sampled Signal at fs1=0.02 Hz');
xlabel('Samples (n)');
ylabel('Amplitude');
axis([-2 2 0 1])

subplot(4,1,3);
stem(n2, x_n2','filled','LineWidth', 2);
legend('modrate number of smaples')
title('Sampled Signal at fs2=0.04 Hz');
xlabel('Samples (n)');
ylabel('Amplitude');
axis([-4 4 -1 1])

subplot(4,1,4);
stem(n3, x_n3,'filled','LineWidth', 2);
legend('More smaples')
title('Sampled Signal at fs3=0.5 Hz');
xlabel('Samples (n)');
ylabel('Amplitude');
axis([-50 50 -1 1])

