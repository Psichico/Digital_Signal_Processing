% Udemy course by Israel Gbati.
% Practical DSP with Matlab

% Video lecture #43 : Computing First difference of signal

clc;
close all;

input_signal = load('signal_sum.txt');

output_signal = diff(input_signal);

figure;
subplot(2,1,1);
plot(input_signal,'r');
title('input signal');
subplot(2,1,2);
plot(output_signal,'g');
title('output signal');