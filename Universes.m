function universes = Universes(a)

universes = {};

MN = [-(a+50) -a -((a/3)*2); 1 1 0];
N  = [-a -((a/3)*2) -((a/3)); 0 1 0];
PN = [-((a/3)*2) -((a/3)) -(0); 0 1 0];
Z  = [-(30) -(10) (10) (30); 0 1 1 0];
PP = [(0) ((a/3)) ((a/3)*2);0 1 0];
P  = [((a/3)) ((a/3)*2) a; 0 1 0];
MP = [((a/3)*2) a a+50; 0 1 1];

%second universe
c = 15;
MND = [-c-1 -c -c/2; 1 1 0];
ND  = [-c -c/2 0; 0 1 0];
ZD  = [-c/2 -2 2 c/2; 0 1 1 0];
PD  = [0 c/2 c; 0 1 0];
MPD = [c/2 c c+1; 0 1 1];

%third universe

b = 1000;

RG = [-(b+100) -b -((b/3)*2); 1 1 0];
RM  = [-b -((b/3)*2) -((b/3)); 0 1 0];
RP = [-((b/3)*2) -((b/3)) -(0); 0 1 0];
NS  = [-(20) -(10) (10) (20); 0 1 1 0];
SP = [(0) ((b/3)) ((b/3)*2);0 1 0];
SM  = [((b/3)) ((b/3)*2) b; 0 1 0];
SG = [((b/3)*2) b b+100; 0 1 1];


universes{1,1} = MN;universes{2,1} = N;universes{3,1} = PN;
universes{4,1} = Z;universes{5,1} = PP;universes{6,1} = P;universes{7,1}=MP;

universes{1,2} = MND;universes{2,2} = ND;universes{3,2} = ZD;
universes{4,2} = PD;universes{5,2} = MPD;

universes{1,3} = RG;universes{2,3} = RM;universes{3,3} = RP;
universes{4,3} = NS;universes{5,3} = SP;universes{6,3} = SM;universes{7,3}=SG;
end