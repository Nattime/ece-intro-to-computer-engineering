%% 1
clear;clc

%% 2
clear;clc

%% 3
clear;clc

%% 4
clear;clc

%% 5
clear;clc

%% 6
clear;clc

%% 7
clear;clc

%% 8
clear;clc

%% 9
clear;clc

%% 10
clear;clc
M = [ 8 3 7 ; 2 6 3 ; 1 6 7];
M = sum(sum(M)) - M

%% 11
clear;clc


%% 12
clear;clc


%% 13
clear;clc

%% 14
clear;clc

%% 15
clear;clc
M = [1 5 3 6 3; 7 3 2 6 3; 7 8 4 2 5; 2 5 3 2 1; 7 4 4 2 5];
fprintf('The values range from %.0f to %.0f\n',min(min(M)),max(max(M)));
val = input('Please enter a value in that range: ');
disp('The largest number less than your input is:')
disp(max(M(M<val)))
biggestN = max(M(M<val));
disp('At locations:')
disp(find(M==biggestN))
[r,c]=ind2sub(size(M),find(M==biggestN))

%% 16
clear;clc

%% 17
clear;clc

%% 18
clear;clc

%% 19
clear;clc

%% 20
clear;clc

%% 21
clear;clc

%% 22
clear;clc

%% 23
clear;clc

%% 24
clear;clc

%% 25
clear;clc

%% 26
clear;clc

%% 27
clear;clc

%% 28
clear;clc

%% 29
clear;clc

%% 3
clear;clc
