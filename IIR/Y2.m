%8.2.4 y 2 

%Program: EXP5_IIR_Butterworth_Lowpass
%A MATLAB program to design IIR Butterworth Lowpass Filter
clf;
clear all; close all;
N = 512; n = 6;
fs = 3000;
%Clear all figures %Clear all variables %Close all figures
%Define the order of the filter

[b,a]=butter(n,[0.35, 0.75]); %Calculation of filter coefficient
figure(1);
freqz(b,a,N,fs); %Plotting the filter respons
title('Magnitude and Phase response of Butterworth IIR Bandpass filter');

R = 0.5; %Define the Passband peak-to-peak ripple in decibels
[c,d]=cheby1(n,R,[0.35, 0.75]); %Calculating filter coefficients
figure(2);
freqz(c,d,N,fs); %Plotting the filter response
title('Magnitude and Phase Response of Chebyshev-Type-1 IIR Bandpass Filter');

R1 = 20;
%Clear all figures %Clear all variables
%Close all figures
%Define the order of the filter %Stopband ripple in decibles
[e,f]=cheby2(n,R,[0.35, 0.75]);%Calculation of filter coefficients
figure(3);
freqz(e,f,N,fs); %Plotting the filter response
title('Magnitude and Phase Response of Chebyshev-Type-2 IIR Bandpass Filter');

