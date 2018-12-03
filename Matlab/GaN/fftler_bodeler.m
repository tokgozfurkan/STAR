signal=ScopeData1(:,2);                %signal data from simulink
sqt=0:5e-13:3.5e-06;                   %creating square wave
f=1e06;
sq=400*0.5*(square(2*pi*f*sqt)+1);
sq=transpose(sq);
sq(1:1000000)=0;
sq(1000001:2000001)=400;
sq(2000001:3000001)=0;
noise=signal-sq;                       
noise_signal=noise(1004870:1.985e06);  %time between: 5.02435e-07-9.925e-07
%%
%FFT analysis
Fs = 2e12;                    % Sampling frequency                        
L = 980130;                   % Length of signal
Y = fft(noise_signal);
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(0:(L/2))/L;
stem(f,P1/max(P1)) 
title('Single-Sided Amplitude Spectrum of Noise Signal')
xlabel('f(Hz)')
ylabel('|Noise Signal|')
ylim([0,1.1]);

%%
%Bode
