% Defining the time vector
t = 0:0.01:1;

% Setting the frequency
f = 2; % Hz

x = sin(2*pi*f*t);

plot(t, x);

title_text = string(f) + "Hz wave";

title(title_text);
xlabel("Time (s)");
ylabel("Amplitude");
