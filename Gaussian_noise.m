function im_wn = Gaussian_noise(im)
%variance is 10 so standard deviation is sqrt(10); use randn to add noise
im_wn = double(im) + sqrt(10)*randn(size(im));
noise = double(im_wn) - double(im);
variance = var(double(noise(:)))% calculate variance
mean_value = mean(mean(noise))% calculate mean value
end

