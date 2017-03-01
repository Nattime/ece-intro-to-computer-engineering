%{
netid: jiehuang
Problem Set 02
Pseudocode:
Problem 1
ask user for input
check if input is valid
if input is not valid, loop and ask user for inputs again
if input is valid, put input into loop and vector sum
print the sum of all numbers

Problem 2
ask user for input
check if input is valid
if input is not valid, loop and ask user for inputs again
if input is valid, put input into loop and vector product
print the product of all numbers

Problem 3
ask user for input
input is put into loop and vector sum of vector input
print the sum from both vector and loop

Problem 4
ask user for input
check if input is valid
if input is not valid, loop and ask user for inputs again
if input is valid, put input into loop and vector product
print the product from input to input

Problem 5
ask user for input
print the rows of wanted printing
%}

%% Problem 1
clear;clc
N = input('Please enter an integer: '); % ask user for input

% input is put into loop to check if input is valid
while(N<=0 || rem(N,1) ~= 0)
    disp('Please enter a valid integer, please.');
    N = input('Please enter an integer: ');
end
k = 0;
total = 0;
while(k<=N) % input is put into loop to sum up all the integers from 1 to input
    total = total + k;
    k= k+1;
end
fprintf('The sum of integers from 1 to %.0f is: %.2f \n', N, total) % prints the sum

% sum vector form of one to input
total2 = 0;
for x = 1:1:N
    total2 = total2 + x;
end
fprintf('The sum of integers from 1 to %.0f is: %.2f \n', N, total2)

%% Problem 2
clear;clc
K = input('Please enter an integer: '); % ask user for input

while(K<=0 || rem(K,1) ~= 0) % check if input is valid, if not loop
    disp('Please enter a valid integer, please.');
    K = input('Please enter an integer: ');
end
total = factorial(K); % add factorial of input
fprintf('The product of integers from 1 to %.0f is: %.2f \n', K, total) % display total

% vector form of factorial of input
total2 = 1;
for x = 1:1:K
    total2 = total2 * x;
end
fprintf('The product of integers from 1 to %.0f is: %.2f \n', K, total2)

%% Problem 3
clear;clc
% vector sum of vectors inputed
m = input('Enter a vector (use [] around it): '); % ask user for input
k = sum(m);

fprintf('The sum of the elements in vector = %.3f\n', k);% print sum

% loop form of sum of vector
total = 0;
t = size(m);
for s = 1:t
    total = total + m;
    total2 = sum(total);
end
fprintf('The sum of the elements in vector = %.3f\n', total2);


%% Problem 4
clear;clc
x = input('Please enter first integer: '); % ask user for input to store into x
y = input('Please enter second integer: '); % ask user for input to store into y

while(x>y || x<0 || y<0 || rem(x,1) ~= 0 || rem(y,1) ~= 0) % checks if inputs are valid, if not, loop
    disp('Please enter a valid integer, please.');
    disp('I.e. whole numbers & first number must be less than second number.')
    x = input('Please enter first integer: ');
    y = input('Please enter second integer: ');
end
z = x; % z stores x's input so it does not replace input when in loop
total = y;
while(z<y)
    total = total * z;
    z = z + 1; % increment by 1
end
fprintf('The product of integers from %.0f to %.0f is: %.2f \n', x, y, total)

%vector form of product of inputs
total2 = 1;
for k = x:1:y
    total2 = total2 * k;
end
fprintf('The product of integers from %.0f to %.0f is: %.2f \n', x, y, total)

%% Problem 5
clear;clc
rows = input('How many rows do you want? '); %ask user for number of rows of output wanted
for R = 1:rows
    for s = R:rows
        fprintf('*'); % print symbol
    end
    fprintf('\n');
end
for R = 1:rows
    for s = 1:R
        fprintf('^'); % print symbol but opposite of the first
    end
    fprintf('\n');
end