%Plotting output signals
subplot(5,1,1);
plot(ten(:,2));
title('10 nH loop inductance');
subplot(5,1,2);
plot(twenty(:,2));
title('20 nH loop inductance');
subplot(5,1,3);
plot(thirty(:,2));
title('30 nH loop inductance');
subplot(5,1,4);
plot(forty(:,2));
title('40 nH loop inductance');
subplot(5,1,5);
plot(fifty(:,2));
title('50 nH loop inductance');

sq(1:40000)=0;                        %creating square wave
sq(40001:100000)=275;
sq(100001:140000)=0;
sq(140001:200000)=275;
sq(200001:240000)=0;
sq(240001:300000)=275;
sq(300001:340000)=0;
sq(340001:350001)=275;

ten_noise=ten(:,2)-transpose(sq); 
plot(ten_noise);
ten_noise_signal=ten_noise(201438:239871);  
noise_t_ten=linspace(201438,239871,38434);

twenty_noise=twenty(:,2)-transpose(sq); 
plot(twenty_noise);
twenty_noise_signal=twenty_noise(241952:298833);  
noise_t_twenty=linspace(241952,298833,56882);

thirty_noise=thirty(:,2)-transpose(sq); 
plot(thirty_noise);
thirty_noise_signal=thirty_noise(42254:99023);  
noise_t_thirty=linspace(42254,99023,56770);

forty_noise=forty(:,2)-transpose(sq); 
plot(forty_noise);
forty_noise_signal=forty_noise(41914:99935);  
noise_t_forty=linspace(41914,99935,58022);

fifty_noise=fifty(:,2)-transpose(sq); 
plot(fifty_noise);
fifty_noise_signal=fifty_noise(42136:99290); 
noise_t_fifty=linspace(42136,99290,57155);

%Plotting noise signals
subplot(5,1,1);
plot(noise_t_ten,ten_noise_signal);
title('Noise signal with updated parameters');
xlabel('Time (s)');
ylabel('Voltage (V)');

subplot(5,1,2);
plot(noise_t_twenty,twenty_noise_signal);
title('Noise signal with updated parameters');
xlabel('Time (s)');
ylabel('Voltage (V)');

subplot(5,1,3);
plot(noise_t_thirty,thirty_noise_signal);
title('Noise signal with updated parameters');
xlabel('Time (s)');
ylabel('Voltage (V)');

subplot(5,1,4);
plot(noise_t_fifty,fifty_noise_signal);
title('Noise signal with updated parameters');
xlabel('Time (s)');
ylabel('Voltage (V)');

subplot(5,1,5);
plot(noise_t_forty,forty_noise_signal);
title('Noise signal with updated parameters');
xlabel('Time (s)');
ylabel('Voltage (V)');
%%
%FFT analysis
Fs = 1e11;                                   % Sampling frequency                        

%For 10 nH
[P1_ten,f_ten] = noise_fft(Fs,ten_noise_signal);

%For 20 nH
[P1_twenty,f_twenty] = noise_fft(Fs,twenty_noise_signal);

%For 30 nH
[P1_thirty,f_thirty] = noise_fft(Fs,thirty_noise_signal);

%For 40 nH
[P1_forty,f_forty] = noise_fft(Fs,forty_noise_signal);

%For 50 nH
[P1_fifty,f_fifty] = noise_fft(Fs,fifty_noise_signal);

%Plotting
plot(f_ten,P1_ten/max(P1_fifty),'LineWidth',2);
hold on
plot(f_twenty,P1_twenty/max(P1_fifty),'LineWidth',2);
hold on
plot(f_thirty,P1_thirty/max(P1_fifty),'LineWidth',2);
hold on
plot(f_forty,P1_forty/max(P1_fifty),'LineWidth',2);
hold on
plot(f_fifty,P1_fifty/max(P1_fifty),'LineWidth',2);
title('Single-Sided Amplitude Spectrum of Noise Signals with Different Loop Inductances')
xlabel('f(Hz)')
ylabel('|Noise Signal|')
legend('10 nH','20 nH','30 nH','40 nH','50 nH');
ylim([0 1.1]);


%%
%Bode
