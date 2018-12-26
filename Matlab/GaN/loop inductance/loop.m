%Plotting output signals

sq(1:80000)=0;                        %creating square wave
sq(80001:200000)=275;
sq(200001:280000)=0;
sq(280001:400000)=275;
sq(400001:480000)=0;
sq(480001:600000)=275;
sq(600001:680000)=0;
sq(680001:700001)=275;

thirty_noise=thirty(:,2)-transpose(sq); 
plot(thirty_noise);
thirty_noise_signal=thirty_noise(283953:399814);  
noise_t_thirty=linspace(283953*3.5e-06/700000,399814*3.5e-06/700000,115862);

%Plotting noise signals
plot(noise_t_thirty,thirty_noise_signal);
title('Noise signal with 30 nH loop inductance');
xlabel('Time (s)');
ylabel('Voltage (V)');
xlim([283953*3.5e-06/700000 399814*3.5e-06/700000]);

thirty_noise_signal=[noise_t_thirty thirty_noise_signal];
%%
%FFT analysis
Fs = 2e11;                                   % Sampling frequency                        

%For 30 nH
[P1_thirty,f_thirty] = noise_fft(Fs,thirty_noise_signal);

%Plotting

plot(f_thirty,P1_thirty/max(P1_thirty),'LineWidth',2);
title('Single-Sided Amplitude Spectrum of Noise Signals with 30 nH Loop Inductances')
xlabel('f(Hz)')
ylabel('|Noise Signal|')
ylim([0 1.1]);
xlim([0 3e08]);


%%
%Bode
fcut=1e07;
LC=1/((2*pi*fcut)^2);
opts = bodeoptions('cstprefs');
opts.FreqUnits = 'Hz';
opts.PhaseVisible = 'off';
for damp=0.1:0.5:3.1
    filter_tf=tf([1/LC],[1 2*damp*sqrt(1/LC) 1/LC]);
    bode(filter_tf,opts);
    set(findall(gcf,'type','line'),'linewidth',2)
    hold on
end
hleg=legend(findall(gcf,'type','axes','visible','on'),'0.1','0.6','1.1','1.6','2.1','2.6','3.1');
htitle = get(hleg,'Title');
set(htitle,'String','Damping Factor')
grid on
hold off
    
    
    
    




