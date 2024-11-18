clear all
format long

steps = 5000;

time = linspace(0, 100, steps);

x0 = [0; 0; -0.83824];

x = zeros(3, steps);

alpha1 = -1.53824;
beta1 = -3.5;

v1 = [0; 1; 0];
v2 = [-1; 0; 0];

for k = 1:steps
thisTime = time(k)
s = exp(alpha1*thisTime)*cos(beta1*thisTime);
t = exp(alpha1*thisTime)*sin(beta1*thisTime);
x(1:3, k) =x0 + s*v1 + t*v2;
end

figure
hold on
plot3(x(1, :)', x(2, :)', x(3, :)', 'b.')
plot3(x0(1), x0(2), x0(3), 'g*')