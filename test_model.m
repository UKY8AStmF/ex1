clc

a = 5; #большая полуось
b = 3; #малаая полуось
c = sqrt(a^2 - b^2);
e = c/a; #эксцентриситет


x_c = 0;
y_c = 0;

x = [];
y = [];

x1 = [];
y1 = [];

r_s = []

for phi = -90:90
    r = b/sqrt((1 - (e^2)*(cosd(phi)^2)));
    x = [x, x_c + r*cosd(phi)];
    y = [y, y_c + r*sind(phi)];
    r_s = [r_s, r];
end
for phi = 0:360
    r = 3;
    r_s = [r_s, r];
    x1 = [x1, x_c + r*cosd(phi)];
    y1 = [y1, y_c + r*sind(phi)];
end
figure(1)
plot(x,y)
hold on
plot(x1,y1, "r")
axis("equal")

figure(2)
plot(r_s)
