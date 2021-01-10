windowLength = 45;  %Length of hanning window
w = hann(windowLength);  %Function to generate hanning window coefficients
fs = 200;    %Sampling Frequency
 
t = 0:1/fs:999; %Generate sample points for entire duration-999 seconds
f=25;   %Sine wave frequency
output = sin(2*pi*f*t); %Sine wave of long duration
 
figure(1)
plot(t(1:100),output(1:100)) %Plotting the first 100 samples of sine wave
xlabel('Time in Seconds')
ylabel('Amplitude')
title('Before Windowing')
 
index = 34; %Starting index for windowing
windowSequence = [zeros(1,index-1) w' zeros(1,length(output)-index-length(w)+1)]; %Windowing Sequence of same duration as sine wave
winOut = output.*windowSequence; %Product of sequences to perform windowing
  
figure(2)
plot(t(1:100),winOut(1:100)) %Resulting plot of windowing - first 100 samples
xlabel('Time in Seconds')
ylabel('Amplitude')
title('After Windowing')
 
figure(3)
stem(w) %Visualizing Window function
xlabel('n')
ylabel('w(n)')
title('Window')