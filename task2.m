I0=imread('lenna512.bmp');

[h,w]=size(I0);

I1=down_sampling(I0);
figure;
subplot(2,2,1),imshow(I0),title('512X512');
subplot(2,2,2),imshow(I1),title('256X256');

I2_nearest=nearest_neighbor(I1);
subplot(2,2,3),imshow(I2_nearest),title('I2:512X512');

psnr_nearest=psnr(I0,I2_nearest);

I3_bilinear=imresize(I1,2,'bilinear');
I4_bicubic=imresize(I1,2,'bicubic');

psnr_bilinear=psnr(I0,I3_bilinear);
psnr_bicubic=psnr(I0,I4_bicubic);