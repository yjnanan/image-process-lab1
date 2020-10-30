function im_wn = Gaussian_noise(im)
im_wn = double(im) + sqrt(10)*randn(size(im));
noise = double(im_wn) - double(im);
variance = var(double(noise(:)))  % 方差
mean_value = mean(mean(noise))          % 二维数组的均值
end

