%% Parameters %%
 
L=0.05; %mH
I1=10; %rms A @100 Hz
I2=0.5; %rms A @50 kHz
Irms=I1+I2; %A
Ipeak=(I1+I2)*sqrt(2); %A
k=0.15;
B=0.45; %T
J=4; %A/mm^2
Area_product=(L*Irms*Ipeak)/(k*B*J);
%% CF2107 
u3808=3000
%Area product of 00K4022E090 A=Acore*Awinding 
Acore3808=0.371; %cross section area
Aw3808=0.203794; %window area since we will use two multiplied by two
l3808=5.14; %path length 
A3808=Acore3808*Aw3808; %U core

%Number of turns N= sqrt((L*l)/(u*Acore)) 
N3808= sqrt((L*l3808*1000000)/(u3808*Acore3808*4*pi)); % L mH, l cm, Acore cm^2
N3808=round(N3808);
%
B503808=N3808*I2*u3808*pi*4e-05/l3808;
B1003808=N3808*I1*u3808*pi*4e-05/l3808;
N3808= sqrt((L*l3808*1000000)/(192*Acore3808*4*pi));
B503808=N3808*I2*192*pi*4e-05/l3808;
B1003808=N3808*I1*192*pi*4e-05/l3808;
%% CF3808 
u3808=3000;
%A=Acore*Awinding 
Acore3808=1.94; %cross section area
Aw3808=5.8; %window area since we will use two multiplied by two
l3808=10.48; %path length 
A3808=Acore3808*Aw3808; %U core

%Number of turns N= sqrt((L*l)/(u*Acore)) 
N3808= sqrt((L*l3808*1000000)/(u3808*Acore3808*4*pi)); % L mH, l cm, Acore cm^2
N3808=round(N3808);
%
B503808=N3808*I2*1.414*u3808*pi*4e-05/l3808;
B1003808=N3808*I1*1.414*u3808*pi*4e-05/l3808;

ud3808=u3808*B^2/B1003808^2; %new u after air gap
lgap3808=(u3808-ud3808)*l3808/(u3808*ud3808); %air gap length in cm

N3808= sqrt((L*l3808*1000000)/(ud3808*Acore3808*4*pi)); %New N
B503808=N3808*I2*1.414*ud3808*pi*4e-05/l3808;
B1003808=N3808*I1*1.414*ud3808*pi*4e-05/l3808;
% For F material
Pdens50=3.5*(50000^1.4)*(B503808^2.5)*0.6112/1000; %mW/cm^3
Pdens100=3.5*(100^1.4)*(B1003808^2.5)*0.6112/1000; %mW/cm^3
Pcore=(Pdens50+Pdens100)*10.2; %mW

