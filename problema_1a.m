% Definir la función
func = @(x,y) sqrt(abs(2*x-y));

% Definir los rangos para x y y
x = linspace(-1000, 1000, 100);
y = linspace(-1000, 1000, 100);

% Crear una malla de valores para x e y
[X, Y] = meshgrid(x, y);

% Evaluar la función en la malla
Z = func(X, Y);

% Graficar la función
surf(X, Y, Z);

% Etiquetar los ejes y agregar un título
xlabel('x');
ylabel('y');
zlabel('f(x,y)');
title('Gráfico de f(x,y) = sqrt(2x - y)');

