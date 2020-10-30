function I1 = down_sampling(im1)
[h,w]=size(im1);
im1=double(im1);
I1=uint8(zeros(h/2,w/2));
i1=1;
j1=1;
for i=1:2:512
    for j=1:2:512
        I1(i1,j1)=(im1(i,j)+im1(i,j+1)+im1(i+1,j)+im1(i+1,j+1))/4;
        j1=j1+1;
    end
    i1=i1+1;
    j1=1;
end

