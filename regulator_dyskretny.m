

clc
clear all
close all
s = tf('s');
Tp = 0.2;
z=tf('z', Tp);

n = 100;
for i=1:n
    lista(i) = fun_reg(1); %%%
end


figure
plot(1:n,lista)


%H = (0.1*z-0.082) / (z-1)
H = (0.1*z-0.082) / (z-1)
figure; step(H,20);

