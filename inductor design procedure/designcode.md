```matlab



%design for Kool Mu 77337
%AL_nominal=68, L=3, I_e=32.4, I=23.

AL=AL_nominal-AL_nominal*0.08;   %inductance factor
N=sqrt(L*10^6/AL);   %number of turns without load
H=N*I/I_e; %DC bias,   I_e is path length in cm
RO=1-H*1.248e-03-(H^2)*2.020e-05+(H^3)*8.354e-08-(H^4)*9.503e-11;  %percentage rolloff formula
N_new=N/RO;
Hnew=N_new*I/I_e;
ROnew = 1-Hnew*1.248e-03-(Hnew^2)*2.020e-05+(Hnew^3)*8.354e-08-(Hnew^4)*9.503e-11;
ALnew=AL*ROnew;
L_new=(N_new^2)*ALnew/1000;

%AC loss for Kool Mu 77337
Hmax=(224*(23+6.5))/32.4;
Hmin=(224*(23-6.5))/32.4;
Bmax=sqrt((5.868e-05+Hmax*9.362e-05+(Hmax^2)*9.011e-06)/(1-Hmax*3.682e-04+(Hmax^2)*8.747e-06));
Bmin=sqrt((5.868e-05+Hmin*9.362e-05+(Hmin^2)*9.011e-06)/(1-Hmin*3.682e-04+(Hmin^2)*8.747e-06));
Bpk=(Bmax-Bmin)/2;
Pl=120*(Bpk^2.09)*(0.3)^1.46;
Pcore=Pl*32.4*6.78;


%design for High Flux 58337 (mH)
%AL_nominal=68, L=3, I_e=32.4, I=23

AL=AL_nominal-AL_nominal*0.08;   %inductance factor
N=sqrt(L*10^6/AL);   %number of turns without load
H=N*I/I_e; %DC bias,   I_e is path length in cm
RO=1-H*8.078e-05-(H^2)*1.111e-05+(H^3)*2.344e-08-(H^4)*1.392e-11;
N_new=N/RO;
Hnew=N_new*I/I_e;
ROnew = 1-Hnew*8.078e-05-(Hnew^2)*1.111e-05+(Hnew^3)*2.344e-08-(Hnew^4)*1.392e-11;
ALnew=AL*ROnew;
L_new=(N_new^2)*ALnew/1000;

%AC loss for High Flux 58337 (mW)
Hmax=(224*(23+6.5))/32.4;
Hmin=(224*(23-6.5))/32.4;
Bmax=sqrt((-4.067e-02+Hmax*1.637e-02+(Hmax^2)*3.742e-04)/(1+Hmax*5.316e-02+(Hmax^2)*3.413e-04));
Bmin=sqrt((-4.067e-02+Hmin*1.637e-02+(Hmin^2)*3.742e-04)/(1+Hmin*5.316e-02+(Hmin^2)*3.413e-04));
Bpk=(Bmax-Bmin)/2;
Pl=374.9*(Bpk^2.21)*(0.3)^1.49;
Pcore=Pl*32.4*6.78;

%winding loss for High Flux 58337 (W)
WF=N_new*0.0702/47.10;
R=0.15*N_new*0.00260;
Pwinding=R*I^2;
T=((Pwinding*1000+13)/650)^0.833;

%leakage inductance (uH)
Lleak=(0.292*(Nnew^1.065)*678)/324;


%new inductor design 20kHz, 150uH, 55 A DC, 10 A AC
%Design for MPP 55102

AL_nominal=48;
L=0.15;
I_e=24.3;
I=55;

AL=AL_nominal-AL_nominal*0.08;   %inductance factor
N=sqrt(L*10^6/AL);   %number of turns without load
H=N*I/I_e; %DC bias,   I_e is path length in cm
RO=9.985e-01+H*1.142e-03-(H^2)*3.762e-05+(H^3)*1.222e-07-(H^4)*1.218e-10;
N_new=N/RO;
Hnew=N_new*I/I_e;
ROnew = 9.985e-01+Hnew*1.142e-03-(Hnew^2)*3.762e-05+(Hnew^3)*1.222e-07-(Hnew^4)*1.218e-10;
ALnew=AL*ROnew;
L_new=(N_new^2)*ALnew/1000000; % (mH)

%AC loss for MPP 55102 (mW)
Hmax=(224*(23+6.5))/32.4;
Hmin=(224*(23-6.5))/32.4;
Bmax=sqrt((-4.067e-02+Hmax*1.637e-02+(Hmax^2)*3.742e-04)/(1+Hmax*5.316e-02+(Hmax^2)*3.413e-04));
Bmin=sqrt((-4.067e-02+Hmin*1.637e-02+(Hmin^2)*3.742e-04)/(1+Hmin*5.316e-02+(Hmin^2)*3.413e-04));
Bpk=(Bmax-Bmin)/2;
Pl=70.83*(Bpk^2.34)*(10)^1.65;
Pcore=Pl*32.4*6.78;

%winding loss for MPP 55102 (W)
WF=N_new*0.0702/47.10;
R=0.15*N_new*0.00260;
Pwinding=R*I^2;
T=((Pwinding*1000+13)/650)^0.833;

%leakage inductance (uH)
Lleak=(0.292*(Nnew^1.065)*678)/324;


 %litz wire design
S=sqrt((1.72e-08)/(20000*(4e-07)*(pi^2)));
Ne=(318*(S^2)*57.2)/79;
wflitz=(Ne*N_new*pi*0.160^2)/2470;
Nbundle=(4*S^2)/(0.16^2);
Area=pi*60*0.08^2;
```
