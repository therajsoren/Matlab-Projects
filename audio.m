% Experiment: To remove high-frequency noise using FIR LPF (for audio signal)

[x, Fs] = audioread('car-audio.mp3');

t = (0:length(x)-1)/Fs;
figure;
subplot(4,1,1);
plot(t(1:Fs), x(1:Fs));
title('Original Audio Signal');

noise = 0.1 * randn(size(x));
y = x + noise;

subplot(4,1,2);
plot(t(1:Fs), y(1:Fs));
title('Noisy Audio Signal');

Fc = 2000;
N = 51;
Fcn = 2*Fc/Fs;

h = fir1(N-1, Fcn, 'low');

r = filter(h, 1, y);

r = r / max(abs(r));

subplot(4,1,3);
plot(t(1:Fs), r(1:Fs));
title('Filtered Audio Signal');

audiowrite('car-audio.wav', r, Fs);
