m1 = 90.;
m2 = 10.;
c = 1600.;
dt = 5.;
dr = 10.;
e = 0.2;
K_A = 50.;
R_A = 0.1;
L_A = 10.;
U = 100.;
g = 9.81;

sim('Block_Diagramm_ProjektB')
scopes = find_system(gcs, 'BlockType', 'Scope');
for i=1 : length(scopes)
set_param(scopes{i},'open','on');
end