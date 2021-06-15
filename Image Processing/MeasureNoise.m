% initialization
File = "Images/SohrabNamazi.jpg";
Image = imread(File);
OriginalImage = rgb2gray(Image);

% make it double, because snr input structure is based on that
OriginalImage = double(OriginalImage);

%make image noisy
NoisyImage = imnoise(OriginalImage, 'gaussian');

%denoise image 
DenoisedImage = wiener2(NoisyImage,[3 3]);

% compute snr
snr1 = snr(OriginalImage, NoisyImage);
snr2 = snr(OriginalImage, DenoisedImage);

% print result
fprintf("The second following value must be highr:\n");
fprintf("This is the SNR between the original image and NoisyImage: %f\n", snr1);
fprintf("This is the SNR between the original image and Denoised: %f\n", snr2);
fprintf("The difference in SNRs is %f\n", snr2 - snr1);



