a = imread("C:\Users\csrc-lab03\Desktop\Activity5\vip.jpg");
a = a(:,:,1);
agray = mat2gray(a);

horizontal = [-1 -1 -1; 2 2 2; -1 -1 -1];

r = zeros(128,128);
r([63 64 65],[63,64,65]) = horizontal;
Fa = fft2(agray);
Fr = fft2(r);
convolved = abs(fft2(conj(Fa).*Fr));
C_h = fftshift(mat2gray(abs(convolved)));
imshow(C_h);
imwrite(C_h,"C:\Users\csrc-lab03\Desktop\Activity5\Horizontal.png");
