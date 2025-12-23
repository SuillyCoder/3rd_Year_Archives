%Transfer Function Verification

syms s K

Ps = ((-520*s) - 10.3844)/(s^3 + (2.6817*s^2) + (0.11 * s) + 0.0136)
Gs = K

PsGs = Ps * Gs

Ts = (PsGs) / (1 + PsGs)
Ts_simp = (simplify(Ts))

%Routh Hurwitz Table 1

a = 1
b = 0.11 - (520 * K)
c = 2.6817
d = 0.0136 - (10.3844 * K)

determinant = (det([a b; c d]))/c 
simplify(determinant)

%Routh Hurwitz Table 2

a2 = 2.6817
b2 = 0.0136 - (10.3844 * K)
c2 = (281387/2681700) - ((13840996*K)/26817)
d2 = 0

determinant2 = (-det([a2 b2; c2 d2]))/c2 
simplify(determinant2)

%Plotting the  Graph

Kval = 1
Ts_numeric = subs(Ts_simp, K, Kval)

% Extract numerator and denominator coefficients
[num_sym, den_sym] = numden(Ts_numeric);
num_coeffs = double(coeffs(num_sym, s, 'All'));
den_coeffs = double(coeffs(den_sym, s, 'All'));

% Flip coefficients (MATLAB expects descending order)
num_coeffs = fliplr(num_coeffs);
den_coeffs = fliplr(den_coeffs);

% Create transfer function object
sys = tf(num_coeffs, den_coeffs);

disp(' ')
disp(['Transfer Function with K = ', num2str(Kval), ':'])
disp(sys)

% Plot step response
figure('Name', 'Step Response of Closed-Loop System', 'NumberTitle', 'off');
step(sys);
grid on;
title(['Step Response of Closed-Loop System (K = ', num2str(Kval), ')']);
xlabel('Time (seconds)');
ylabel('Output');

% Get step response information
info = stepinfo(sys);
disp(' ')
disp('Step Response Characteristics:')
disp(['  Settling Time (2%): ', num2str(info.SettlingTime), ' seconds'])
disp(['  Peak Time: ', num2str(info.PeakTime), ' seconds'])
disp(['  Percent Overshoot: ', num2str(info.Overshoot), '%'])
disp(['  Rise Time: ', num2str(info.RiseTime), ' seconds'])
disp(['  Steady-State Value: ', num2str(dcgain(sys))])


