//Corrugated Roof
nx = 128; ny = 128;
x = linspace(-1,1,nx);
y = linspace(-1,1,ny);
[X,Y] = ndgrid(x,y);
A = sin(Y*10*%pi);
f = scf();
grayplot(x,y,A);
imwrite(A,'C:\Users\csrc-lab03\Desktop\Activity5\roof.jpg');
f.color_map = graycolormap(32);
