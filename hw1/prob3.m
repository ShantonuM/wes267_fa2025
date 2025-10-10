%{
Problem 3
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

subplot(3, 1, 1);
stem(n, x, "Marker", ".");
hold on;
xlabel("n");
ylabel("x[n] = A * cos(2 * pi * n / 50))");
title( ...
  "Vaying amplitude discrete cosine signal with 10 cycles spanning 500 " + ...
  "samples");
grid on;
axis on;
plot(n, A, ":black");
hold off;

subplot(3, 1, 2);
stem(n, y, "Marker", ".", "Color", "red");
hold on;
xlabel("n");
ylabel("y[n] = A * sin(2 * pi * n / 50)");
title( ...
  "Varying amplitude discrete sine signal with 10 cycles spanning 500 " + ...
  "samples");
grid on;
axis on;
plot(n, A, ":black");
hold off;

subplot(3, 1, 3);
stem(n, x, "Marker", ".");
hold on;
stem(n, y, "Marker", ".", "Color", "red");
xlabel("n");
title( ...
  "Varying amplitude discrete cosine (blue) and sine (red) signals with " + ...
  "10 cycles spanning 500 samples");
grid on;
axis on;
plot(n, A, ":black");
hold off;
