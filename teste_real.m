% Matlab program to implement
% the above approach
clc;
e = input('escolha 1 se quiser continua e 0 se quiser discreta: ');
p = input('Enter the Time Index sequence: ');
x = input('Enter the 1st sequence: ');
nx = p
h = input('Enter the second sequence: ');
nh = p

% Sending parameters to a separate function
[y, ny] = findconv(x, nx, h, nh);
  
figure;
subplot(2,2,1);
if e == 1 
    plot(nx, x);
else    
    stem (nx, x);
end
xlabel('Time');
ylabel('Amplitude');
title('primera equacao');
subplot(2,2,2);
if e == 1 
    plot(nh, h);
else    
    stem (nh, h);
end
xlabel('Time');
ylabel('Amplitude');
title('segunda equacao');
subplot (2,2,3); 
if e == 1
    plot(ny, y);
else    
    stem (ny, y);
end
xlabel('Time');
ylabel('Amplitude');
title('Linear Convolution');
disp(y);
disp(ny);
  
% Function to find the length of our output
function [y, ny] = findconv(x, nx, h, nh)
    nybegin = nx(1) + nh(1);
    nyend = nx(length(nx)) + nh(length(nh));
    ny = nybegin : nyend;
      
    % Calling a function within a function
    y = calconv(x, h);
end
  
% Here is where the summation is calculated
function [y] = calconv(x, h)
    l1 = length(x);
    l2 = length(h);
    N = l1 + l2 - 1;
    for n = 1 : 1 : N
        y(n) = 0;
        for k = 1 : 1 : l1
            if(n - k + 1 >= 1 & n - k + 1 <= l2)
                y(n) = y(n) + x(k) * h(n - k + 1);
            end
        end
    end
end




