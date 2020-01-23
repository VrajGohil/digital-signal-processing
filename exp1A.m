%Write a MATLAB program to plot the discrete sine wave with given amplitude, 
%frequency, phase, sampling frequency and length of the sequence. Also observe first alias.

%amplitude * sin(omega*t+phase)
clear all;
close all;

amp = input('Enter the amplitude :');
freq = input('Enter the frequency :');
sampFreq = input('Enter the sampling frequence :');
phase = input('Enter the phase :');
seqLen = input('Enter sequence lenght :');
samples = 0:seqLen-1;
 
figure(1);

subplot(2,1,1);
stem(samples,amp*sin((2*pi*freq/sampFreq*samples)+phase));
title('Sine Wave');
xlabel('Samples');
ylabel('Amplitude');

subplot(2,1,2);
stem(samples,amp*sin((2*pi*((freq/sampFreq)+1)*samples)+phase));
title('Alias');
xlabel('Samples');
ylabel('Amplitude');
