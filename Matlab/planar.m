%% Area product calculation Area_product=(L*I*I_peak)/(0.15*B*J) %%

Area_product=(0.005*10*10.5*sqrt(2))/(0.15*0.75*4);

%%Area product of different cores A=Acore*Awinding %%
A1808=0.228*2*1.22; %E core
A2510=0.776*0.385*2; %E core
A3007=1.21*0.601*2; %E core
A4017=2.76*2*1.28; %E core
A3112=1.01*2*0.254*1.422; %U core
A4111=1.01*2*0.254*2.388;
A4119=1.6*2*0.254*2.388;

%%Number of turns N= sqrt((L*l)/(u*Acore)) %%

N4017= sqrt((50*9.84*2*1000)/(90*1.28*4*pi)); % L uH, l cm, Acore cm^2
N4111= sqrt((50*8.52*2*1000)/(90*1.01*4*pi));
N4119= sqrt((50*8.52*2*1000)/(90*1.6*4*pi));

N5528= sqrt((800*12.3*2*1000)/(60*3.5*4*pi));
N5527= sqrt((800*16.8*2*1000)/(26*1.72*4*pi));



