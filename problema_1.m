% Define el radio del círculo y el número de puntos en la circunferencia
clear
clc
close all
a = 6;
b = 6;
r = 2;
n = 50;

% Crea el vector de puntos en la circunferencia del círculo
t = linspace(0, 2*pi, n);
xc = r * cos(t);
yc = r * sin(t);

% Define los vértices del rombo
x1 = 0;
y1 = b;
x2 = a;
y2 = 0;
x3 = 0;
y3 = -b;
x4 = -a;
y4 = 0;

% Dibuja el rombo
plot([x1 x2 x3 x4 x1], [y1 y2 y3 y4 y1], '-');

hold on;
xlabel('Eje-X')
ylabel('Eje-Y')
% Gira el círculo alrededor del perímetro del rombo
for t = 0:0.1:2*pi
    x = a * cos(t);
    y = b * sin(t);
    plot(x + xc, y + yc, '-');
    axis([-a a -b b]);
    axis equal;
    pause(0.01);
end

