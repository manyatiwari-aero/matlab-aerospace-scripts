Kp= 10;
c = tf([Kp],[1]);
sys_closed = feedback(c*plant,1);
figure;
step(sys_closed);
title('with p controller')