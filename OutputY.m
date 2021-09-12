function Value1 = OutputY(Crisp,a,b)

X1 = a(1,1);
Y1 = a(2,1);
X2 = b(1,1);
Y2 = b(2,1);

m = (Y2 - Y1)/(X2 - X1);
b = Y1 - m*X1;
Y = m*Crisp + b;
Value1 = Y;

end 