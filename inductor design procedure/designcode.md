```matlab

%design for Kool Mu 77337
%AL_nominal=68, L=3, I_e=32.4, I=23.

AL=AL_nominal-AL_nominal*0.08;   %inductance factor
N=sqrt(L*10^6/AL);   %number of turns without load
H=N*I/I_e; %DC bias,   I_e is path length in cm
RO = 1/(0.01+(7.979e-07)*(H^1.819));   %percentage rolloff formula
N_new=N/(RO/100);
Hnew=N_new*I/I_e;
ROnew = 1/(0.01+(7.979e-07)*(Hnew^1.819));;
ALnew=AL*ROnew/100;
L_new=(N_new^2)*ALnew/1000;

%AC loss for Kool Mu 77337
Hmax=(224*(23+6.5))/32.4;
Hmin=(224*(23-6.5))/32.4;
Bmax=sqrt((5.868e-05+Hmax*9.362e-05+(Hmax^2)*9.011e-06)/(1-Hmax*3.682e-04+(Hmax^2)*8.747e-06));
Bmin=sqrt((5.868e-05+Hmin*9.362e-05+(Hmin^2)*9.011e-06)/(1-Hmin*3.682e-04+(Hmin^2)*8.747e-06));
Bpk=(Bmax-Bmin)/2;
Pl=120*(Bpk^2.09)*(0.3)^1.46;
Pcore=Pl*32.4*6.78;


%design for High Flux 58337
%AL_nominal=68, L=3, I_e=32.4, I=23

AL=AL_nominal-AL_nominal*0.08;   %inductance factor
N=sqrt(L*10^6/AL);   %number of turns without load
H=N*I/I_e; %DC bias,   I_e is path length in cm
RO=1/(0.01+(7.178e-08)*(H^2.069));
N_new=N/(RO/100);
Hnew=N_new*I/I_e;
ROnew = (1/(0.01+(7.178e-08)*(Hnew^2.069)));
ALnew=AL*ROnew/100;
L_new=(N_new^2)*ALnew/1000;

%AC loss for High Flux 58337
Hmax=(224*(23+6.5))/32.4;
Hmin=(224*(23-6.5))/32.4;
Bmax=sqrt((-4.067e-02+Hmax*1.637e-02+(Hmax^2)*3.742e-04)/(1+Hmax*5.316e-02+(Hmax^2)*3.413e-04));
Bmin=sqrt((-4.067e-02+Hmin*1.637e-02+(Hmin^2)*3.742e-04)/(1+Hmin*5.316e-02+(Hmin^2)*3.413e-04));
Bpk=(Bmax-Bmin)/2;
Pl=374.9*(Bpk^2.21)*(0.3)^1.49;
Pcore=Pl*32.4*6.78;

%winding loss for High Flux 58337
WF=N_new*0.0702/47.10;
R=0.15*N_new*0.00260;
Pw=R*I^2;
T=((Pw*1000+13)/319)^0.833;



end
```
