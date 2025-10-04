%First Unit Assessment Problem

%Symbolic variable
syms s;

%Define the values 
m1 = 2; m2 = 3; k1 = 5; k2 = 6; fv1 = 4; fv2 = 4; fv3 = 3;

%Define the matrix
A_trans = [ ((m1 * s^2) + (fv1 + fv2)*s + (k1 + k2)), -((fv2 * s) + k2) ; -((fv2 * s) + k2), ((m2 * s^2) + (fv3 + fv2)*s + k2)];

F_Vector = [1;0];

A1 = A_trans;

%Isolation of columns for coefficients
A1 (:,1) = F_Vector;

%Get the determinants of each ones
det_A1 = det(A1);
disp (det_A1); %[output:94adbc1b]

det_A = det(A_trans);
disp (det_A); %[output:63b20b7c]

%Transfer function notation
G1_s = det_A1 / det_A;
G1_s = simplify(G1_s);

%Display the result
disp(G1_s); %[output:6a9c74a5]
%%
%Second Unit Assessment Problem

%Symbolic variable
syms s

%Define the values 
j1 = 3; j2 = 3; k1 = 3; k2 = 3; d = 3;

%Define the matrix
A_trans = [ ((j1 * s^2) + d*s + k1), -((d * s) + k2) ; -((d * s) + (k1 + k2)), ((j2 * s^2) + d*s + (k1 + k2))];

F_Vector = [1;0];

A1 = A_trans;

%Isolation of columns for coefficients
A1 (:,1) = F_Vector;

%Get the determinants of each ones
det_A1 = det(A1);
det_A = det(A_trans);

%Transfer function notation
G1_s = det_A1 / det_A;

%Display the result
disp(G1_s) %[output:43daa904]

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright","rightPanelPercent":40}
%---
%[output:94adbc1b]
%   data: {"dataType":"symbolic","outputData":{"name":"","value":"3\\,s^2 +7\\,s+6"}}
%---
%[output:63b20b7c]
%   data: {"dataType":"symbolic","outputData":{"name":"","value":"6\\,s^4 +38\\,s^3 +85\\,s^2 +77\\,s+30"}}
%---
%[output:6a9c74a5]
%   data: {"dataType":"symbolic","outputData":{"name":"","value":"\\frac{3\\,s^2 +7\\,s+6}{6\\,s^4 +38\\,s^3 +85\\,s^2 +77\\,s+30}"}}
%---
%[output:43daa904]
%   data: {"dataType":"symbolic","outputData":{"name":"","value":"\\frac{3\\,s^2 +3\\,s+6}{9\\,s^4 +18\\,s^3 +27\\,s^2 }"}}
%---
