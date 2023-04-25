
clc
clear all
close all
s = tf('s');
Tp = 0.2;
z=tf('z', Tp);

n = 200;
wej = 1;
uchyb = wej;

for i=1:n
    ster(i) = fun_reg(uchyb);
    wyj(i) = funkcja(ster(i));
    uchyb = wej - wyj(i);
end



figure
plot(1:n, wyj)
%hold on
%plot(1:n, ster)

