% simulacion de la plata
clc,close all,clear all
%tf of the plant
s = tf('s');
T = 0.1;
GsR = 0.02171/(5.033*s + 1);
GcR = (-0.0217*s + 0.02123) / (5.033*s^2 + 5.921*s + 0.9778);
% function in Z 
GzR = c2d(GsR,T,'zoh');
GzcR = c2d(GcR,T,'zoh');

%inicialization of variables
sensor = 0 ;
Ref = 250;
Error  = 0 ;
De = 0;
motor  = 0;
Ua = 0;
Error1 = 0;
Sensor = [];
i_2 = [];
Uk_1 = 0;
sensor_1 = 0;

for i = 1 : 500
Error =  Ref - sensor; 
De = Error - Error1;
Ua = FuzzyControl(Error,De);
pause(0.3);
Uk = Uk_1 + (Ua);
Uk_1 = Uk;
sensor = 0.0004271*Uk_1 + 0.9803*sensor_1;
Error1 = Error;
sensor_1 = sensor;
Sensor = [Sensor sensor_1];
i_1 = i;
i_2= [i_2 i_1];
motor = Uk;
close all
end 
figure 
plot(i_2,Sensor)
