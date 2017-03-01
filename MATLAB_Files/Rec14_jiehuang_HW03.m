%%Jie Huang%%
%%Rec_14 HW03%%
datestr(now)
%%datestr(now) show the time of right now
%%ans =

%%29-Oct-2010 16:05:25

%%Number 4%%

clear;clc
student(1).Name='Jie Huang';
student(1).Age=18;
student(1).Major='Engineering';

student(2).Name='Harry Bush';
student(2).Age=19;
student(2).Major='Biology';
%%for-loop statement with k as a variable that will access the two
%%different elements
for k=1:length(student)
    fprintf('%s is %.0f of age and is studying %s ...\n', student(k).Name, student(k).Age, student(k).Major)
end

%%
%%Number 5%%
%%input of mass then the outcome comes in joules
clear;clc
c=2.9979e8;
m=input('Please input mass: ');
%%in place of %f, i used %.3e so outcome is in exponential form
for k=length(m)
    E=m*(c^2);
    fprintf('E = %.3e Joules\n', E)
end
%%when i publish it into pdf, the function input will not work and comes out as an error because no
%%input has been put in.