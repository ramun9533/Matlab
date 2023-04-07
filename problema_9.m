clear
clc
close all
x = linspace(-10,10,100);
y = linspace(-10,10,100);
z = [];
%hold on
for idx = 1:length(x)
  for idy = 1:length(y)
    %z(idx,idy) = sin(x(idx)) *  sin(y(idy)) / (x(idx)*y(idy));
    %z(idx,idy) = NaN;^
    %z(idx,idy) = sqrt(((2*(x(idx))) - (y(idy))));
    %10
     a = (x(idx)); % esto es "x" al cuadrado
      b = (y(idy)); % esto es "y" al cuadrado
      %c = sqrt((y(idy)) - a);
      %d = (1-b);

      c = (abs(a));
      d = (abs(b));
      %c = sqrt(16 - a - b );
      %d = sqrt(y(idy));
      z(idx,idy) = sin(c + d);


   end
end

%xlabel('Eje-X')
%ylabel('Eje-Y')
%hold off
 surf(x, y, z)

