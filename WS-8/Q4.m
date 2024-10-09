N = 21;
wc1 = 0.4*pi;
wc2 = 0.7*pi;
n = 0:1:N-1;
eps = 0.001;
alpha = (N-1)/2;
hd = (sin(wc1*(n-alpha+eps))-sin(wc2*(n-alpha+eps))+sin(pi*(n.*alpha+eps)))./(pi*(n.*alpha+eps));
w = linspace(0, pi, N);  % Adjusted to match the length of wr/N

% Iterate over each window type
window_types = {'Boxcar', 'Hamming', 'Blackman', 'Hanning', 'Bartlett'};
for i = 1:length(window_types)
    % Generate the window
    window_func = window_types{i};
    switch window_func
        case 'Boxcar'
            wr = boxcar(N);
        case 'Hamming'
            wr = hamming(N);
        case 'Blackman'
            wr = blackman(N);
        case 'Hanning'
            wr = hanning(N);
        case 'Bartlett'
            wr = bartlett(N);
    end
    
    % Magnitude response of the filter h(w/pi) with the current window
    h = hd.*wr';
    H = freqz(h, 1, w);
    
    % Plot both magnitude responses in separate figures
    figure;
    
    % Magnitude response of the window wr(w/pi)
    subplot(2,1,1)
    plot(w/pi, 20*log10(abs(wr/N)));
    title(['Magnitude Response of ', window_func, ' Window']);
    grid on
    xlabel('Normalized Frequency (w/pi)')
    ylabel('Magnitude Response (dB)')
    
    % Magnitude response of the filter h(w/pi) with the current window
    subplot(2,1,2)
    plot(w/pi, 20*log10(abs(H)));
    title(['Magnitude Response of Filter with ', window_func, ' Window']);
    grid on
    xlabel('Normalized Frequency (w/pi)')
    ylabel('Magnitude Response (dB)')
end
