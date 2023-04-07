close all
clear
clc
t = linspace(0,2*pi,50);
x = cos(t);
y = sin(t);
z = zeros(1,50);
[xp,yp,zp] = sphere;
psi = 15*pi/180;
theta = 50*pi/180;
theta1 = 20*pi/180;
theta2 = 10*pi/180;
phi = 20*pi/180;
phi1 = 10*pi/180;
phi2 = 30*pi/180;
R = [cos(phi2)*cos(theta1) cos(phi)*sin(theta)*sin(psi)-sin(phi)*cos(psi) cos(phi)*sin(theta)*cos(psi)+sin(phi)*sin(psi);
    sin(phi)*cos(theta) sin(phi)*sin(theta1)*sin(psi)+cos(phi)*cos(psi) sin(phi)*sin(theta1)*cos(psi)-cos(phi)*sin(psi);
    -sin(theta1) cos(theta2)*sin(psi) cos(theta)*cos(psi)];
p1 = [5*x;5*y;3*z];
p2 = [1*x;1*y;-2*z];
p3 = [2*x;4*y;-3*z];
p1 = R*p1;
p2 = R*p2;
p3 = R*p3;
hold on
for k =1:3
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
  end
end
