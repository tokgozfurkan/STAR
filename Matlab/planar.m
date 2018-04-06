%% Area product calculation Area_product=(L*Irms*I_peak)/(k*B*J) %%

L=0.05; %mH
I1=10; %A @100 Hz
I2=0.5; %A @50 kHz
Irms=sqrt(I1^2+I2^2); %A
Ipeak=I1+I2/2; %A
k=0.15;
B=0.75; %T
J=4; %A/mm^2
Area_product=(L*Irms*Ipeak)/(k*B*J);

%%Area product of different cores A=Acore*Awinding %%

%%Number of turns N= sqrt((L*l)/(u*Acore)) %%


Acore3007=0.601; %cross section area
Aw3007=1.21*2; %window area since we will use two multiplied by two
l3007=6.56*2; %path length 
A3007=Acore3007*Aw3007; %E core
N3007= sqrt((L*l3007*1000000)/(90*Acore3007*4*pi)); % L mH, l cm, Acore cm^2

Acore4111=1.01; %cross section area
Aw4111=0.254*2.388*2; %window area since we will use two multiplied by two
l4111=8.52*2; %path length 
A4111=Acore4111*Aw4111; %U core
N4111= sqrt((L*l4111*1000000)/(90*Acore4111*4*pi)); % L mH, l cm, Acore cm^2

Acore4119=1.6; %cross section area
Aw4119=0.254*2.388*2; %window area since we will use two multiplied by two
l4119=8.52*2; %path length 
A4119=Acore4119*Aw4119; %U core
N4119= sqrt((L*l4119*1000000)/(90*Acore4119*4*pi)); % L mH, l cm, Acore cm^2

Acore4022=2.37; %cross section area
Aw4022=2.76*2; %window area since we will use two multiplied by two
l4022=9.84*2; %path length 
A4022=Acore4022*Aw4022; %U core
N4022= sqrt((L*l4022*1000000)/(90*Acore4022*4*pi)); % L mH, l cm, Acore cm^2



A1808=0.228*2*1.22; %E core
A2510=0.776*0.385*2; %E core
A4017=2.76*2*1.28; %E core
A3112=1.01*2*0.254*1.422; %U core







N5528= sqrt((800*12.3*2*1000)/(60*3.5*4*pi));
N5527= sqrt((800*16.8*2*1000)/(26*1.72*4*pi));



