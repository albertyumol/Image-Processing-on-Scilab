I = imread('C:\Users\csrc-lab03\Desktop\Activity5\gaussian.jpg');
//Igray0 = rgb2gray(I); //Change image to grayscale.
Igray = mat2gray(I);
FIgray = fft2(Igray); //Apply 2D FFT.
F1 = mat2gray(abs(FIgray)); //Get magnitude of complex values.
FS1 = fftshift(F1); //Shift quadrants back to proper image.
F2 = fft2(FIgray); //Apply inverse FFT.
FS2 = mat2gray(abs(F2));
R = fftshift(mat2gray(real(FIgray))); //Get real values of FFT.
Im = fftshift(mat2gray(real(FIgray))); //Get imaginary values of FFT.

imshow(R);
imwrite(FS1,'C:\Users\csrc-lab03\Desktop\Activity5\gaussian_ft1.jpg');
imwrite(FS2,'C:\Users\csrc-lab03\Desktop\Activity5\gaussian_ft2.jpg');
imwrite(R,'C:\Users\csrc-lab03\Desktop\Activity5\gaussian_real.jpg');
imwrite(Im,'C:\Users\csrc-lab03\Desktop\Activity5\gaussian_imag.jpg');
