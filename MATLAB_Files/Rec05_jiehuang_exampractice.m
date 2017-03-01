%% rec05 problem 2

x = primes(300);

x(1:5);
size(x)
x(x>=211);
sum(x(x>=211))
fprintf('There are %.2f prime numbers from 211-300.\n', sum(x(x>=211)))

%% p 10
m = magic(3);
m = m-sum(sum(m));

%% p13
A = fix(rand(50)*100);
total = sum(sum(A>50));
disp(total)

%% p18
clear;clc
A = fix(rand(50)*100);
m = median(A(:));
disp(m)

%% p32
clear;clc
A = [3,7,-4,16;-5,9,10,2;6,13,8,11;15,5,4,1];
%a
max(A)
min(A)
%b
max(A')
min(A')
%c
A(end,:)
%d
max(max(A))

%% 
clear;clc
name = 'steve';
n = input('Enter name: ','s');
if (strcmpi(name,n))
    disp('Hi Steve!')
end

%% animation
clear;clc
x = linspace(-2*pi,2*pi,200);
y = sin(x);
%plot(xy)
for k = 1:length(x)
    plot(x(1:k),y(1:k),'m',x(k),y(k),'X')
    axis([min(x) max(x) min(y) max(y)])
    pause(.02)
end