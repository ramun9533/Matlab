%<-----------------------------------------------------------------------------
%el resultado de obtener raiz cuadrada a numeros negativos son numeros
%imaginarios, asi que para darme una idea de la "no-grafica" se hacen positiva
%la parte de la funcion que da los numeros negativos(imaginarios).
%16 - x^2 - y^2 ≥ 0 entonces 16 ≥ x^2 + y^2
%Dominio: {(x, y) | -4 ≤ x ≤ 4, 0 ≤ y ≤ 4 - x^2}
%    Contradominio es {z | z ≥ 0}.
%----------------------------------------------------------------------------->
clear
clc
close all
x = linspace(-10,10,100);
y = linspace(-10,10,100);
function z = f(x ,y)
  z = abs(sqrt(y)) + abs(sqrt(16 - (x^2) - (y^2)));
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
title('f(x,y) = z = |(√(y))| + |(√(16 - (x^2) - (y^2)))|');
%clear
%clc
%close all
%x = linspace(-10,10,100);
%y = linspace(-10,10,100);
%z = [];
%hold on
%for idx = 1:length(x)
%  for idy = 1:length(y)
    %z(idx,idy) = sin(x(idx)) *  sin(y(idy)) / (x(idx)*y(idy));
    %z(idx,idy) = NaN;^
    %z(idx,idy) = sqrt(((2*(x(idx))) - (y(idy))));
    %10
%     a = ((x(idx))^2); % esto es "x" al cuadrado
%      b = (y(idy))^2; % esto es "y" al cuadrado
      %c = sqrt((y(idy)) - a);
      %d = (1-b);

      %c = sqrt(abs(16 - a - b ));
      %d = sqrt(abs(y(idy)));
%      c = sqrt(16 - a - b );
%      d = sqrt(y(idy));
%      z(idx,idy) = c + d;


%   end
%end

%xlabel('Eje-X')
%ylabel('Eje-Y')
%hold off
% surf(x, y, z)

