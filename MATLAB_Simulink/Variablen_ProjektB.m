% Massen
m1 = 90.;
m2 = 10.;
% Federkonstante
c = 1600.;
% Daempfungskonstanten
dt = 5.;
dr = 10.;
%Stablaenge
e = 0.2;
% Ankerflussverkettung
K_A = 50.;
% Ohmscher Widerstand
R_A = 0.1;
% Induktiver Widerstand
L_A = 10.;
% Klemmenspannung
U = 100.;
% Erdbeschleunigung
g = 9.81;

% Simulation
out = sim('Block_Diagramm_ProjektB');

figure(1),plot(out.s_out*1000);
hold on;
plot(out.F_U_out);
hold off;
xlabel('Zeit in s');
ylabel('Weg s_{out} * 1000 in m, UnwuchtkraftF_U in N', 'Interpreter', 'tex');
title('Auslenkung und Unwuchtkraft');
legend('Weg s_{out} * 1000', 'UnwuchtkraftF_U');

figure(2),plot(out.omega_out);
xlabel('Zeit in s');
ylabel('Winkelgeschwindigkeit in 1/s', 'Interpreter', 'tex');
title('Winkelgeschwindigkeit Omega');

figure(3),plot(out.M_A_out);
xlabel('Zeit in s');
ylabel('Antriebsmoment in Nm', 'Interpreter', 'tex');
title('Antriebsmoment Gleichstrommotor');
