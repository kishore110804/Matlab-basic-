t = -100:0.0001:100;
fs1 = 0.04; 
fs2 = 0.08; 
fs3 = 0.5;  
x_t = cos(0.04*pi*t)+ sin(0.08*pi*t);
n1 = -4:1:4; 
n2 = -8:1:8; 
n3 = -50:1:50; 
x_n1 =  cos(0.04*pi*n1/fs1)+ sin(0.08*pi*n1/fs1); 
x_n2 =  cos(0.04*pi*n2/fs2)+ sin(0.08*pi*n2/fs2); 
x_n3 =  cos(0.04*pi*n3/fs3)+ sin(0.08*pi*n3/fs3);

figure;
subplot(4,1,1);
plot(t, x_t,'LineWidth', 2);
title('Continuous Signal x(t)');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(4,1,2);
stem(n1, x_n1,'filled','LineWidth', 2 );
legend('less samples')
title('Sampled Signal at fs1=0.04 Hz');
xlabel('Samples (n)');
ylabel('Amplitude');
axis([-2 2 0 1])

subplot(4,1,3);
stem(n2, x_n2','filled', 'LineWidth', 2);
legend('modrate number of smaples')
title('Sampled Signal at fs2=0.08 Hz');
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

