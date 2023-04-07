clear
clc
close all
x = linspace(-10,10,100);
y = linspace(-10,10,100);
z = [];
for idx = 1:length(x)
  for idy = 1:length(y)
    %z(idx,idy) = sin(x(idx)) *  sin(y(idy)) / (x(idx)*y(idy));
    %z(idx,idy) = NaN;^
    %z(idx,idy) = sqrt(((2*(x(idx))) - (y(idy))));
    %10
      a = (x(idx))^2; % esto es "x" al cuadrado
      b = (y(idy))^2; % esto es "y" al cuadrado
      z(idx,idy) = (a-b)^2;


   end
end
hold on
xlabel('Eje-X')
ylabel('Eje-Y')
hold off
 surf(x, y, z)

