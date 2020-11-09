function drawhist(im)
%count number of each pixel value
[count,x]=imhist(im,255);
stem(x,count);
end

