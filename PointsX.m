function [X,count_a,count_b] = PointsX(universes,Resul_a,Resul_b)

if isempty(Resul_b) == 1
b = 0;
a = universes{(Resul_a(1,2)),3};
elseif Resul_b == 0
a = universes{(Resul_a(1,2)),3};
b = 0;
else
a = universes{(Resul_a(1,2)),3};
b = universes{(Resul_b(1,2)),3};
end 
[X,count_a,count_b] = OutputX(a,b,Resul_a,Resul_b);


end