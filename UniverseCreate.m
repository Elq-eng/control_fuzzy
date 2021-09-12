function [Value,ValueDe] = UniverseCreate(universes,Crisp,De);

%uni_one{1,1}(1,1)
%plot of the first universe

% find values of Fuzzyfication

[Value,ValueDe] = Fuzzyfication(Crisp,universes,De);

universe_one(Value,universes,Crisp);

universe_two(ValueDe,universes,De);




end 