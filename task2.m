I0=imread('lenna512.bmp');

[h,w]=size(I0);

I1=down_sampling(I0);
figure;
subplot(2,2,1),imshow(I0),title('original');
subplot(2,2,2),imshow(I1),title('down-sampling with mean value');

I2_nearest=nearest_neighbor(I1);
figure;
subplot(2,2,1),imshow(I0),title('original');
subplot(2,2,2),imshow(I2_nearest),title('nearest neighbor');

%PSNR between original and nearest
psnr_nearest=psnr(I0,I2_nearest);

%up-sampling with bilinear interpolation
I3_bilinear=imresize(I1,2,'bilinear');
%up-sampling with bicubic interpolation
I4_bicubic=imresize(I1,2,'bicubic');

%PSNR between original and bilinear
psnr_bilinear=psnr(I0,I3_bilinear);
%PSNR between original and bicubic
psnr_bicubic=psnr(I0,I4_bicubic);