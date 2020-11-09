function [I2] = nearest_neighbor(I1)
%get size of I1(256*256)
[h,w]=size(I1);
%creat a new image with 2 size of I1(512*512) 
I2=uint8(zeros(h*2,w*2));
for i=1:h*2
    for j=1:w*2
        %set the pixel value of each point in the new image to be the nearest point in the I1
        I2(i,j)=I1(round(i/2),round(j/2));
    end
end

