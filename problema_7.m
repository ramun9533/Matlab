%<-----------------------------------------------------------------------------
%
%Dominio: {(x, y) | -4 < x < 4, -4 < y < 4, y^2 < 16 - 2x^2}
%Contra-dominio: {z | z ∈ R}
%------------------------------------------------------------------------------>
clear
clc
close all
x = linspace(-10,10,100);
y = linspace(-10,10,100);
function z = f(x ,y)
  z = log(16 -(2 * (x^2)) - (y^2));
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
title('f(x,y) = log(16 -(2 * (x^2)) - (y^2))');

%z = [];
%hold on
%for idx = 1:length(x)
%  for idy = 1:length(y)
    %z(idx,idy) = sin(x(idx)) *  sin(y(idy)) / (x(idx)*y(idy));
    %z(idx,idy) = NaN;^
    %z(idx,idy) = sqrt(((2*(x(idx))) - (y(idy))));
    %10
%     a = 2 * ((x(idx))^2); % esto es "x" al cuadrado
%      b = (y(idy))^2; % esto es "y" al cuadrado
      %c = sqrt((y(idy)) - a);
      %d = (1-b);

%      z(idx,idy) = log(16 - a - b );


%   end
%end

%xlabel('Eje-X')
%ylabel('Eje-Y')
%hold off
% surf(x, y, z)

