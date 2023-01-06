clc 
clear
A= input('Enter the Matrix: ')

%Determinant
detA=det(A);
disp('Determinant of A: ')
disp(detA)

%Eigenvalues
EV=eig(A);
disp('EigenValue: ')
disp(EV)

%Product of eigenvalues
prev=prod(EV);
disp('Product of Eigenvalues: ')
disp(prev)