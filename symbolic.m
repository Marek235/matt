
clc
clear all
close all
syms s
syms z
syms Kp
syms Ki
syms Kd
syms Tp
%Tp=0.001;

%G_R = Kp + Ki/s + Kd*s
G_R = (Kp*s+Ki+Kd*s^2) / s;
G = 3 / (4*s^2 + 2*s + 1);
G_otw = G_R * G;
pretty(G_otw);

G_otwarty = (3*Kd*s^2+3*Kp*s+Ki) / (4*s^3+2*s^2+s)
s = Tp/(z-1)
G_otwarty = (3*Kd*s^2+3*Kp*s+Ki) / (4*s^3+2*s^2+s)
%s=(2*(1-z^-1)) / (Tp*(1+z^-1))
%pretty(s)



