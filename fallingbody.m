% falling_body.m — object falling under gravity
% Save this in: Desktop/aerospace-projects/matlab-scripts/

t = 0:0.1:10;
g = 9.81;
v = g * t;
h = 0.5 * g * t.^2;

figure;
subplot(2,1,1);
plot(t, v, 'b-', 'LineWidth', 1.5);
xlabel('Time (s)'); ylabel('Velocity (m/s)');
title('Falling body — velocity'); grid on;

subplot(2,1,2);
plot(t, h, 'r-', 'LineWidth', 1.5);
xlabel('Time (s)'); ylabel('Distance fallen (m)');
title('Falling body — distance'); grid on;