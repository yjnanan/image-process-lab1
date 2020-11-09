function im_SP = salt_pepper(im)
[width,height]=size(im);

im_SP=im;

%K is critical point to control density
k=0.1;
%rand(m,n) is used to creat same size martix
%less than k equal to 1 in the matrix, or 0 in the matrix
a1=rand(width,height)<k;
a2=rand(width,height)<k;
%create black point
im_SP(a1&a2)=0;
%create white point
im_SP(a1& ~a2)=255;
end

