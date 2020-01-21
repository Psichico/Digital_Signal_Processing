% Udemy course by Israel Gbati.
% Practical DSP with Matlab

% Video lecture #43 : Computing Running sum of signal

clc;
close all;

input_signal = load('signal_sum.txt');

figure;
plot(input_signal);

output_signal = cumsum(input_signal);

figure;
plot(output_signal);

figure;
subplot(2,1,1);
plot(input_signal,'r-*');

subplot(2,1,2);
plot(output_signal,'g-*');

