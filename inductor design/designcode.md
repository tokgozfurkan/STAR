function [N_new]= inductor(AL_nominal,L,I_e,I)

AL=AL_nominal-AL_nominal*0.08; %inductance factor
N=sqrt(L*10^6/AL); %number of turns without load
H=N*I/I_e; %DC bias, I_e is path length in cm
RO = 1- 1.248e-03*H- 2.020e-05*H^2+ 8.354e-08*H^3- 9.503e-11*H^4; %percentage rolloff formula
L_new=L*RO; 
N_new=N/RO;
H_new=N_new*I/I_e;

end