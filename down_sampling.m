function I1 = down_sampling(im1)
[h,w]=size(im1);%get size of image
im1=double(im1);%transform data type from uint8 to double
I1=uint8(zeros(h/2,w/2));%creat a new image with 1/2 size of original image
%set pixel coordinates
i1=1;
j1=1;
for i=1:2:512%new image size is 256*256
    for j=1:2:512
        %calculate mean of four pixels of original image and assign pixels to the new image
        I1(i1,j1)=(im1(i,j)+im1(i,j+1)+im1(i+1,j)+im1(i+1,j+1))/4;
        j1=j1+1;
    end
    i1=i1+1;
    j1=1;
end

