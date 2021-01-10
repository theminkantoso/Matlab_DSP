windowLength = 45; 
w1 = boxcar(windowLength);

figure(1)
stem(w1) %Visualizing Window function
xlabel('n')
ylabel('w(n)')
title('Boxcar Window')

w2 = rectwin(windowLength); 
figure(2)
stem(w2) %Visualizing Window function
xlabel('n')
ylabel('w(n)')
title('rectwin Window')

w3 = bartlett(windowLength); 
figure(3)
stem(w3) %Visualizing Window function
xlabel('n')
ylabel('w(n)')
title('bartlett Window')

w4 = hann(windowLength); 
figure(4)
stem(w4) %Visualizing Window function
xlabel('n')
ylabel('w(n)')
title('hanning Window')

w5 = hamming(windowLength); 
figure(5)
stem(w5) %Visualizing Window function
xlabel('n')
ylabel('w(n)')
title('hamming Window')

w6 = blackman(windowLength); 
figure(6)
stem(w6) %Visualizing Window function
xlabel('n')
ylabel('w(n)')
title('blackman Window')

w7 = kaiser(windowLength,3); 
figure(7)
stem(w7) %Visualizing Window function
xlabel('n')
ylabel('w(n)')
title('kaiser Window')

