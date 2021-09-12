function [Ua] =  FuzzyControl(Error,De)
% process' project Fuzzy control

% Variables Definition
%first universe
a1 = 500;
universes = Universes(a1);
%%
% Fuzzyfication
%Error = 345;
%De = 10;
[Value,ValueDe] = UniverseCreate(universes,Error,De);
%%
% Inference 
[DeltaU,Resul_a,Resul_b]  = Rules(Value,ValueDe,universes);


%% Difuzzyfication 
X = universe_out(universes,Resul_a,Resul_b,Error);
Ua = COG(X,Error);

end

