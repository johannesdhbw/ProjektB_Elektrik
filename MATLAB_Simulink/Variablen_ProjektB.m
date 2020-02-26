% Massen
m1 = 90.;
m2 = 10.;
% Federkonstante
c = 1600.;
% Daempfungskonstanten
dt = 5.;
dr = 10.;
% Stablaenge
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
sim('Block_Diagramm_ProjektB')
% Scopes finden
scopes = find_system(gcs, 'BlockType', 'Scope');
% Alle Scopes anzeigen
for i=1 : length(scopes)
set_param(scopes{i},'open','on');
end

