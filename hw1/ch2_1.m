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

f1 = figure;

subplot(3, 1, 1);
stem(n, delta, "Marker", ".");
xlabel("n");
ylabel("x[n]");
title("Unit sample δ[n]");
grid on;
axis on;

u = (n >= 0);
subplot(3, 1, 2);
stem(n, u, "Marker", ".");
xlabel("n");
ylabel("x[n]");
title("Unit step u[n]");
grid on;
axis on;

x1 = (0.8).^n;
subplot(3, 1, 3);
stem(n, x1, "Marker", ".");
xlabel("n");
ylabel("x[n]");
title("Real exponential signal 0.8^n");
grid on;
axis on;

f2 = figure;
x2 = (0.9 * exp(1i * pi / 10)) .^ n;

subplot(2, 2, 1);
stem(n, real(x2), "Marker", ".");
xlabel("n");
ylabel("real(x[n])");
title("Real part of complex exponential signal (0.9e^{jπ/10})^n");
grid on;
axis on;

subplot(2, 2, 2);
stem(n, imag(x2), "Marker", ".");
xlabel("n");
ylabel("imag(x[n])");
title("Imaginary part of complex exponential signal (0.9e^{jπ/10})^n");
grid on;
axis on;

subplot(2, 2, 3);
stem(n, abs(x2), "Marker", ".");
xlabel("n");
ylabel("abs(x[n])");
title("Magnitude of complex exponential signal (0.9e^{jπ/10})^n");
grid on;
axis on;

subplot(2, 2, 4);
stem(n, angle(x2), "Marker", ".");
xlabel("n");
ylabel("angle(x[n])");
title("Phase of complex exponential signal (0.9e^{jπ/10})^n");
grid on;
axis on;

f3 = figure;
x3 = 2 * cos((2 * pi * (0.3) * n) + (pi / 3));
plot(n, x3);
xlabel("n");
ylabel("x[n]");
title("Sinusoidal signal 2cos[2π(0.3)n + π/3]");
grid on;
axis on;

filename = "ch2_1.pdf";
exportgraphics(f1, filename);
exportgraphics(f2, filename, "Append", true);
exportgraphics(f3, filename, "Append", true);
