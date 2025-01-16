% Designing a FIR filter

% Filter order
N = 50; 

% Cut-off frequency (normalized)
fc = 0.2;

% Defining low pass FIR filter
% b = fir1(N, fc); % By default a low pass filter is created by fir1

% b = fir1(N, fc); % Creates a high pass filter

% Making a bandpass filter, for that,
% we need to normalize the cut-off frequencies

fc = [0.2, 0.4]; % Normalized lower and upper cut-off frequencies

b = fir1(N, fc, 'bandpass'); % Creates a band-pass filter

% FIR means Finite Impulse response filter

% Frequeny response
freqz(b, 1);

% fvtool(b, 1); % Useful when you want to interact
% with the visualization graphs
