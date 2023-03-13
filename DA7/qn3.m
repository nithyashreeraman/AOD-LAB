clc
clear all
close all
syms x1(t) x2(t)
A=input('Enter the coefficent matrix A: ');
F=input('Enter the nonhomogenous part:');
[P,D]=eig(A)
IP=inv(P);
X=[x1;x2];
FF=IP *F;
sol1=dsolve(diff(x1,1)-D(1)*x1-FF(1)==0);
sol2=dsolve(diff(x2,1)-D(4)*x2-FF(2)==0);
disp('The solution of the given system is : ')
Y=P*[sol1;sol2];
y1=simplify(Y(1))
y2=simplify(Y(2))