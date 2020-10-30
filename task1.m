im1=imread('lenna512.bmp');
im2=imread('lenna512_low_dynamic_range.bmp');

psnr(im1,im2);

% [h,w]=size(im1);
% 
% I1=down_sampling(im1);
% figure;
% subplot(2,2,1),imshow(im1),title('512X512');
% subplot(2,2,2),imshow(I1),title('256X256');
% 
% I2_nearest=nearest_neighbor(I1);
% subplot(2,2,3),imshow(I2),title('I2:512X512');
% 
% psnr_nearest=psnr(im1,I2);
% 
% I3_bilinear=imresize(I1,2,'bilinear');
% I4_bicubic=imresize(I1,2,'bicubic');
% 
% psnr_bilinear=psnr(im1,I3_bilinear);
% psnr_bicubic=psnr(im1,I4_bicubic);


