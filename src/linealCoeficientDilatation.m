clear; clc;
format SHORTE;
x=[31.2,33.2,35.2,37.2,39.2,41.2,43.2,45.2,47.2,49.2,51.2,53.2,55.2,57.2];
y=[0,0.05, 0.07,0.1,0.13,0.16,0.18,0.21,0.24,0.25,0.29,0.32,0.33,0.35]./1000;
figure(1);
plot(x,y);
plot(x, y,'k*');
xlabel('Δ Temperatura [°C]');
ylabel('Δ Longitud [m]');
title('Dilatación lineal');

p = polyfit(x,y,1);

y1= polyval(p,x);
caption = sprintf('Y = (1.327E-05)* X - 3.953E-04');


figure(2);
plot(x,y,'*k');
hold on
plot(x, y1,'r');
xlabel('Δ Temperatura [°C]');
ylabel('Δ Longitud [m]');
title('Coeficiente de dilatación lineal α');
text(32,0.00026, caption, 'FontSize', 10, 'Color', 'k', 'FontWeight', 'bold');
hold on;
text(32,0.00023, 'α= 1.33 x10⁻5 ', 'FontSize', 9, 'Color', 'b');

format short;
delta_L= y'.*1000;
delta_T=x';

table(delta_T, delta_L)