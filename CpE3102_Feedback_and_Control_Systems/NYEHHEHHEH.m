%NUMBER 3
syms s

%MATRIX DEFINITIONS
mainMat = [(s^2 + (2 * s) + 1), s-2 ; 1+s, (2*s)+1] %[output:70131f9e]
constMat = [1 ; 0] %[output:625d4db9]

thet2Mat = mainMat %[output:99193518]
thet2Mat(:,2) = constMat %[output:646ea145]

%DETERMINANTS
detThet2 = det(thet2Mat) %[output:4632d972]
detMain = det(mainMat) %[output:8fb956db]

GS = detThet2 / detMain %[output:91cad23d]

%DISPLAY RESULT
GS = simplify(GS) %[output:1dc70e72]
disp(GS) %[output:40ca4d37]

%%
%NO. 1
syms s

Z1 = (1 / ( ((1/30) + (4 * s)) )) + 40 %[output:1d79b58f]
Z2 = (1 / ( ((1/11) + (4 * s)) )) + 30 %[output:8439c198]

GS =  (Z1 + Z2)/ Z1 %[output:8374f2cd]
GS = simplify(GS) %[output:2edd8eee]

disp(GS) %[output:5cf81cd8]

%%
syms s
A = [(s^2 + (2*s) + 1), (s-2); 1 + s, (2*s) + 1] %[output:143934cc]

B = [1;0];

x = A \ B; % x(1) = theta1, x(2) = theta2
theta2 = x(2) %[output:4f52ea9c]
%%


%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright","rightPanelPercent":14}
%---
%[output:70131f9e]
%   data: {"dataType":"symbolic","outputData":{"name":"mainMat","value":"\\left(\\begin{array}{cc}\ns^2 +2\\,s+1 & s-2\\\\\ns+1 & 2\\,s+1\n\\end{array}\\right)"}}
%---
%[output:625d4db9]
%   data: {"dataType":"matrix","outputData":{"columns":1,"name":"constMat","rows":2,"type":"double","value":[["1"],["0"]]}}
%---
%[output:99193518]
%   data: {"dataType":"symbolic","outputData":{"name":"thet2Mat","value":"\\left(\\begin{array}{cc}\ns^2 +2\\,s+1 & s-2\\\\\ns+1 & 2\\,s+1\n\\end{array}\\right)"}}
%---
%[output:646ea145]
%   data: {"dataType":"symbolic","outputData":{"name":"thet2Mat","value":"\\left(\\begin{array}{cc}\ns^2 +2\\,s+1 & 1\\\\\ns+1 & 0\n\\end{array}\\right)"}}
%---
%[output:4632d972]
%   data: {"dataType":"symbolic","outputData":{"name":"detThet2","value":"-s-1"}}
%---
%[output:8fb956db]
%   data: {"dataType":"symbolic","outputData":{"name":"detMain","value":"2\\,s^3 +4\\,s^2 +5\\,s+3"}}
%---
%[output:91cad23d]
%   data: {"dataType":"symbolic","outputData":{"name":"GS","value":"-\\frac{s+1}{2\\,s^3 +4\\,s^2 +5\\,s+3}"}}
%---
%[output:1dc70e72]
%   data: {"dataType":"symbolic","outputData":{"name":"GS","value":"-\\frac{1}{2\\,s^2 +2\\,s+3}"}}
%---
%[output:40ca4d37]
%   data: {"dataType":"symbolic","outputData":{"name":"","value":"-\\frac{1}{2\\,s^2 +2\\,s+3}"}}
%---
%[output:1d79b58f]
%   data: {"dataType":"symbolic","outputData":{"name":"Z1","value":"\\frac{1}{4\\,s+\\frac{1}{30}}+40"}}
%---
%[output:8439c198]
%   data: {"dataType":"symbolic","outputData":{"name":"Z2","value":"\\frac{1}{4\\,s+\\frac{1}{11}}+30"}}
%---
%[output:8374f2cd]
%   data: {"dataType":"symbolic","outputData":{"name":"GS","value":"\\frac{\\frac{1}{4\\,s+\\frac{1}{11}}+\\frac{1}{4\\,s+\\frac{1}{30}}+70}{\\frac{1}{4\\,s+\\frac{1}{30}}+40}"}}
%---
%[output:2edd8eee]
%   data: {"dataType":"symbolic","outputData":{"name":"GS","value":"\\frac{369600\\,s^2 +14120\\,s+111}{211200\\,s^2 +7880\\,s+70}"}}
%---
%[output:5cf81cd8]
%   data: {"dataType":"symbolic","outputData":{"name":"","value":"\\frac{369600\\,s^2 +14120\\,s+111}{211200\\,s^2 +7880\\,s+70}"}}
%---
%[output:143934cc]
%   data: {"dataType":"symbolic","outputData":{"name":"A","value":"\\left(\\begin{array}{cc}\ns^2 +2\\,s+1 & s-2\\\\\ns+1 & 2\\,s+1\n\\end{array}\\right)"}}
%---
%[output:4f52ea9c]
%   data: {"dataType":"symbolic","outputData":{"name":"theta2","value":"-\\frac{1}{2\\,s^2 +2\\,s+3}"}}
%---
