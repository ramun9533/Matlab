close all
clear
clc
t = linspace(0,2*pi,100);
x = cos(t);
y = sin(t);
z = zeros(1,100);
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

for k =1:20
  for idx = 1:length(t);
    clf
    plot3(p1(1,:),p1(2,:),p1(3,:),'r')
    hold on
    idx1 = idx*2;
    idx2 = floor(idx/2)+1; % se cambia el índice para la segunda esfera
    surf(xp+p1(1,idx1),yp+p1(2,idx1),zp+p1(3,idx1),'FaceColor','r')
    surf(xp+p1(1,idx2),yp+p1(2,idx2),zp+.5+p1(3,idx2),'FaceColor','b')
    surf(xp+p1(1,idx),yp+p1(2,idx),zp+p1(3,idx),'FaceColor','g')
    xlim([-10 10])
    ylim([-10 10])
    zlim([-10 10])
    view(30,40)
    pause(0.01)
   end
 end
