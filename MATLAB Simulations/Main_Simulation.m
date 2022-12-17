figure(1);
[Bx, By, Bz] = getInitialData("0.2.csv");
matrix_color_map(centerPlaneMagnitude(Bx, By, Bz), "bla1", "bla2");

% figure(2);
% [Bx, By, Bz] = getInitialData("0.3.csv");
% matrix_color_map(centerPlaneMagnitude(Bx, By, Bz), "bla1", "bla2");
% 
% figure(3);
% [Bx, By, Bz] = getInitialData("0.4.csv");
% matrix_color_map(centerPlaneMagnitude(Bx, By, Bz), "bla1", "bla2");
% 
% figure(4);
% [Bx, By, Bz] = getInitialData("0.05.csv");
% matrix_color_map(centerPlaneMagnitude(Bx, By, Bz), "bla1", "bla2");










% [Bx, By, Bz] = getInitialData("bfield.csv");
% [Ex, Ey, Ez] = getInitialData("efield.csv");
% [Jx, Jy, Jz] = getInitialData("current.csv");
% 
% dl = 0.1;
% dt = 0.00001;
% f = 1000;
% mu = 1;
% epsilon = 1.00059;
% 
% for i = 1:10
%     figure(i);
%     matrix_color_map(centerPlaneMagnitude(Bx, By, Bz), "bla1", "bla2");
%     
%     [Ex, Ey, Ez, Bx, By, Bz] = fdtd(dl, dt, Ex, Ey, Ez, Bx, By, Bz, Jx, Jy, Jz, mu, epsilon);
%     [Jx, Jy, Jz] = updateCurrent(Jx, Jy, Jz, dt * i, f);
% end