function [Value,ValueDE] = Fuzzyfication(Crisp,universes,DE)

% Find values of Crisp in the universe

Value = [];
ValueDE = [];

for i = 1 : length(universes)
    % first the posicion is evaluated in values of 1
if Crisp <= universes{1,1}(1,2)
    Value1 = [1 1];
    Value = [Value; Value1];
    break
elseif  Crisp >= universes{7,1}(1,2)
    Value1 = [1 7];
    Value = [Value; Value1];
    break
elseif  (Crisp >= universes{4,1}(1,2) && Crisp <= universes{4,1}(1,3))
    Value1 = [1 4];
    Value = [Value; Value1];
  break

    % Then the posicion is evaluated in values ~ 1
elseif (Crisp >= universes{i,1}(1,1) && Crisp <= universes{i,1}(1,2))
    % here the position is calculed from the Recta ecuation
    Value1 = [OutputY(Crisp,universes{i,1}(:,1),universes{i,1}(:,2)) i];
    Value = [Value; Value1];
            
elseif (Crisp >= universes{i,1}(1,2) && Crisp <= universes{i,1}(1,3))
    % here the position is calculed from the Recta ecuation
    Value1 =[OutputY(Crisp,universes{i,1}(:,2),universes{i,1}(:,3)) i];
    Value = [Value; Value1];
  
else    
end
end
if (Crisp >= universes{4,1}(1,3) && Crisp <= universes{4,1}(1,4))
    Value1 =[OutputY(Crisp,universes{4,1}(:,3),universes{4,1}(:,4)) 4];
    Value = [Value; Value1];
end

% find the values of output DE
clear Value1;
for i = 1 : 5
    % first the posicion is evaluated in values of 1
if DE <= universes{1,2}(1,2) 
    Value1 = [1 1];
     ValueDE = [ValueDE; Value1];
    break
elseif DE >= universes{5,2}(1,2)
     Value1 = [1 5];
      ValueDE = [ValueDE; Value1];
    break
elseif (DE >= universes{3,2}(1,2) && DE <= universes{3,2}(1,3))
     Value1 = [1 3];
      ValueDE = [ValueDE; Value1];
    break   
    % Then the posicion is evaluated in values ~ 1
elseif (DE >= universes{i,2}(1,1) && DE <= universes{i,2}(1,2))
    % here the position is calculed from the Recta ecuation
    Value1 = [OutputY(DE,universes{i,2}(:,1),universes{i,2}(:,2)) i];
    ValueDE = [ValueDE; Value1]; 
  % here the position is calculed from the Recta ecuation
    
elseif (DE >= universes{i,2}(1,2) && DE <= universes{i,2}(1,3))
    % here the position is calculed from the Recta ecuation
    Value1 = [OutputY(DE,universes{i,2}(:,2),universes{i,2}(:,3)) i];
    ValueDE = [ValueDE; Value1];
else 
    
end

end
if (DE >= universes{3,2}(1,3) && DE <= universes{3,2}(1,4))
    Value1 = [OutputY(DE,universes{3,2}(:,3),universes{3,2}(:,4)) 3];
    ValueDE = [ValueDE; Value1];
end

end