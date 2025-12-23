% Symbolic Variable
syms s 

%Transfer Function
Ts = (6.76e-4) / (s^2 + 0.0186*s + 6.76e-4);

% Part (c) - Step Response using tf and step commands

% Extract numerator and denominator coefficients
% Method 1: Direct specification (RECOMMENDED)
num_coeffs = [0, 0, 6.76e-4];      % s^2 coefficient, s^1 coefficient, s^0 coefficient
den_coeffs = [1, 0.0186, 6.76e-4]; % s^2 coefficient, s^1 coefficient, s^0 coefficient

% Create transfer function object
sys = tf(num_coeffs, den_coeffs);

% Define time vector for simulation (extend to see full settling)
t = 0:1:800;  % 0 to 800 seconds with 1 second intervals

% Plot step response
figure('Name', 'Step Response of Artificial Heart System', 'NumberTitle', 'off');
step(sys, t);
grid on;
title('Step Response of Closed-Loop Artificial Heart System');
xlabel('Time (seconds)');
ylabel('Output (Atrial Pumping Rate)');

% Add reference lines for specifications
hold on;
% Add 30% overshoot line (if steady-state is 1, peak should be 1.3)
yline(1.3, '--r', 'LineWidth', 1.5, 'Label', '30% Overshoot Line');
% Add steady-state line
yline(1, '--g', 'LineWidth', 1.5, 'Label', 'Steady State');
hold off;

%% Calculate Step Response Characteristics
info = stepinfo(sys);

% Calculate percent error
OS_error = abs(30 - info.Overshoot) / 30 * 100;
Tp_error = abs(127 - info.PeakTime) / 127 * 100;

% Additional System Analysis
% Calculate natural frequency and damping ratio
wn = sqrt(den_coeffs(3));  % Natural frequency
zeta = den_coeffs(2) / (2 * wn);  % Damping ratio

% Theoretical calculations
theoretical_OS = exp(-zeta*pi/sqrt(1-zeta^2)) * 100;
theoretical_Tp = pi / (wn * sqrt(1 - zeta^2));

% Display poles
poles_sys = pole(sys);
