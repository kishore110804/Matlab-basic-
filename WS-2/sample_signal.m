
function sample_signal(Ts)
   
    t_continuous = 0:0.001:0.4;  
    x_continuous = generate_signal(t_continuous);
    
    % Sampling

    t_samples = 0:Ts:0.4;
    x_samples = generate_signal(t_samples);
    
    % Plotting
    figure;
    subplot(2,1,1);
    plot(t_continuous, x_continuous, 'LineWidth', 2);
    title('Continuous Signal');
    xlabel('Time (sec)');
    ylabel('Amplitude');
    grid on;
    
    subplot(2,1,2);
    stem(t_samples, x_samples,  'filled');
    title(['Sampled Signal at Ts = ', num2str(Ts), ' sec']);
    xlabel('Time (sec)');
    ylabel('x[n]');
     
    grid on;

end
