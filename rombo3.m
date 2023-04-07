% Definimos los puntos del rombo
p1 = [0, 1];
p2 = [-1, 0];
p3 = [0, -1];
p4 = [1, 0];

% Definimos el radio del círculo
r = 0.5;

% Dibujamos el rombo
plot([p1(1), p2(1), p3(1), p4(1), p1(1)], [p1(2), p2(2), p3(2), p4(2), p1(2)], 'LineWidth', 2);

% Definimos el ángulo inicial del círculo
theta = 0;
hold on
% Mientras el ángulo sea menor que 2*pi, dibujamos puntos en el círculo
for theta = 0:0.1:2*pi
    % Calculamos las coordenadas del punto en el perímetro del círculo
    x = p1(1) + r*cos(theta);
    y = p1(2) + r*sin(theta);

    % Dibujamos el punto
    plot(x, y, 'ro', 'MarkerSize', 5);

    % Aumentamos el ángulo en un pequeño incremento
    theta = theta + 0.01;

    % Esperamos un poco antes de dibujar el siguiente punto
    pause(0.01);

    % Limpiamos la figura
    clf;

    % Dibujamos el rombo de nuevo
    plot([p1(1), p2(1), p3(1), p4(1), p1(1)], [p1(2), p2(2), p3(2), p4(2), p1(2)], 'LineWidth', 2);
end

