r0 = imread("C:\Users\csrc-lab03\Desktop\Activity5\Aperture0.jpg");
r1 = imread("C:\Users\csrc-lab03\Desktop\Activity5\Aperture1.jpg");
r2 = imread("C:\Users\csrc-lab03\Desktop\Activity5\Aperture2.jpg");
r3 = imread("C:\Users\csrc-lab03\Desktop\Activity5\Aperture3.jpg");
r4 = imread("C:\Users\csrc-lab03\Desktop\Activity5\Aperture4.jpg");
r5 = imread("C:\Users\csrc-lab03\Desktop\Activity5\Aperture5.jpg");
a = imread("C:\Users\csrc-lab03\Desktop\Activity5\vip.jpg");
a = a(:,:,1);
agray = mat2gray(a);
Fa = fft2(agray);

rgray0 = mat2gray(r0);
Fr0 = fftshift(rgray0);
FRA0 = Fr0.*Fa;
IRA0 = fft2(FRA0);
FImage0 = mat2gray(abs(IRA0));

rgray1 = mat2gray(r1);
Fr1 = fftshift(rgray1);
FRA1 = Fr1.*Fa;
IRA1 = fft2(FRA1);
FImage1 = mat2gray(abs(IRA1));

rgray2 = mat2gray(r2);
Fr2 = fftshift(rgray2);
FRA2 = Fr2.*Fa;
IRA2 = fft2(FRA2);
FImage2 = mat2gray(abs(IRA2));

rgray3 = mat2gray(r3);
Fr3 = fftshift(rgray3);
FRA3 = Fr2.*Fa;
IRA3 = fft2(FRA3);
FImage3 = mat2gray(abs(IRA3));

rgray4 = mat2gray(r4);
Fr4 = fftshift(rgray4);
FRA4 = Fr4.*Fa;
IRA4 = fft2(FRA4);
FImage4 = mat2gray(abs(IRA4));

rgray5 = mat2gray(r5);
Fr5 = fftshift(rgray5);
FRA5 = Fr5.*Fa;
IRA5 = fft2(FRA5);
FImage5 = mat2gray(abs(IRA5));

imwrite(FImage0,"C:\Users\csrc-lab03\Desktop\Activity5\VIP0.jpg");
imwrite(FImage1,"C:\Users\csrc-lab03\Desktop\Activity5\VIP1.jpg");
imwrite(FImage2,"C:\Users\csrc-lab03\Desktop\Activity5\VIP2.jpg");
imwrite(FImage3,"C:\Users\csrc-lab03\Desktop\Activity5\VIP3.jpg");
imwrite(FImage4,"C:\Users\csrc-lab03\Desktop\Activity5\VIP4.jpg");
imwrite(FImage5,"C:\Users\csrc-lab03\Desktop\Activity5\VIP5.jpg");
