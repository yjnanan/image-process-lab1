im=imread('lenna512.bmp');

im_wn=Gaussian_noise(im);
im_wn=uint8(im_wn);
im_SP=salt_pepper(im);

psnr_wn=psnr(im,im_wn);
psnr_sp=psnr(im,im_SP);

figure(1);
subplot(2,2,1),imshow(im),title('origin');
subplot(2,2,2),imshow(im_wn),title('Gussian white noise');
subplot(2,2,3),imshow(im_SP),title('salt&pepper');


figure(2);
subplot(1,3,1),imhist(im),title('origin');
subplot(1,3,2), imhist(im_wn),title('Gussian white noise');
subplot(1,3,3), imhist(im_SP),title('salt&pepper');

im2=imread('lenna512_low_dynamic_range.bmp');
e_im2=histeq(im2);
figure(3),imshow(e_im2);
figure(4);
subplot(1,2,1),imhist(im2),title('im2');
subplot(1,2,2),imhist(e_im2),title('enhanced');

