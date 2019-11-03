r = imread("C:\Users\csrc-lab03\Desktop\Activity5\TheRain_orange.jpg");
a = imread("C:\Users\csrc-lab03\Desktop\Activity5\stays.jpg");
r = r(:,:,1);
a = a(:,:,1);
rgray = mat2gray(r);
agray = mat2gray(a);
Fr = fft2(rgray);
Fa = fft2(agray);
FRA = conj(Fr).*Fa;
IRA = fftshift(fft2(FRA));
FImage = mat2gray(abs(IRA));
thresh = 0.8;
marks = FImage>thresh;
mapped = marks + rgray;

imwrite(FImage,"C:\Users\csrc-lab03\Desktop\Activity5\Correlated_stays.jpg");
imwrite(marks,"C:\Users\csrc-lab03\Desktop\Activity5\Locations_stays.jpg");
imwrite(mapped,"C:\Users\csrc-lab03\Desktop\Activity5\Mapped_stays.jpg");
