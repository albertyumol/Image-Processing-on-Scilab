//Grating along x direction
nx = 128; ny = 128;
x = linspace(-10,10,nx);
y = linspace(-10,10,ny);
[X,Y] = ndgrid(x,y);
A = squarewave(Y);
//a = %pi/4
//r = [cos(a) -sin(a);
//     sin(a) cos(a)];
//A = A*r;
f = scf(0);
grayplot(x,y,A);
imwrite(A,'C:\Users\csrc-lab03\Desktop\Activity5\grating.jpg');
f.color_map = graycolormap(32);
