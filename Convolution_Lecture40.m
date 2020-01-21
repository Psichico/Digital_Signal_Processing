% Udemy course by Israel Gbati.
% Practical DSP with Matlab

% Video lecture #40 : Performing convolution

clc;
close all;

ts = 1/100;
T = 3;
t = 0:ts:T;

f1 = 20;
signal_20hz = sin(2*pi*f1*t);
figure;
plot(signal_20hz);
csvwrite('signal_20hz.txt',signal_20hz);

f2 = 1;
signal_1hz = sin(2*pi*f2*t);
figure;
plot(signal_1hz);

signal_sum = signal_20hz + signal_1hz;
figure;
plot(signal_sum);
csvwrite('signal_sum.txt',signal_sum);

%type fdatool in command window to design a filter
figure;
plot(impulse_response_lecture40);

%********************************************

%Lecture #41
output_signal = conv(signal_sum, impulse_response_lecture40);

figure;
subplot(3,1,1); %subplot(rows , column , position of rows )
plot(signal_sum);
title('Noisy input signal');
subplot(3,1,2);
plot(impulse_response_lecture40);
title('Impulse Response');
subplot(3,1,3);
plot(output_signal);
title('Output from convolution');

suptitle('Convolution Lecture40');
