function [I2] = nearest_neighbor(I1)
[h,w]=size(I1);
I2=uint8(zeros(h*2,w*2));
for i=1:h*2
    for j=1:w*2
        I2(i,j)=I1(round(i/2),round(j/2));
    end
end

