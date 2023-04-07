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
R = [cos(phi)*cos(theta) cos(phi)*sin(theta)*sin(psi)-sin(phi)*cos(psi) cos(phi)*sin(theta)*cos(psi)+sin(phi)*sin(psi);
    sin(phi)*cos(theta) sin(phi)*sin(theta)*sin(psi)+cos(phi)*cos(psi) sin(phi)*sin(theta)*cos(psi)-cos(phi)*sin(psi);
    -sin(theta) cos(theta)*sin(psi) cos(theta)*cos(psi)];
p1 = [5*x;5*y;z];
p2 = [3*x;3*y;2*z];
p3 = [2*x;4*y;-3*z];
p1 = R*p1;
p2 = R*p2;
p3 = R*p3;
hold on

t1 = t*2; % el tiempo para la primera esfera se mueve el doble de rápido
t2 = t*1; % el tiempo para la segunda esfera es el tiempo normal
t3 = t*0.5; % el tiempo para la tercera esfera se mueve a la mitad de la velocidad

for idx = 1:length(t)
    clf
    plot3(p1(1,:),p1(2,:),p1(3,:),'r')
    hold on
    surf(0.5*xp+p1(1,idx),0.5*yp+p1(2,idx),0.5*zp+p1(3,idx),'FaceColor','r')
    plot3(p2(1,:),p2(2,:),p2(3,:),'b')
    surf(0.5*xp+p2(1,idx),0.5*yp+p2(2,idx),0.5*zp+p2(3,idx),'FaceColor','b')
    plot3(p3(1,:),p3(2,:),p3(3,:),'g')
    surf(0.5*xp+p3(1,idx),0.5*yp+p3(2,idx),0.5*zp+p3(3,idx),'FaceColor','g')
    xlim([-10 10])
    ylim([-10 10])
    zlim([-10 10])
    view(30,40)
    pause(0.1)

    % actualiza las posiciones de las esferas usando diferentes vectores de tiempo
    p1 = R*[5*cos(t1(idx)); 5*sin(t1(idx)); 0];
    p2 = R*[3*cos(t2(idx)); 3*sin(t2(idx)); 2*sin(t2(idx))];
