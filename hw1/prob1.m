%{
Problem 1
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

subplot(3, 1, 1);
stem(n, x, "Marker", ".");
xlabel("n");
ylabel("x[n] = cos(2 * pi * n / 50)");
title("Discrete cosine signal with 10 cycles spanning 500 samples");
grid on;
axis on;

subplot(3, 1, 2);
stem(n, y, "Marker", ".", "Color", "red");
xlabel("n");
ylabel("y[n] = sin(2 * pi * n / 50)");
title("Discrete sine signal with 10 cycles spanning 500 samples");
grid on;
axis on;

subplot(3, 1, 3);
stem(n, x, "Marker", ".");
hold on;
stem(n, y, "Marker", ".", "Color", "red");
xlabel("n");
title( ...
  "Discrete cosine (blue) and sine (red) signals with 10 cycles " + ...
  "spanning 500 samples");
grid on;
axis on;
hold off;
