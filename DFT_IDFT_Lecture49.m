% Udemy course by Israel Gbati.
% Practical DSP with Matlab

% Video lecture #49 : Computing inverse DFT

clc;
close all;

input_signal = load('signal_sum.txt');
dft_output = fft(input_signal);

magnitude = abs(dft_output);

idft_output = ifft(dft_output);

figure;
subplot(3,1,1);
plot(input_signal,'r');
title('input signal');
subplot(3,1,2);
plot(magnitude,'g');
title('dft_output magnitude');
subplot(3,1,3);
plot(idft_output,'b');
title('signal from idft');
