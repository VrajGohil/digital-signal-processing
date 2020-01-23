% % For Accumulator
% a_z_a = [1 -1]; % 1 - z^-1
% b_z_a = 1; % 1 
% %h_z_a = b_z_a / a_z_a;
% 
% % For Filter
% a_z_b = [1 1/2 -1/3]; % 1 + 1/2z^-1 - 1/3z^-2
% b_z_b = 1;
% %h_z_b = b_z_b / a_z_b;

A = input('Enter the denominator coefficients :');
B = input('Enter the numerator coefficients :');
[z,p,k] = tf2zpk(B,A);
disp('Zeros are at :' + string(z));
disp('Plots are at :' + string(p));
figure(1);
title('Zeros & Poles');
zplane(B,A);
stable = isstable(B,A);
disp('System is stable: ' + string(stable));
if(stable)
    figure(2);
    step = 256;
    samples = -pi:pi/256:pi;
    [H_I,N_I] = impz(B,A,step);
    subplot(2,1,1);
    stem(N_I,H_I);
    title('Impulse Response');
    [H_U,N_U] = stepz(B,A,step);
    subplot(2,1,2);
    stem(N_U,H_U);
    title('Step Response');
    [W,N_W] = freqz(B,A,samples);
    figure(3)
    subplot(2,1,1);
    plot(N_W,abs(W));
    title('Frequency Response');
    subplot(2,1,2);
    plot(N_W,angle(W));
    title('Phase Response');
end
    
    
