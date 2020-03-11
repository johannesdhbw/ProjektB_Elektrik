% Massen
m1 = 90.;
m2 = 10.;
% Federkonstante
c = 1600.;
% Daempfungskonstanten
dt = 1.;
%dr = 10.;
dr = 0.01;
% Stablaenge
e = 0.2;
% Ankerflussverkettung
K_A = 50.;
% Ohmscher Widerstand
R_A = 0.1;
% Induktiver Widerstand
L_A = 10.;
% Klemmenspannung
%U = 100.;
U = 100.;
% Erdbeschleunigung
g = 9.81;

% Simulation
%sim('Block_Diagramm_ProjektB')

plot(out.s_out);
xlabel('Zeit in s');
ylabel('Weg in m');
title('Auslenkung');

plot(out.s_out*1000);
hold on;
%plot(out.F_U_out);
%hold off;
xlabel('Zeit in s');
ylabel('Weg s_{out} * 1000 in m, UnwuchtkraftF_U in N', 'Interpreter', 'tex');
title('Auslenkung und Unwuchtkraft');
legend('Weg s_{out} * 1000', 'UnwuchtkraftF_U');
