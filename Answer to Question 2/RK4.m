h = 0.001;
t = 0:h:0.45;
n=length(t);
Y(:,1)=[1;10;0;0];

for i = 1:n-1
   
   K1 = f(t(i), Y(:,i));
   K2 = f(t(i)+h/2, Y(:,i)+K1*h/2);
   K3 = f(t(i)+h/2, Y(:,i)+K2*h/2);
   K4 = f(t(i)+h, Y(:,i)+K3*h);
   Y(:,i+1) = Y(:,i)+h/6*(K1+2*K2+2*K3+K4);
end
E=Y(1,:);
S=Y(2,:);
ES=Y(3,:);
P=Y(4,:);

figure
subplot(2,2,1)
plot(t,E,'b');
title('Concentration change of E')
subplot(2,2,2)
plot(t,S,'b');
title('Concentration change of S')
subplot(2,2,3)
plot(t,ES,'b');
title('Concentration change of ES')
subplot(2,2,4)
plot(t,P,'b');
title('Concentration change of P')

t2 =diff(t);
E1 = diff(E);
dE = E1./t2;

S1 = diff(S);
dS = S1./t2;

ES1 = diff(ES);
dES = ES1./t2;

P1 = diff(P);
dP = P1./t2;

t1= 0:0.001:0.45-h;
figure
subplot(2,2,1)
plot(t1,dE,'b');
title('Concentration change rate of E')
subplot(2,2,2)
plot(t1,dS,'b');
title('Concentration change rate of S')
subplot(2,2,3)
plot(t1,dES,'b');
title('Concentration change rate of ES')
subplot(2,2,4)
plot(t1,dP,'b');
title('Concentration change rate of P')


