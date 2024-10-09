t1 = -3:0.001:4;
x1 = WS1funcfile1(t1);
figure
plot(t1, x1 ,'LineWidth', 2)
xlabel("Time ----->")
ylabel("Amplitude ----->")
title("Signal 1")
grid on

t2 = -1: 0.001: 5;
x2 = WS1funcfile2(t2);
x3 = WS1funcfile2((t2./2)+0.5);
x4 = (x2+fliplr(x2))/2;

figure
subplot(2,2,1)
plot(t2,x2)
title("Signal 2")
legend("A) x(t)")
xlabel("Time ----->")
ylabel("Amplitude ----->")
grid on

subplot(2,2,2)
plot(t2,x3)
legend("B) x(t/2 + 0.5)")
xlabel("Time ----->")
ylabel("Amplitude ----->")
grid on

subplot(2,2,3)
plot(t2,x4)
legend("C) Even Component")
xlabel("Time ----->")
ylabel("Amplitude ----->")
grid on

t3 = -10:0.001:10;
x5 = exp(-t3);
h = WS1funcfile3(t3);
y = conv(x5, h);

figure
plot(-20:0.001:20, y)
title("Signal 3")
xlabel("Time ----->")
ylabel("Amplitude ----->")
grid on