x= [1 -4 2 6 -3 7 4 1];
y=[2i,0,1i,1];
N = 8;
N1=4;
x_folded = zeros(1, N);
y_folded = zeros(1, N1);

for n = 1:N
    x_folded(n) = x(mod(mod(-n,N)+1,N)+1); 
end

for n=1:N1
y_folded(n) = y(mod(mod(-n,N1)+1,N1)+1); 
end

x_e=(x+x_folded)/2;
x_o=(x-x_folded(n))/2;

x_ej=(y+ (y_folded))/2;
x_oj=(y- (y_folded))/2;

disp(x_e);
disp(x_o);
disp(x_ej);
disp(x_oj);


    