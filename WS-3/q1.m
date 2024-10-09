x = ones(1, 8); 

N_values = [8, 16, 64];
n = 0:1:7;
subplot(4,1,1)
stem(n,x,"filled",'lineWidth',1);


for i = 1:length(N_values)
    N = N_values(i);
    X = fft(x, N); 
    
    subplot(length(N_values)+1, 2, 2*(i-1)+3);
    stem(0:N-1, abs(X),"filled",'LineWidth', 1);
    title(['Magnitude Response (N = ', num2str(N), ')']);
    xlabel('Frequency (k)');
    ylabel('|X(k)|');
    
   
    subplot(length(N_values)+1, 2, 2+(2*i));
    stem(0:N-1, angle(X),"filled" ,'LineWidth', 1);
    title(['Phase Spectrum (N = ', num2str(N), ')']);
    xlabel('Frequency (k)');
    ylabel('Phase of X(k)');
end

