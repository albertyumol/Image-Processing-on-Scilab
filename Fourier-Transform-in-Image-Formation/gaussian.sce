//Gaussian Aperture
stacksize(100000000)
nx = 128; ny = 128;
x = linspace(-1,1,nx);
y = linspace(-1,1,ny);
[X,Y] = ndgrid(x,y);
r = sqrt((X.^2) + (Y.^2));
A = (1/sqrt(2*%pi))*exp(-0.5*r/2);
//B = zeros(nx,ny);
//B (find(r<0.7)) = 1.;
//A = A.*B
f = scf();
grayplot(x,y,A);
imwrite(A,'C:\Users\csrc-lab03\Desktop\Activity5\gaussian.jpg');
f.color_map = graycolormap(32);
