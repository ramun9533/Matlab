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

% Encuentra los puntos medios de los lados del rombo
xm12 = (x1+x2)/2;
ym12 = (y1+y2)/2;
xm23 = (x2+x3)/2;
ym23 = (y2+y3)/2;
xm34 = (x3+x4)/2;
ym34 = (y3+y4)/2;
xm41 = (x4+x1)/2;
ym41 = (y4+y1)/2;

% Encuentra los puntos en el perímetro del rombo
puntos_perimetro = [xm12 ym12; x2 y2; xm23 ym23; x3 y3; xm34 ym34; x4 y4; xm41 ym41; x1 y1];

% Dibuja el rombo
plot([x1 x2 x3 x4 x1], [y1 y2 y3 y4 y1], '-');

%hold on;
xlabel('Eje-X')
ylabel('Eje-Y')
% Dibuja 16 círculos a lo largo del perímetro del rombo, separados entre sí
% de manera equidistante
for i = 1:16
    punto_inicio = puntos_perimetro(mod(i-1,8)+1,:);
    punto_fin = puntos_perimetro(mod(i,8)+1,:);
    distancia = norm(punto_fin - punto_inicio);
    num_circulos_entre_puntos = round(distancia / (2*r));
    delta_x = (punto_fin(1) - punto_inicio(1)) / (num_circulos_entre_puntos+1);
    delta_y = (punto_fin(2) - punto_inicio(2)) / (num_circulos_entre_puntos+1);
    for j = 1:num_circulos_entre_puntos
        x = punto_inicio(1) + j*delta_x;
        y = punto_inicio(2)+ j*delta_y;
        plot(x + xc, y + yc, '-');
        x = punto_inicio(1) ;
        y = punto_inicio(2);
        plot(x + xc, y + yc, '-');
        pause(0.2)
    end
end
axis([-a a -b b]);
axis equal;

