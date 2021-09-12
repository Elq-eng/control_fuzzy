clc, close all, clear all 
%control fuzzy
load('control_Fuzzy.mat')

Flujo = SENSORFLUJO.Data(:,1);
Referencia  = SENSORFLUJO.Data(:,2);
Tiempo = SENSORFLUJO.Time;

figure
plot(Tiempo,Referencia)
hold on
plot(Tiempo,Flujo)

%%
%control cascada
clc, close all, clear all 
load('control_cascada.mat')
Flujo = SENSORFLUJO.Data(:,1);
Referencia  = SENSORFLUJO.Data(:,2);
Tiempo = SENSORFLUJO.Time;

figure
plot(Tiempo,Referengcia)
hold on
plot(Tiempo,Flujo)

