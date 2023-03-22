clc
clear
syms x a0 a1 a2 a3
a = [a0 a1 a2 a3];
y = sum(a.*(x).^ [0:3]);
dy = diff(y);
d2y = diff(dy);
gde = collect(d2y+y,x);
cof=coeffs(gde,x);
A2=solve(cof(1),a2);
A3=solve(cof(2),a3);
y=subs(y,[a2,a3],[A2,A3]);
y=coeffs(y,[a1 a0]);
disp('Solution is')
disp(['y=A(',char(y(1)),'+ ...)+B(',char(y(2)),'+ ...)'])