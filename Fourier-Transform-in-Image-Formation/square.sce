
//Square Apperture
stacksize(100000000)
nx = 128; ny = 128;
x = linspace(-1,1,nx);
y = linspace(-1,1,ny);
[X,Y] = ndgrid(x,y);
A = zeros(nx,ny);
A (find(abs(X)<0.5 & abs(Y)<0.5)) = 1;
f = scf();
grayplot(x,y,A);
//imwrite(A,'a.bmp');
imwrite(A,'C:\Users\csrc-lab03\Desktop\Activity5\square.jpg');
//xtitle('Centered-Square Aperture',boxed = %t)
f.color_map = graycolormap(32);
