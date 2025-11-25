r1 = 1;
w1 = 1;

r2 = 0;
w2 = 2*pi*1;

C = r1 + 1j*w1;
a = r2 + 1j*w2;

CMag = abs(C);
q = angle(C);
t = -0.5:0.001:2;

xt = CMag*exp(r1*t).*(cos(w2*t + q) + 1j*sin(w2*t + q));

plot(t,real(xt),'b',t,imag(xt),'r',t,CMag*exp(r1*t),'m--',t,-CMag*exp(r1*t),'m--');
grid on