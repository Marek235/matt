
clc
clear all
close all
s = tf('s');
Tp = 0.2;
z=tf('z', Tp);

n = 200;
for i=1:n
    lista(i) = funkcja(1);
    ytt(i)=lista(i);
end


figure
plot(1:n,lista)
figure
plot(1:n,ytt)


H = (0.0145*z + 0.01402) / (z^2 - 1.895*z + 0.9048)
figure; step(H);









