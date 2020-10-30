function im_SP = salt_pepper(im)
[width,height]=size(im);

im_SP=im;

%k1、k2作为判断临界点
k1=0.1;
k2=0.1;
%rand(m,n)是随机生成m行n列的矩阵，每个矩阵元素都在0-1之间
%这里k都是0.1，所以小于k的元素在矩阵中为1，反之为0
a1=rand(width,height)<k1;
a2=rand(width,height)<k2;
im_SP(a1&a2)=0;
im_SP(a1& ~a2)=255;
end

