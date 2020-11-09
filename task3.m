im=imread('lenna512.bmp');

im_wn=Gaussian_noise(im);
im_wn=uint8(im_wn);
im_SP=salt_pepper(im);

psnr_wn=psnr(im,im_wn);
psnr_sp=psnr(im,im_SP);

figure;
subplot(2,2,1),imshow(im),title('origin');
subplot(2,2,2),imshow(im_wn),title('Gussian white noise');

figure;
subplot(2,2,1),imshow(im),title('origin');
subplot(2,2,2),imshow(im_SP),title('salt&pepper');

figure;
subplot(2,2,1),drawhist(im),title('origin');
subplot(2,2,2),drawhist(im_wn),title('Gussian white noise');
subplot(2,2,3),drawhist(im_SP),title('salt&pepper');

im2=imread('lenna512_low_dynamic_range.bmp');
e_im2=histeq(im2);
figure;
subplot(2,2,1),imshow(im2),title('im2');
subplot(2,2,2),imshow(e_im2),title('enhanced');
figure;
subplot(1,2,1),drawhist(im2),title('im2');
subplot(1,2,2),drawhist(e_im2),title('enhanced');

