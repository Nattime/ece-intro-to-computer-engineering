%% 1
age = 18;
age - 1 + 2

%% 2
x = 5 + 2^2 + 4

%% 3
clear;clc
x = 56;
y = 87;
temp = x;
x = y;
y = temp;

%% 4
clear;clc
x = 56;
y = 87;
disp(x)
disp(y)
temp = x;
x = y;
y = temp;
disp(x)
disp(y)

%% 5
clear;clc
5^2*3
5^(2*3)
(1+3+5)/(5+3+1)

%% 6
clear;clc
sqrt(2+3^4)
(2+3^4)^(1/2)

%% 7
clear;clc
r = 10
a = pi*(r^2)
c = 2*pi*r

%% 8
clear;clc
x = 15;
y = 22;
z = 35;
%a
x>22 & y>22
%b
x>22 || y>2
%c
~0
%d
~z
%e
x+y>37
%f
x + (y>37)
%g
x - y | 0
%h
y>x & z>y & z>34
%i
x>3 & x<5
%j
3<x<5
%k
14>=x
%l
14<=x
%m
z-y-x>0

%% 9
clear;clc
age = input('How old are you? ');
if (age<21)
    disp('You are not legal to drink')
elseif (age>=21)
    disp('You can drink')
end

%% 10
clear;clc
TVTime = input('how much tvtime is left?');
if (TVTime == 0)
    disp('You must go to study right away!')
else
    disp('Have fun')
end

%% 11
clear;clc
x = input('Number: ');
if (rem(x,2) == 0)
    disp('It is even')
else
    disp('It is odd')
end

%% 12
clear;clc
x = input('number: ');
if (x>=0)
    fprintf('%f\n',sqrt(x))
else
    disp('X is negative')
end

%% 13
clear;clc
x = input('number: ');
if (x ~= fix(x))
    disp('it is not a integer')
else
    disp('it is an integer')
end

%% 14
clear;clc
grade = input('Grade: ');
if (grade >=85 && grade <= 100)
    disp('You got an A')
elseif (grade >=75 && grade < 85)
    disp('You got a B')
elseif (grade >=60 && grade < 75)
    disp('You got a C')
elseif (grade >=0 && grade < 60)
    disp('You failed')
else
    disp('You must be kidding')
end

%% 15
clear;clc
x = input('number: ');
if (x<0)
    disp('it is less than 0')
elseif (x == 0)
    disp('it is 0')
else
    disp('it is greater than 0')
end

%% 16
clear;clc
days = input('how many days do you want to rent this dvd?');
if (days>1 && days<=7)
    x = (days*1) + 3.99;
    if (x>8)
        x = 8;
    end
    fprintf('You should be charged $%.2f. \n', x)
elseif (days == 1)
    fprintf('You should be charged $3.99.\n')
elseif (days>7)
    x = (1*(days-7)) + 8;
    if (x>50)
        x = 50;
    end
    fprintf('You should be charged $%.2f. \n', x)
else
    disp('invalid input')
end

%% 17
clear;clc
x = input('first number: ');
y = input('second number: ');
z = input('do you want to a)add  b)subtract  c)multiply  d)divide?: ','s');

switch z
    case 'a'
        total = x + y;
        fprintf('%.3f\n', total)
    case 'b'
        total = x - y;
        if (total<0)
            total = -total;
        end
        fprintf('%.3f\n', total)
    case 'c'
        total = x * y;
        fprintf('%.3f\n', total)
    case 'd'
        if (y == 0)
            total = NaN;
        else
            total = x/y;
        end
        fprintf('%.3f\n', total)
end

%% 18
clear;clc
%a
3:6
%b
1:.5:3
%c
5:-1:2

%% 19
clear;clc
total = 1;
for k = 1:20
    total = (total * k);
end
disp(total)

%% 20
clear;clc
x = input('number: ');
while(x>0)
    disp(x)
    x = input('number: ');
end
if x < 0
    disp('Loop Stopped')
end

%% 21
clear;clc
for k = 1:1000
    total = sum(primes(k));
end
disp(total)

%% 22
clear;clc


%% 23
clear;clc


%% 24
clear;clc
counter = 0;
for k = 10000:99999
    if (isprime(k)==1)
        counter = counter + 1;
    end
end
disp(counter)

%% 25
clear;clc
x = input('how many rows');
for r = 1:x
    for c = 1:r
        fprintf('*')
    end
    fprintf('\n')
end

%% 26
clear;clc

%% 27
clear;clc

%% 28
clear;clc

%% 29
clear;clc

%% 30
clear;clc
z = input('enter z, greater than or equal to 1');
count=0;
while(z>1)
z=z/2;
count=count+1;
end
disp(count)

%% 31
clear;clc

%% 32
clear;clc
