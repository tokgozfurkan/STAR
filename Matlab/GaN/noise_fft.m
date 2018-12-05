% Function takes 2 inputs which are sampling frequency and input signal in the form
% of an array. The outputs are single-sided spectrum of the input signal
% and an axis for frequency so that it can be plotted with a single line of
% code: plot(F1,P1);
% If it is desired, output magnitude can be calculated in dB with following formula 
% P1_dB= 20*log10(P1/max(P1));
function [P1,F1] = noise_fft(Fs,noise_signal)
if rem(length(noise_signal),2)==0         % Length of signal
    L=length(noise_signal);
else
    L=length(noise_signal)-1;
end           
Y= fft(noise_signal);
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
F1 = Fs*(0:(L/2))/L;
end