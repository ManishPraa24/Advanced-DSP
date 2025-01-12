% Sampling Frequency
fs = 1000;

% Calculating Time Vector
t = 0:1/fs:1-1/fs;

% Initializing different frequencies
f1 = 50;
f2 = 120;

% Making a Composite Signal
x = sin(2*pi*f1*t) + 0.5*sin(2*pi*f2*t);

% Calculating FFT from the signal
Y = fft(x);

% Frequency Vector
f = ((0:length(Y)-1)*fs)/length(Y);

% plot(f, Y); % This plot gives the raw signal

plot(f, abs(Y)); % This plot gives only the spikes in the signal

% plot(f, x); % f vs x gives the sinewave composite 'x'

% plot(f, t); % Gives a straight line as f is inversely propotional to t
