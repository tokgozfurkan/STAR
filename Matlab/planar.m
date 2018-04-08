%% Parameters %%
 
L=0.05; %mH
I1=10; %A @100 Hz
I2=0.5; %A @50 kHz
Irms=sqrt(I1^2+I2^2); %A
Ipeak=I1+I2/2; %A
k=0.15;
B=0.75; %T
J=4; %A/mm^2

% Area product calculation Area_product=(L*Irms*I_peak)/(k*B*J)
Area_product=(L*Irms*Ipeak)/(k*B*J);

%Area product of 00K4022E090 A=Acore*Awinding 
Acore4022=2.37; %cross section area
Aw4022=2.76*2; %window area since we will use two multiplied by two
l4022=9.84*2; %path length 
A4022=Acore4022*Aw4022; %U core

%Number of turns N= sqrt((L*l)/(u*Acore)) 
N4022= sqrt((L*l4022*1000000)/(90*Acore4022*4*pi)); % L mH, l cm, Acore cm^2

% core loss calculation 

Hmax50=(N4022*I2)/(2*l4022);
Hmax100=(N4022*I1)/(2*l4022);

% magnetization curve for Kool Mu u=90 
% @50 kHz
B50=((4.182e-02+2.99e-02*Hmax50+7.826e-04*(Hmax50)^2)/(1+6.542e-02*Hmax50+7.669e-04*(Hmax50)^2))^1.569;
% @100 Hz
B100=((4.182e-02+2.99e-02*Hmax100+7.826e-04*(Hmax100)^2)/(1+6.542e-02*Hmax100+7.669e-04*(Hmax100)^2))^1.569;

% Core loss density
P50=146.81*(B50^2.022)*50^1.33; %mW/cm^3
P100=338.51*(B100^2.022)*0.05^1.05; %mW/cm^3
Ptotal=P50+P100; %mW/cm^3
Pcore=Ptotal*l4022*Acore4022; %mW
%% Core 4022 u=20
L=0.05; %mH
I1=10; %A @100 Hz
I2=0.5; %A @50 kHz
Irms=sqrt(I1^2+I2^2); %A
Ipeak=I1+I2/2; %A
k=0.15;
B=0.75; %T
J=4; %A/mm^2

% Area product calculation Area_product=(L*Irms*I_peak)/(k*B*J)
Area_product=(L*Irms*Ipeak)/(k*B*J);

%Area product of 00K4022E090 A=Acore*Awinding 
Acore4022=2.37; %cross section area
Aw4022=2.76*2; %window area since we will use two multiplied by two
l4022=9.84*2; %path length 
A4022=Acore4022*Aw4022; %U core

%Number of turns N= sqrt((L*l)/(u*Acore)) 
N4022= sqrt((L*l4022*1000000)/(26*Acore4022*4*pi)); % L mH, l cm, Acore cm^2

% core loss calculation 

Hmax50=(N4022*I2)/(2*l4022);
Hmax100=(N4022*I1)/(2*l4022);

% magnetization curve for Kool Mu u=26 
% @50 kHz
B50=((1.008e-01+1.452e-02*Hmax50+7.846e-04*(Hmax50)^2)/(1+1.035e-01*Hmax50+7.573e-04*(Hmax50)^2))^1.754;
% @100 Hz
B100=((1.008e-01+1.452e-02*Hmax100+7.846e-04*(Hmax100)^2)/(1+1.035e-01*Hmax100+7.573e-04*(Hmax100)^2))^1.754;

% Core loss density
P50=146.81*(B50^2.022)*50^1.33; %mW/cm^3
P100=338.51*(B100^2.022)*0.05^1.05; %mW/cm^3
Ptotal=P50+P100; %mW/cm^3
Pcore=Ptotal*l4022*Acore4022; %mW
%% Core 3112

L=0.05; %mH
I1=10; %A @100 Hz
I2=0.5; %A @50 kHz
Irms=sqrt(I1^2+I2^2); %A
Ipeak=I1+I2/2; %A
k=0.15;
B=0.75; %T
J=4; %A/mm^2

Acore3112=1.01; %cross section area
Aw3112=0.254*1.422*2; %window area since we will use two multiplied by two
l3112=6.56*2; %path length 
A3112=Acore3112*Aw3112; %U core
N3112= sqrt((L*l3112*1000000)/(40*Acore3112*4*pi)); % L mH, l cm, Acore cm^2

Hmax50=(N3112*I2)/(2*l3112);
Hmax100=(N3112*I1)/(2*l3112);

B50=((5.18e-02+2.132e-02*Hmax50+7.941e-04*(Hmax50)^2)/(1+8.447e-02*Hmax50+7.652e-04*(Hmax50)^2))^1.756;
B100=((5.18e-02+2.132e-02*Hmax100+7.941e-04*(Hmax100)^2)/(1+8.447e-02*Hmax100+7.652e-04*(Hmax100)^2))^1.756;

% Core loss density
P50=45.48*(B50^1.774)*50^1.46; %mW/cm^3
P100=170.17*(B100^1.774)*0.05^1.03; %mW/cm^3
Ptotal=P50+P100; %mW/cm^3
Pcore=Ptotal*l3112*Acore3112; %mW

%% Core 4111
L=0.05; %mH
I1=10; %A @100 Hz
I2=0.5; %A @50 kHz
Irms=sqrt(I1^2+I2^2); %A
Ipeak=I1+I2/2; %A
k=0.15;
B=0.75; %T
J=4; %A/mm^2

Acore4111=1.01; %cross section area
Aw4111=0.254*2.388*2; %window area since we will use two multiplied by two
l4111=8.52*2; %path length 
A4111=Acore4111*Aw4111; %U core
N4111= sqrt((L*l4111*1000000)/(40*Acore4111*4*pi)); % L mH, l cm, Acore cm^2

Hmax50=(N4111*I2)/(2*l4111);
Hmax100=(N4111*I1)/(2*l4111);

B50=((5.18e-02+2.132e-02*Hmax50+7.941e-04*(Hmax50)^2)/(1+8.447e-02*Hmax50+7.652e-04*(Hmax50)^2))^1.756;
B100=((5.18e-02+2.132e-02*Hmax100+7.941e-04*(Hmax100)^2)/(1+8.447e-02*Hmax100+7.652e-04*(Hmax100)^2))^1.756;

P50=45.48*(B50^1.774)*50^1.46; %mW/cm^3
P100=170.17*(B100^1.774)*0.05^1.03; %mW/cm^3
Ptotal=P50+P100; %mW/cm^3
Pcore=Ptotal*l4111*Acore4111; %mW

%% 4317 u=90
L=0.05; %mH
I1=10; %A @100 Hz
I2=0.5; %A @50 kHz
Irms=sqrt(I1^2+I2^2); %A
Ipeak=I1+I2/2; %A
k=0.15;
B=0.75; %T
J=4; %A/mm^2

Acore4317=1.52; %cross section area
Aw4317=1.62*2; %window area since we will use two multiplied by two
l4317=7.75*2; %path length 
A4317=Acore4317*Aw4317; %U core
N4317= sqrt((L*l4317*1000000)/(90*Acore4317*4*pi)); % L mH, l cm, Acore cm^2

Hmax50=(N4317*I2)/(2*l4317);
Hmax100=(N4317*I1)/(2*l4317);

B50=((4.182e-02+2.99e-02*Hmax50+7.826e-04*(Hmax50)^2)/(1+6.542e-02*Hmax50+7.669e-04*(Hmax50)^2))^1.569;
B100=((4.182e-02+2.99e-02*Hmax100+7.826e-04*(Hmax100)^2)/(1+6.542e-02*Hmax100+7.669e-04*(Hmax100)^2))^1.569;

% Core loss density
P50=45.48*(B50^1.774)*50^1.46; %mW/cm^3
P100=170.17*(B100^1.774)*0.05^1.03; %mW/cm^3
Ptotal=P50+P100; %mW/cm^3
Pcore=Ptotal*l4317*Acore4317; %mW

%% 2510 u=90
L=0.05; %mH
I1=10; %A @100 Hz
I2=0.5; %A @50 kHz
Irms=sqrt(I1^2+I2^2); %A
Ipeak=I1+I2/2; %A
k=0.15;
B=0.75; %T
J=4; %A/mm^2

Acore2510=0.385; %cross section area
Aw2510=0.776*2; %window area since we will use two multiplied by two
l2510=4.85*2; %path length 
A2510=Acore2510*Aw2510; %U core
N2510= sqrt((L*l2510*1000000)/(90*Acore2510*4*pi)); % L mH, l cm, Acore cm^2

Hmax50=(N2510*I2)/(2*l2510);
Hmax100=(N2510*I1)/(2*l2510);

B50=((4.182e-02+2.99e-02*Hmax50+7.826e-04*(Hmax50)^2)/(1+6.542e-02*Hmax50+7.669e-04*(Hmax50)^2))^1.569;
B100=((4.182e-02+2.99e-02*Hmax100+7.826e-04*(Hmax100)^2)/(1+6.542e-02*Hmax100+7.669e-04*(Hmax100)^2))^1.569;

% Core loss density
P50=45.48*(B50^1.774)*50^1.46; %mW/cm^3
P100=170.17*(B100^1.774)*0.05^1.03; %mW/cm^3
Ptotal=P50+P100; %mW/cm^3
Pcore=Ptotal*l2510*Acore2510; %mW

%% 1808 u=90
L=0.05; %mH
I1=10; %A @100 Hz
I2=0.5; %A @50 kHz
Irms=sqrt(I1^2+I2^2); %A
Ipeak=I1+I2/2; %A
k=0.15;
B=0.75; %T
J=4; %A/mm^2

Acore1808=0.228; %cross section area
Aw1808=1.21*2; %window area since we will use two multiplied by two
l1808=4.01*2; %path length 
A1808=Acore1808*Aw1808; %U core
N1808= sqrt((L*l1808*1000000)/(90*Acore1808*4*pi)); % L mH, l cm, Acore cm^2

Hmax50=(N1808*I2)/(2*l1808);
Hmax100=(N1808*I1)/(2*l1808);

B50=((4.182e-02+2.99e-02*Hmax50+7.826e-04*(Hmax50)^2)/(1+6.542e-02*Hmax50+7.669e-04*(Hmax50)^2))^1.569;
B100=((4.182e-02+2.99e-02*Hmax100+7.826e-04*(Hmax100)^2)/(1+6.542e-02*Hmax100+7.669e-04*(Hmax100)^2))^1.569;

% Core loss density
P50=45.48*(B50^1.774)*50^1.46; %mW/cm^3
P100=170.17*(B100^1.774)*0.05^1.03; %mW/cm^3
Ptotal=P50+P100; %mW/cm^3
Pcore=Ptotal*l1808*Acore1808; %mW

%% Other cores %%
% A1808=0.228*2*1.22; %E core
% A2510=0.776*0.385*2; %E core
% A4017=2.76*2*1.28; %E core
% A3112=1.01*2*0.254*1.422; %U core

% Acore3007=0.601; %cross section area
% Aw3007=1.21*2; %window area since we will use two multiplied by two
% l3007=6.56*2; %path length 
% A3007=Acore3007*Aw3007; %E core
% N3007= sqrt((L*l3007*1000000)/(90*Acore3007*4*pi)); % L mH, l cm, Acore cm^2

% Acore4111=1.01; %cross section area
% Aw4111=0.254*2.388*2; %window area since we will use two multiplied by two
% l4111=8.52*2; %path length 
% A4111=Acore4111*Aw4111; %U core
% N4111= sqrt((L*l4111*1000000)/(90*Acore4111*4*pi)); % L mH, l cm, Acore cm^2

% Acore4119=1.6; %cross section area
% Aw4119=0.254*2.388*2; %window area since we will use two multiplied by two
% l4119=8.52*2; %path length 
% A4119=Acore4119*Aw4119; %U core
% N4119= sqrt((L*l4119*1000000)/(90*Acore4119*4*pi)); % L mH, l cm, Acore cm^2

% Acore3112=1.01; %cross section area
% Aw3112=0.254*1.422*2; %window area since we will use two multiplied by two
% l3112=6.56*2; %path length 
% A3112=Acore3112*Aw3112; %U core
% N3112= sqrt((L*l3112*1000000)/(90*Acore3112*4*pi)); % L mH, l cm, Acore cm^2








