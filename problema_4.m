%<-----------------------------------------------------------------------------


%    Dominio = {(x,y) | x,y ∈ ℝ, -√2 ≤ x ≤ √2 y -1 ≤ y ≤ 1}
%    Contradominio = {z | z ∈ ℝ, 0 ≤ z ≤ √2 + 1}
%----------------------------------------------------------------------------->
clear
clc
close all
%Coloco 100 divisiones para hacer dar mas estetica la grafica
x = linspace(-10,10,100);
y = linspace(-10,10,100);
function z = f(x ,y)
  z = sqrt(2 - (x^2)) + sqrt(1 - (y^2));
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
title('f(x,y) = sqrt (2 - (x^2)) + sqrt(1 - (y^2))');

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
%      z(idx,idy) = sqrt(2-a) - sqrt(1-b);


%   end
%end

%xlabel('Eje-X')
%ylabel('Eje-Y')
%hold off
% surf(x, y, z)

