function F = f(t,Y)

E = Y(1);
S= Y(2);
ES = Y(3);
P = Y(4);
f1 = 750*ES-100*E*S;
f2 = 600*ES-100*E*S;
f3 = 100*E*S-750*ES;
f4 = 150*ES;
F=[f1;f2;f3;f4];
end