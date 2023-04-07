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

% Scaling factors for each sphere
scale_factors = [5 3 2];

p1 = scale_factors(1)*[x;y;z];
p2 = scale_factors(2)*[x;y;2*z];
p3 = scale_factors(3)*[x;4*y;-3*z];
p1 = R*p1;
p2 = R*p2;
p3 = R*p3;
hold on

for idx = 1:length(t)
    clf
    % Plot the first sphere
    plot3(p1(1,:),p1(2,:),p1(3,:),'r')
    hold on
    surf(xp+p1(1,idx),yp+p1(2,idx),zp+p1(3,idx),'FaceColor','r')

    % Plot the second sphere
    plot3(p2(1,:),p2(2,:),p2(3,:),'b')
    surf(xp+p2(1,idx),yp+p2(2,idx),zp+0.5*p2(3,idx),'FaceColor','b')

    % Plot the third sphere
    plot3(p3(1,:),p3(2,:),p3(3,:),'g')
    surf(xp+p3(1,idx),yp+p3(2,idx),zp+p3(3,idx),'FaceColor','g')

    % Update the position of each sphere using a different scaling factor
    p1 = R*scale_factors(1)*[x;y;z];
    p2 = R*scale_factors(2)*[x;y;2*z];
    p3 = R*scale_factors(3)*[x;4*y;-3*z];

    xlim([-10 10])
    ylim([-10 10])
    zlim([-10 10])
    view(30,40)
    pause(0.1)
end

