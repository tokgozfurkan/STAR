%% Parameters %%
 
L=0.05; %mH
I1=10; %rms A @100 Hz
I2=0.5; %rms A @50 kHz
Irms=I1+I2; %A
Ipeak=(I1+I2)*sqrt(2); %A
k=0.15;
B=0.75; %T
J=4; %A/mm^2
%% 4022 u=90
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

Hmax504022=(N4022*I2)/(l4022);
Hmax1004022=(N4022*I1)/(l4022);

% magnetization curve for Kool Mu u=90 
% @50 kHz
B504022=((4.182e-02+2.99e-02*Hmax504022+7.826e-04*(Hmax504022)^2)/(1+6.542e-02*Hmax504022+7.669e-04*(Hmax504022)^2))^1.569;
% @100 Hz
B1004022=((4.182e-02+2.99e-02*Hmax1004022+7.826e-04*(Hmax1004022)^2)/(1+6.542e-02*Hmax1004022+7.669e-04*(Hmax1004022)^2))^1.569;

B504022=N4022*I2*90*pi*4e-05/l4022;
B1004022=N4022*I1*90*pi*4e-05/l4022;
% Core loss density
P504022=146.81*(B504022^2.022)*50^1.33; %mW/cm^3
P1004022=338.51*(B1004022^2.022)*0.1^1.05; %mW/cm^3
Ptotal4022=P504022+P1004022; %mW/cm^3
Pcore4022=Ptotal4022*l4022*Acore4022; %mW

Apcb4022=9.27-4.54;
W4022=Apcb4022/(18*2/3);
Acopper=0.07*15*W4022*7;
J4022=10/Acopper;

%% Core 3112 u=90

Acore3112=1.01; %cross section area
Aw3112=0.254*1.422*2; %window area since we will use two multiplied by two
l3112=6.56*2; %path length 
A3112=Acore3112*Aw3112; %U core
N3112= sqrt((L*l3112*1000000)/(90*Acore3112*4*pi)); % L mH, l cm, Acore cm^2

Hmax503112=(N3112*I2)/(l3112);
Hmax1003112=(N3112*I1)/(l3112);

B503112=((4.182e-02+2.99e-02*Hmax503112+7.826e-04*(Hmax503112)^2)/(1+6.542e-02*Hmax503112+7.669e-04*(Hmax503112)^2))^1.569;
B1003112=((4.182e-02+2.99e-02*Hmax1003112+7.826e-04*(Hmax1003112)^2)/(1+6.542e-02*Hmax1003112+7.669e-04*(Hmax1003112)^2))^1.569;

B503112=N3112*I2*90*pi*4e-05/l3112;
B1003112=N3112*I1*90*pi*4e-05/l3112;
% Core loss density
P503112=45.48*(B503112^1.774)*50^1.46; %mW/cm^3
P1003112=170.17*(B1003112^1.774)*0.1^1.03; %mW/cm^3
Ptotal3112=P503112+P1003112; %mW/cm^3
Pcore3112=Ptotal3112*l3112*Acore3112; %mW

%% Core 4111 u=90

Acore4111=1.01; %cross section area
Aw4111=0.254*2.388*2; %window area since we will use two multiplied by two
l4111=8.52*2; %path length 
A4111=Acore4111*Aw4111; %U core
N4111= sqrt((L*l4111*1000000)/(90*Acore4111*4*pi)); % L mH, l cm, Acore cm^2

Hmax504111=(N4111*I2)/(l4111);
Hmax1004111=(N4111*I1)/(l4111);

B504111=((4.182e-02+2.99e-02*Hmax504111+7.826e-04*(Hmax504111)^2)/(1+6.542e-02*Hmax504111+7.669e-04*(Hmax504111)^2))^1.569;
B1004111=((4.182e-02+2.99e-02*Hmax1004111+7.826e-04*(Hmax1004111)^2)/(1+6.542e-02*Hmax1004111+7.669e-04*(Hmax1004111)^2))^1.569;

P504111=45.48*(B504111^1.774)*50^1.46; %mW/cm^3
P1004111=170.17*(B1004111^1.774)*0.1^1.03; %mW/cm^3
Ptotal4111=P504111+P1004111; %mW/cm^3
Pcore4111=Ptotal4111*l4111*Acore4111; %mW

%% 4317 u=90

Acore4317=1.52; %cross section area
Aw4317=1.62*2; %window area since we will use two multiplied by two
l4317=7.75*2; %path length 
A4317=Acore4317*Aw4317; %U core
N4317= sqrt((L*l4317*1000000)/(90*Acore4317*4*pi)); % L mH, l cm, Acore cm^2

Hmax504317=(N4317*I2)/(l4317);
Hmax1004317=(N4317*I1)/(l4317);

B504317=((4.182e-02+2.99e-02*Hmax504317+7.826e-04*(Hmax504317)^2)/(1+6.542e-02*Hmax504317+7.669e-04*(Hmax504317)^2))^1.569;
B1004317=((4.182e-02+2.99e-02*Hmax1004317+7.826e-04*(Hmax1004317)^2)/(1+6.542e-02*Hmax1004317+7.669e-04*(Hmax1004317)^2))^1.569;

B504317=N4317*I2*90*pi*4e-05/l4317;
B1004317=N4317*I1*90*pi*4e-05/l4317;
% Core loss density
P504317=45.48*(B504317^1.774)*50^1.46; %mW/cm^3
P1004317=170.17*(B1004317^1.774)*0.1^1.03; %mW/cm^3
Ptotal4317=P504317+P1004317; %mW/cm^3
Pcore4317=Ptotal4317*l4317*Acore4317; %mW

%% 2510 u=90

Acore2510=0.385; %cross section area
Aw2510=0.776*2; %window area since we will use two multiplied by two
l2510=4.85*2; %path length 
A2510=Acore2510*Aw2510; %U core
N2510= sqrt((L*l2510*1000000)/(90*Acore2510*4*pi)); % L mH, l cm, Acore cm^2

Hmax502510=(N2510*I2)/(l2510);
Hmax1002510=(N2510*I1)/(l2510);

B502510=((4.182e-02+2.99e-02*Hmax502510+7.826e-04*(Hmax502510)^2)/(1+6.542e-02*Hmax502510+7.669e-04*(Hmax502510)^2))^1.569;
B1002510=((4.182e-02+2.99e-02*Hmax1002510+7.826e-04*(Hmax1002510)^2)/(1+6.542e-02*Hmax1002510+7.669e-04*(Hmax1002510)^2))^1.569;

B502510=N2510*I2*90*pi*4e-05/l2510;
B1002510=N2510*I1*90*pi*4e-05/l2510;
% Core loss density
P502510=45.48*(B502510^1.774)*50^1.46; %mW/cm^3
P1002510=170.17*(B1002510^1.774)*0.1^1.03; %mW/cm^3
Ptotal2510=P502510+P1002510; %mW/cm^3
Pcore2510=Ptotal2510*l2510*Acore2510; %mW

%% 1808 u=90

Acore1808=0.228; %cross section area
Aw1808=1.21*2; %window area since we will use two multiplied by two
l1808=4.01*2; %path length 
A1808=Acore1808*Aw1808; %U core
N1808= sqrt((L*l1808*1000000)/(90*Acore1808*4*pi)); % L mH, l cm, Acore cm^2

Hmax501808=(N1808*I2)/(l1808);
Hmax1001808=(N1808*I1)/(l1808);

B501808=((4.182e-02+2.99e-02*Hmax501808+7.826e-04*(Hmax501808)^2)/(1+6.542e-02*Hmax501808+7.669e-04*(Hmax501808)^2))^1.569;
B1001808=((4.182e-02+2.99e-02*Hmax1001808+7.826e-04*(Hmax1001808)^2)/(1+6.542e-02*Hmax1001808+7.669e-04*(Hmax1001808)^2))^1.569;

% Core loss density
P501808=45.48*(B501808^1.774)*50^1.46; %mW/cm^3
P1001808=170.17*(B1001808^1.774)*0.1^1.03; %mW/cm^3
Ptotal1808=P501808+P1001808; %mW/cm^3
Pcore1808=Ptotal1808*l1808*Acore1808; %mW

%% 5528 u=60

Acore5528=3.5; %cross section area
Aw5528=3.8*2; %window area since we will use two multiplied by two
l5528=12.3*2; %path length 
A5528=Acore5528*Aw5528; %U core
N5528= sqrt((L*l5528*1000000)/(60*Acore5528*4*pi)); % L mH, l cm, Acore cm^2

Hmax505528=(N5528*I2)/(l5528);
Hmax1005528=(N5528*I1)/(l5528);

B505528=((5.214e-02+2.299e-02*Hmax505528+8.537e-04*(Hmax505528)^2)/(1+7.029e-02*Hmax505528+8.183e-04*(Hmax505528)^2))^1.658;
B1005528=((5.214e-02+2.299e-02*Hmax1005528+8.537e-04*(Hmax1005528)^2)/(1+7.029e-02*Hmax1005528+8.183e-04*(Hmax1005528)^2))^1.658;

% Core loss density
P505528=62.65*(B505528^1.781)*50^1.36; %mW/cm^3
P1005528=136.93*(B1005528^1.781)*0.1^1.12; %mW/cm^3
Ptotal5528=P505528+P1005528; %mW/cm^3
Pcore5528=Ptotal5528*l5528*Acore5528; %mW



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


x = categorical({'11808','22510','33112','44111','54317','64022'});
t=[A1808 A2510 A3112 A4111 A4317 A4022];
bar(x,t);
title('Area product of different cores');
w=[N1808 N2510 N3112 N4111 N4317 N4022];
bar(x,w);
title('Number of turns of different cores');
y=[B1001808 B1002510 B1003112 B1004111 B1004317 B1004022];
bar(x,y);
title('Peak flux density @100 Hz for different cores vendor calculation');
z=[Pcore1808 Pcore2510 Pcore3112 Pcore4111 Pcore4317 Pcore4022];
bar(x,z);
title('Core losses of different cores vendor calculation');


Hhm50=32*30/18;
Bhm50=((4.182e-02+2.99e-02*Hhm50+7.826e-04*(Hhm50)^2)/(1+6.542e-02*Hhm50+7.669e-04*(Hhm50)^2))^1.569;
Bhm50k=0.1*Bhm50;
Phm50k=45.48*(Bhm50k^1.774)*50^1.46; %mW/cm^3
Phm50=170.17*(Bhm50^1.774)*0.05^1.03; %mW/cm^3
Ptotalhm=Phm50+Phm50k; %mW/cm^3
Pcorehm=Ptotalhm*18*4.5; %mW

