function [DeltaU,Resul_a,Resul_b] = Rules(Value,ValueDe,universes)

DeltaU  = [];

RG = universes{1,3}; RM = universes{2,3} ; RP = universes{3,3} ;
NS = universes{4,3} ;SP = universes{5,3} ;SM = universes{6,3} ;SG = universes{7,3};

%here posicion are evaluated in each one of the universes 
% first universe (MN) with all second universe 
for K = 1 : size(Value,1)
for g = 1 : length(universes)
for j = 1 : 5
    for i = 1 : size(ValueDe,1)
    if Value(K,2) == g && ValueDe(i,2) == j
    Ymin = min(Value(K,1),ValueDe(i,1));
    f = [Ymin g];
    DeltaU  = [DeltaU;f];  
    end 
    end
end
end
end

if size(DeltaU,1) > 1
    for i = 1 : size(DeltaU,1)-1
        j = 2;
        if DeltaU(i,j) == DeltaU(i+1,j)
          Resul_a  = max(DeltaU(1:2,:));
          Resul_b = max(DeltaU(3:end,:));
          break
        else 
          Resul_a  = DeltaU(1,:);
          Resul_b = DeltaU(2,:);
        end 
    end
    
else
    Resul_a  = DeltaU;
    Resul_b = 0;
end


 end