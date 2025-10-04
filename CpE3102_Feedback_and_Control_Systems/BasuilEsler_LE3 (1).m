%Table 1: Rise Time and Setting Time

% Initialize arrays to store results
K_values = 1:10;
rise_times = zeros(1, 10);
settling_times = zeros(1, 10);

%Loop to iteratively calculate for Ts and Tr for all of K
for K = K_values %[output:group:621739ee]
    num = K;
    den = [1 K];
    sys = tf(num, den);
    
    % Get step response information
    info = stepinfo(sys);
    
    % Extract rise time and settling time
    rise_times(K) = info.RiseTime;
    settling_times(K) = info.SettlingTime;
    
    % Display results
    fprintf('%-5d %-20.6f %-20.6f\n', K, rise_times(K), settling_times(K)); %[output:7b264ad6]
end %[output:group:621739ee]
%%
% Specification 1: Rise Time = 0.08 sec
tr1_spec = 0.08;
omega_n1 = 2.2 / tr1_spec;
num1 = omega_n1;
den1 = [1 omega_n1];
sys1 = tf(num1, den1);
info1 = stepinfo(sys1);
fprintf('%-25s %-20.6f %-20.6f\n', 'tr = 0.08', info1.RiseTime, info1.SettlingTime); %[output:6f27eff8]

% Specification 2: Settling Time = 0.054 sec
ts2_spec = 0.054;
omega_n2 = 4 / ts2_spec;
num2 = omega_n2;
den2 = [1 omega_n2];
sys2 = tf(num2, den2);
info2 = stepinfo(sys2);
fprintf('%-25s %-20.6f %-20.6f\n', 'ts = 0.054', info2.RiseTime, info2.SettlingTime); %[output:376e992d]

% Specification 3: Rise Time = 0.01 sec
tr3_spec = 0.01;
omega_n3 = 2.2 / tr3_spec;
num3 = omega_n3;
den3 = [1 omega_n3];
sys3 = tf(num3, den3);
info3 = stepinfo(sys3);
fprintf('%-25s %-20.6f %-20.6f\n', 'tr = 0.01', info3.RiseTime, info3.SettlingTime); %[output:23e69208]

% Specification 4: Settling Time = 0.03 sec
ts4_spec = 0.03;
omega_n4 = 4 / ts4_spec;
num4 = omega_n4;
den4 = [1 omega_n4];
sys4 = tf(num4, den4);
info4 = stepinfo(sys4);
fprintf('%-25s %-20.6f %-20.6f\n', 'ts = 0.03', info4.RiseTime, info4.SettlingTime); %[output:5fab3c80]


%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright"}
%---
%[output:7b264ad6]
%   data: {"dataType":"text","outputData":{"text":"1     2.197006             3.912074            \n2     1.098503             1.956037            \n3     0.732335             1.304025            \n4     0.549252             0.978019            \n5     0.439401             0.782415            \n6     0.366168             0.652012            \n7     0.313858             0.558868            \n8     0.274626             0.489009            \n9     0.244112             0.434675            \n10    0.219701             0.391207            \n","truncated":false}}
%---
%[output:6f27eff8]
%   data: {"dataType":"text","outputData":{"text":"tr = 0.08                 0.079891             0.142257            \n","truncated":false}}
%---
%[output:376e992d]
%   data: {"dataType":"text","outputData":{"text":"ts = 0.054                0.029660             0.052813            \n","truncated":false}}
%---
%[output:23e69208]
%   data: {"dataType":"text","outputData":{"text":"tr = 0.01                 0.009986             0.017782            \n","truncated":false}}
%---
%[output:5fab3c80]
%   data: {"dataType":"text","outputData":{"text":"ts = 0.03                 0.016478             0.029341            \n","truncated":false}}
%---
