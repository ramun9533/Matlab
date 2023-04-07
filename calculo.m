clear
clc
close all
x = linspace(-10,10,100);
y = linspace(-10,10,100);
z = [];
for idx = 1:length(x)
  for idy = 1:length(y)
    z(idx,idy) = sin(x(idx)) *  sin(y(idy)) / (x(idx)*y(idy));

 end
end
hold on
xlabel('Eje-X')
ylabel('Eje-Y')
hold off
 surf(x, y, z)
