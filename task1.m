%read image form file
im1=imread('lenna512.bmp');
im2=imread('lenna512_low_dynamic_range.bmp');
psnr(im1,im2)

