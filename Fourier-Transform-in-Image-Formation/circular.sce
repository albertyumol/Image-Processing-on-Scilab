//Circular Apperture Code
stacksize(100000000)
nx = 128; ny = 128;
x = linspace(-1,1,nx);
y = linspace(-1,1,ny);
[X,Y] = ndgrid(x,y);
r = sqrt((X.^2) + (Y.^2));
A = zeros(nx,ny);
A (find(r<0.9)) = 1;
f = scf();
grayplot(x,y,A);
imwrite(A,'C:\Users\csrc-lab03\Desktop\Activity5\Aperture5.jpg');
//xtitle('Circular Aperture',boxed = %t)
f.color_map = graycolormap(32);
