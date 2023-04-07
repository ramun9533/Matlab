%<-----------------------------------------------------------------------------
%Al parecer la funcion devuelve un numero infinitamente pequeño que no grafica,
%asi que para darme una idea de la "no-grafica" se hace que el "1" en la funcion
%sea un .99999
%Dominio = {(x, y) | x^2 + y^2 - 1 ≤ 1}
%Contradominio = {z | -π/2 ≤ z ≤ π/2}
%----------------------------------------------------------------------------->
clear
clc
close all
x = linspace(-10,10,100);
y = linspace(-10,10,100);
function z = f(x ,y)
  z = asin(((x^2) + (y^2) - .99999));
endfunction
% Crear una matriz 2D para los valores de x e y
[X,Y] = meshgrid(x,y);

% Calcular los valores de z utilizando la función definida anteriormente
Z = f(X,Y);

% Graficar la superficie
surf(X,Y,Z);

% Etiquetas de los ejes
xlabel('Eje de las X');
ylabel('Eje de las Y');
zlabel('Eje de las Z');

% Título de la gráfica
title('f(x,y) = arcsen((x^2) + (y^2) -1);');
%z = [];
%hold on
%for idx = 1:length(x)
%  for idy = 1:length(y)
    %z(idx,idy) = sin(x(idx)) *  sin(y(idy)) / (x(idx)*y(idy));
    %z(idx,idy) = NaN;^
    %z(idx,idy) = sqrt(((2*(x(idx))) - (y(idy))));
    %10
%     a = (x(idx))^2; % esto es "x" al cuadrado
%      b = (y(idy))^2; % esto es "y" al cuadrado
      %c = sqrt((y(idy)) - a);
      %d = (1-b);

%      z(idx,idy) = asin(a + b - 1);


%   end
%end

%xlabel('Eje-X')
%ylabel('Eje-Y')
%hold off
%surf(x, y, z)

