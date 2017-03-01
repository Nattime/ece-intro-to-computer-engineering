%% 2.1
x1 = 10;
y1 = 5;
plot(x1,y1,'rx')

%% 2.2
time = linspace(0,1,100);
data = exp(time.^2);
plot(time,data,'g-.')

%1.1
x = 0:10;
y = exp(x);
plot(x,y)

%1.2
y1 = 5*x.^2 + 2*x + 4;
plot(x,y1)

%1.3
y2 = sqrt(x);
plot(x,y2)

%2
t = linspace(0,1,51);
v = 20.*t.*exp(-10.*t);
plot(t,v)

%3
t = linspace(0,1,100);
p = 10.*t.*exp(-10.*t)-50.*(t.^2).*exp(-10.*t);
plot(t,p)

%4
x3 = 0:.1:1;
y3 = (1./sqrt(2*pi*1.^2)).*exp(-((x3-4).^2)./(2*1.^2));
plot(x3,y3,'r')

%% 2.3
x = linspace(-2*pi,2*pi,100);
y1 = sin(x);
y2 = cos(x);
y3 = asin(x);
plot(x,y1,'r',x,y2,'b',x,y3,'g')

%% 2.4
%6
x = 5;
y = 5;
plot(x,y,'r*','markersize',12)

%7
%1.1
x = 0:10;
y = exp(x);
plot(x,y,'linewidth',2)

%1.2
y1 = 5*x.^2 + 2*x + 4;
plot(x,y1,'linewidth',2)

%1.3
y2 = sqrt(x);
plot(x,y2,'linewidth',2)

%2
t = linspace(0,1,51);
v = 20.*t.*exp(-10.*t);
plot(t,v,'linewidth',2)

%3
t = linspace(0,1,100);
p = 10.*t.*exp(-10.*t)-50.*(t.^2).*exp(-10.*t);
plot(t,p,'r','linewidth',2)

%4
x3 = 0;.1;1;
y3 = (1./(sqrt(2*pi*1^2))).*exp(-((x3-4).^2)/(2*1^2));
plot(x3,y3,'rx','linewidth',2)

%% 2.5
clear;clc
%8
x1 = 1;.5;2;
y1 = x1+1;
x2 = 2;.5;3;
y2 = -x2+5;
axis([min(x1)-1 max(x2)+1 min(y1)-1 max(y2)+1])
plot(x1,y1,'r--',x2,y2,'b--')

%% 3.1
clear;clc
%9
fplot('sin(x)',[-2*pi 2*pi]);

%9.1
fplot('exp(x)',[0 10]);

%9.2
fplot('5*x.^2 + 2*x + 4',[0 10]);

%9.3
fplot('sqrt(x)',[0 10]);

%% 3.3
clear;clc
%10
x = -2;.1;2;
y = exp('\alpha');
plot(x,y,'linewidth',2);
title('function title');
xlabel('x'),ylabel('y');

%% 3.5
clear;clc
%13
x = linspace(0,pi,10);
y = sin(x);
figure(1)
plot(x,y)
x1 = linspace(0,pi,100);
y1 = sin(x);
figure(2)
plot(x1,y1)

%14
x = linspace(-2*pi,2*pi,100);
y = sin(x);
y1 = cos(x);
subplot(2,1,1);
plot(x,y);
title('y = sin(x)')
subplot(2,1,2);
plot(x,y1);
title('y = cos(x)')

x = 0:0.1*pi:2*pi;
y = sin(x);
plot(x,y)
gtext('this is text')