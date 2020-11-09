function PSNR=psnr(im1,im2)
diff=double(im1)-double(im2);%calculate difference between im1 and im2
MES=sum(diff(:).^2)/numel(im1);
PSNR=10*log10(255^2/MES);
end

