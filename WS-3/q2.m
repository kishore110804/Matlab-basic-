t = 0: 0.0001:1;
x_t = sin(2*pi*5*t);
subplot(3,1,1);
    plot(t,x_t, 'LineWidth', 2);
    title('sin(2*pi*5*t)');
    xlabel('Time (sec)');
    ylabel('Amplitude');
    grid on;


fs= 50;
t1= 0:1/fs:1;
x_1 = sin(2*pi*5*t1);
f_axis = (0:length(X)-1);
X = fft(x_1);
subplot(3,1,2)
   stem(f_axis,x_1,"filled");

subplot(3,2,5);
   stem(f_axis ,abs(X),"filled");


subplot(3,2,6);
   stem(f_axis ,angle(X),'filled');
   axis([0 60 -5 5])










    