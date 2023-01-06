clc
clear
A= input('Enter the matrix: ');

%Characteristic equation
cf=poly(A);
disp('Characteristic equations')
disp(cf)

%EigenValues
EV=eig(A);
disp("Eigenvalues")
disp(EV)

%Eigenvectors
[P D]= eig(A);
disp('Eigen Vectors')
disp(P)