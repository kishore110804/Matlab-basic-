x=[1 2 -1 2 3 -2 -3 -1 1 1 2 -1];
x1=[0 0 0 1 2 -1 2];
x2=[2 -1 2 3 -2 -3 -1];
x3=[-2 -3 -1 1 1 2 -1];
x4=[1 2 -1 0 0 0 0];
h=[1,2,3,-1];
y1=cconv(x1,h,7);
disp("y1");
disp(y1);
y2=cconv(x2,h,7);
disp("y2");
disp(y2);
y3=cconv(x3,h,7);
disp("y3");
disp(y3);
y4=cconv(x4,h,7);
disp("y4");
disp(y4);
y=[y1(4:7),y2(4:7),y3(4:7),y4(4:6)];
disp("y");
disp(y);
