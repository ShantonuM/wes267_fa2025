%% Problem 1
%{
In a single figure with three subplots
subplot(3,1,1)
write code to generate a cosine containing 500 samples, with 10 cycles spanning
the 500 sample interval. plot the 500 samples of the cosine.
Include a grid, axis, title, xlabel and ylabel

subplot(3,1,2)
write code to generate a sine containing 500 samples, with 10 cycles spanning
the 500 sample interval. Plot, in red, the 500 samples of the sine.
Include a grid, axis, title, xlabel and ylabel

subplot(3,1,3)
write code to generate both a cosine and a sine containing 500 samples, with 10
cycles spanning the 500 sample interval. Plot the 500 samples of the cosine and
sin, cosine in blue and sine in red.
Include a grid, axis, title, xlabel and ylabel
%}

% Number of samples
n_max = 500;

% Number of cycles
cycles = 10;

% Frequency in radians per sample
w0 = 2 * pi / (n_max / cycles);

n = [0 : n_max - 1];

x = cos(w0 * n);
y = sin(w0 * n);

figure;
sgtitle("Problem 1");

subplot(3, 1, 1);
stem(n, x, "Marker", ".");
xlabel("Sample");
ylabel("Amplitude");
title("cos(2πn/50), n = 0:499");
grid on;
axis on;

subplot(3, 1, 2);
stem(n, y, "Marker", ".", "Color", "red");
xlabel("Sample");
ylabel("Amplitude");
title("sin(2πn/50), n = 0:499");
grid on;
axis on;

subplot(3, 1, 3);
stem(n, x, "Marker", ".");
hold on;
stem(n, y, "Marker", ".", "Color", "red");
xlabel("Sample");
ylabel("Amplitude");
title("cos(2πn/50) (blue), sin(2πn/50) (red), n = 0:499");
grid on;
axis on;
hold off;

%% Problem 2
%{
In a single figure with three subplots
subplot(3,1,1)
write code to generate a cosine containing 500 samples, with 10 cycles spanning
the 500 sample interval. The cosine amplitude is a sinusoid with amplitude
varying from 0.5 to 1.5 and with a period of 200 samples.
Plot the 500 samples of the [1+A*sin( )].*cos( ). On the same subplot also plot
the sine amplitude in dotted black.
Include a grid, axis, title, xlabel and ylabel

subplot(3,1,2)
write code to generate a sine containing 500 samples, with 10 cycles spanning
the 500 sample interval. The sine amplitude is a sinusoid with amplitude varying
from 0.5 to 1.5 and with a period of 200 samples.
Plot the 500 samples of the [1+A*sin( )].*sine( ). On the same subplot also plot
the sine amplitude in dotted black.
Include a grid, axis, title, xlabel and ylabel

subplot(3,1,3)
write code to generate both a cosine and a sine containing 500 samples, with 10
cycles spanning the 500 sample interval. The cosine and sine amplitude is a
sinusoid with amplitude varying from 0.5 to 1.5 and with a period of 200
samples.
Plot the 500 samples of the [1+A*sin( )].*cos( ) and the [1+A*sin( )].*sine( ).
On the same subplot also plot the sine amplitude in dotted black.
Include a grid, axis, title, xlabel and ylabel
%}

% Number of samples
n_max = 500;

% Number of cycles
cycles = 10;

% Frequency in radians per sample
w0 = 2 * pi / (n_max / cycles);

% Amplitude frequency = 200 samples
nA_max = 200;
wA = 2 * pi / nA_max;

n = [0 : n_max - 1];

A = 1 + 0.5 * sin(wA * n);
x = A .* cos(w0 * n);
y = A .* sin(w0 * n);

figure;
sgtitle("Problem 2");

subplot(3, 1, 1);
stem(n, x, "Marker", ".");
hold on;
xlabel("Sample");
ylabel("Amplitude");
title("[1 + 0.5sin(2πm/200))cos(2πn/50], n = 0:499, m = 0:199");
plot(n, A, ":black");
hold off;
grid on;
axis on;

subplot(3, 1, 2);
stem(n, y, "Marker", ".", "Color", "red");
hold on;
xlabel("Sample");
ylabel("Amplitude");
title("[1 + 0.5sin(2πm/200)]sin(2πn/50), n = 0:499, m = 0:199");
plot(n, A, ":black");
hold off;
grid on;
axis on;

subplot(3, 1, 3);
stem(n, x, "Marker", ".");
hold on;
stem(n, y, "Marker", ".", "Color", "red");
xlabel("Sample");
ylabel("Amplitude")
title( ...
  "[1 + 0.5sin(2πm/200)]cos(2πn/50) (red), " + ...
  "[1 + 0.5sin(2πm/200)]sin(2πn/50) (blue), n = 0:499, m = 0:199");
plot(n, A, ":black");
hold off;
grid on;
axis on;

%% Problem 3
%{
In a single figure with three subplots
subplot(3,1,1)
write code to generate a cosine containing 500 samples, with 10 cycles spanning
the 500 sample interval. The cosine amplitude is an exponential decay,
aa = 0.995.^(0:499).
Plot the 500 samples of the aa.*cos( ). On the same subplot also plot the sine
amplitude in dotted black.
Include a grid, axis, title, xlabel and ylabel

subplot(3,1,2)
write code to generate a sine containing 500 samples, with 10 cycles spanning
the 500 sample interval. The sine amplitude is a an exponential decay,
aa = 0.995.^(0:499).
Plot the 500 samples of the aa.*sine( ). On the same subplot also plot the sine
amplitude in dotted black.
Include a grid, axis, title, xlabel and ylabel

subplot(3,1,3)
write code to generate both a cosine and a sine containing 500 samples, with 10
cycles spanning the 500 sample interval. The cosine and sine amplitude is a an
exponential decay, aa = 0.995.^(0:499).
Plot the 500 samples of the aa.*cos( ) and the aa.*sine( ). On the same subplot
also plot the sine amplitude in dotted black.
Include a grid, axis, title, xlabel and ylabel
%}

% Number of samples
n_max = 500;

% Number of cycles
cycles = 10;

% Frequency in radians per sample
w0 = 2 * pi / (n_max / cycles);

% Amplitude frequency = 200 samples
nA_max = 200;
wA = 2 * pi / nA_max;

n = [0 : n_max - 1];

A = 0.995 .^ n;
x = A .* cos(w0 * n);
y = A .* sin(w0 * n);

figure;
sgtitle("Problem 3");

subplot(3, 1, 1);
stem(n, x, "Marker", ".");
hold on;
xlabel("Sample");
ylabel("Amplitude");
title("(0.995^n)cos(2πn/50), n = 0:499");
plot(n, A, ":black");
hold off;
grid on;
axis on;

subplot(3, 1, 2);
stem(n, y, "Marker", ".", "Color", "red");
hold on;
xlabel("n");
xlabel("Sample");
ylabel("Amplitude");
title("(0.995^n)sin(2πn/50), n = 0:499");
plot(n, A, ":black");
hold off;
grid on;
axis on;

subplot(3, 1, 3);
stem(n, x, "Marker", ".");
hold on;
stem(n, y, "Marker", ".", "Color", "red");
xlabel("Sample");
ylabel("Amplitude")
title("(0.995^n)cos(2πn/50) (blue), (0.995^n)sin(2πn/50) (red), n = 0:499");
plot(n, A, ":black");
hold off;
grid on;
axis on;

%% Textbook Tutorial Problem 2.1
%{
Write a Matlab script to generate and plot the following signals described in
section 2.1, for -20 <= n <= 40.
  a) unit sample δ[n]
  b) unit step u[n]
  c) real exponential signal x1[n] = (0.80)^n
  d) complex exponential signal x2[n] = (0.9 * e^(jπ/10))^n
  e) sinusoidal sequence x3[n] = 2 * cos[2π(0.3)n + π/3]
Since x2[n] is complex-valued, plot the real part, imaginary part, magnitude,
and phase using the function subplot.
%}

n = [-20:40];

delta = (n == 0);

figure;
sgtitle("Problems 1a-1c");

subplot(3, 1, 1);
stem(n, delta, "Marker", ".");
xlabel("Sample");
ylabel("Amplitude");
title("1a, unit sample δ[n], n = -20:40");
grid on;
axis on;

u = (n >= 0);
subplot(3, 1, 2);
stem(n, u, "Marker", ".");
xlabel("Sample");
ylabel("Amplitude");
title("1b, unit step u[n], n = -20:40");
grid on;
axis on;

x1 = (0.8).^n;
subplot(3, 1, 3);
stem(n, x1, "Marker", ".");
xlabel("Sample");
ylabel("Amplitude");
title("1c, real exponential signal 0.8^n, n = -20:40");
grid on;
axis on;

figure;
sgtitle("Problem 1d");
x2 = (0.9 * exp(1i * pi / 10)) .^ n;

subplot(2, 2, 1);
stem(n, real(x2), "Marker", ".");
xlabel("Sample");
ylabel("Magnitude");
title("Real part of (0.9e^{jπ/10})^n, n = -20:40");
grid on;
axis on;

subplot(2, 2, 2);
stem(n, imag(x2), "Marker", ".");
xlabel("Sample");
ylabel("Magnitude");
title("Imaginary part of (0.9e^{jπ/10})^n, n = -20:40");
grid on;
axis on;

subplot(2, 2, 3);
stem(n, abs(x2), "Marker", ".");
xlabel("Sample");
ylabel("Magnitude");
title("Magnitude of (0.9e^{jπ/10})^n, n = -20:40");
grid on;
axis on;

subplot(2, 2, 4);
stem(n, angle(x2), "Marker", ".");
xlabel("Sample");
ylabel("Phase");
title("Phase of (0.9e^{jπ/10})^n, n = -20:40");
grid on;
axis on;

figure;
sgtitle("Problem 1e");

x3 = 2 * cos((2 * pi * (0.3) * n) + (pi / 3));
subplot(1, 1, 1);
stem(n, x3, "Marker", ".");
xlabel("Sample");
ylabel("Amplitude");
title("2cos[2π(0.3)n + π/3], n = -20:40");
grid on;
axis on;
