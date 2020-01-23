%Write a MATLAB program for generation of an audio tone with given amplitude, frequency, phase,
%sampling frequency and length of the sequence. Store it in .wav file with given sampling frequency
%and BitsPerSample, read back and play the audio file.

%Ampplitude range between -1 to 1
amp = input('Enter the amplitude :');

freq = input('Enter the frequency :');

%Smapling freq minimum 8000
sampFreq = input('Enter the sampling frequence :');
phase = input('Enter the phase :');
seqLen = input('Enter sequence lenght :');

%Prefer 16 bit per sample
k = input('Enter the bit per sample: ');

samples = 0:seqLen-1;

%Generating Sine Wave Signal
signal = amp*sin((2*pi*freq/sampFreq*samples)+phase);

%Write audio to a file
audiowrite('test.wav',signal,sampFreq,'BitsPerSample',k);

%Open and play audio file
a = audioread('test.wav');
p = audioplayer(a,sampFreq);
play(p);