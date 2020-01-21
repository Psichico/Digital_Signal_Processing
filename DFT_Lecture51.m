% Udemy course by Israel Gbati.
% Practical DSP with Matlab

% Video lecture #51 : Computing DFT of signal 

clc;
close all;

input_signal = load('signal_sum.txt');

% fft = fast dft;

dft_output = fft(input_signal);

magnitude = abs(dft_output);
phase = unwrap(angle(dft_output));

figure;
subplot(3,1,1);
plot(input_signal);
title('input');
subplot(3,1,2);
plot(magnitude);
title('FFT magnitude');
xlabel('* 50hz/150hz to convert into hz'); %fs is 100hz hence fmax is 50hz, indicated by point 150
subplot(3,1,3);
plot(phase);
title('FFT phase');