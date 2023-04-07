close all
clear
clc
t = linspace(0,2*pi,50);
x = cos(t);
y = sin(t);
z = zeros(1,50);
[xp,yp,zp] = sphere;
psi = 15*pi/180;
theta = 30*pi/180;
phi = 20*pi/180;
R = [cos(phi)*cos(theta) cos(phi)*sin(theta)*sin(psi)-sin(phi)*cos(psi) cos(phi)*sin(theta)*cos(psi)+sin(phi)*sin(psi);    sin(phi)*cos(theta) sin(phi)*sin(theta)*sin(psi)+cos(phi)*cos(psi) sin(phi)*sin(theta)*cos(psi)-cos(phi)*sin(psi);    -sin(theta) cos(theta)*sin(psi) cos(theta)*cos(psi)];
p1 = [5*x;5*y;z];
p2 = [3*x;3*y;2*z];
p3 = [2*x;4*y;-3*z];
p1 = R*p1;
p2 = R*p2;
p3 = R*p3;
hold on
for k = 1:3
    if k == 1
        speed_factor = 1; % velocidad normal para la primera esfera
    elseif k == 2
        speed_factor = 0.5; % velocidad media para la segunda esfera
    else
        speed_factor = 2; % velocidad doble para la tercera esfera
    end
    idx = 1;
    idx1 = 1;
    idx2 = 1;
    idx3 = 1;
    for idx = 1:length(t)
        clf
        p1(:,idx1) = R*[5*cos(speed_factor*t(idx)); 5*sin(speed_factor*t(idx)); 0];
        surf(xp+p1(1,idx1),yp+p1(2,idx1),zp+p1(3,idx1),'FaceColor','r')
        p2(:,idx2) = R*[3*cos(0.5*speed_factor*t(idx)); 3*sin(0.5*speed_factor*t(idx)); 2*cos(speed_factor*t(idx))];
        surf(xp+.5+p2(1,idx2),yp+p2(2,idx2),zp+.5+p2(3,idx2),'FaceColor','b')
        p3(:,idx3) = R*[2*cos(2*speed_factor*t(idx)); 4*sin(2*speed_factor*t(idx)); -3*cos(speed_factor*t(idx))];
        surf(xp+1+p3(1,idx3),yp+p3(2,idx3),zp+p3(3,idx3),'FaceColor','g')
        xlim([-10 10])
        ylim([-10 10])
        zlim([-10 10])
        view(30,40)
        pause(0.1)
        idx1 = idx1 + 1;
        idx2 = idx2 + 1;
        idx3 = idx3 + 1;
    end
end

