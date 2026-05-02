% BLOCK 1 — simple test system
sys1 = tf([1],[1 2]);
figure;
step(sys1);
title('Simple system');

% BLOCK 2 — drone plant (uncontrolled)
plant = tf([1],[1 0 0]);
figure;
step(plant);
title('Uncontrolled drone — unstable');

% BLOCK 3 — add P controller
Kp = 5;
C = tf([Kp],[1]);
sys_closed = feedback(C * plant, 1);
figure;
step(sys_closed, 20);
title('With P controller');

% P only — oscillates
Kp = 5;
Kd = 3;
C = tf([Kd Kp],[1]);
sys_closed = feedback(C * plant, 1);
figure;
step(sys_closed, 20);
title('Block 3 — P+D controller');
grid on;