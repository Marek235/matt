% domysla metoda dyskretyzacji to ZOH
clc
clear all
close all
s = tf('s');
Tp = 0.2;
z = tf('z', 0.2)

%{
% Transmitancja regulatora ciągłego
Kp = 0.6;
Ki = 0.25;
Kd = 0.5;

G_R = Kp + Ki/s + Kd*s;
%G_otwarty = (3*Kd*s^2+3*Kp*s+Ki) / (4*s^3+2*s^2+s)
%}

% Transmitancja regulatora dyskretnego
Kp = 0.1;
Ki = 0.09;

G_R = Kp + Ki/(z-1)
G_RT = Kp + (Ki*Tp)/(z-1)
figure; step(G_R);
figure; step(G_RT);

% Transmitancja obiektu
k = 3;
T = 2;
ksi = 0.5;

G = k / (T^2*s^2 + 2*ksi*T*s + 1)
Gz = c2d(G, Tp)
bieguny_ob = eig(G);
%figure; step(G, Gz)

% Transmitancja układu





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% pierdolety

%{
xx=0;
for i=1:10
    xx=xx+1; %koncowe xx=10
end


funkcja(4);

function yy = funkcja(x5)
    yy = 2 * x5;
end
%}



