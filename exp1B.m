%Write a MATLAB program for generation of DT unit impulse, step, and ramp sequence for a 
%given initial time, final time and start of sequence. 

startN = input('Enter the starting value of range :');
endN = input('Enter the ending value of range : ');
delay = input('Enter the value to be delayed : ');
n = startN : endN;

%Ploting Impulse Signal

im = (n==delay);
step = (n>=delay);
ramp = (n-delay).*(n>=delay);

%Basic alternative
%min = abs(startN) + delay;
%max = endN - delay;
%im= [zeros(1,min) 1 zeros(1,max)];
%step = [zeros(1,min) ones(1,max+1)];
%ramp = [zeros(1,min) 0:max];

figure(1);
subplot(3,1,1);
stem(n,im);
xlabel('n');
ylabel('X(n)');
title("impulse signal");
%Ploting Step Signal

subplot(3,1,2);
stem(n,step);
xlabel('n');
ylabel('X(n)');
title("Step signal");
%Ploting Ramp Signal

subplot(3,1,3);
stem(n,ramp);
xlabel('n');
ylabel('X(n)');
title("Ramp signal");