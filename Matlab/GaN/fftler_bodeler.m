signal=ScopeData1(:,2);                %signal data from simulink
plot(ScopeData1(:,1),signal);
title('Output voltage with updated parameters');
xlabel('Time (s)');
ylabel('Voltage (V)');
sq(1:40000)=0;                        %creating square wave
sq(40001:100000)=275;
sq(100001:140000)=0;
sq(140001:200000)=275;
sq(200001:240000)=0;
sq(240001:300000)=275;
sq(300001:340000)=0;
sq(340001:350001)=275;
noise=signal-transpose(sq);                       
noise_signal=noise(141986:199564);  %time between: 1.4198335e-07-1.994495e-07
noise_t=linspace(141986,199564,57579);
plot(noise_t,noise_signal);
title('Noise signal with updated parameters');
xlabel('Time (s)');
ylabel('Voltage (V)');

%%
%FFT analysis
Fs = 1e11;                    % Sampling frequency                        
L = 57578;                   % Length of signal
Y = fft(noise_signal);
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(0:(L/2))/L;
P1_dB = 20*log10(P1/max(P1));
stem(f,P1/max(P1)) 
title('Single-Sided Amplitude Spectrum of Noise Signal with Decreased Resolution')
xlabel('f(Hz)')
ylabel('|Noise Signal|')
ylim([0 1.1]);


%%
%Bode
