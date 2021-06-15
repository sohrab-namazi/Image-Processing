% initialization
File1 = "Images/Pizza.jpg";
Image1 = imread(File1);
ImageGrayScale1 = rgb2gray(Image1);
NoisyImage1 = imnoise(ImageGrayScale1, 'salt & pepper', 0.1);

File2 = "Images/SohrabNamazi.jpg";
Image2 = imread(File2);
ImageGrayScale2 = rgb2gray(Image2);
NoisyImage2 = imnoise(ImageGrayScale2, 'gaussian');

% denoise
AveragedFilteringDenoisedImage1 = filter2(fspecial('average',2),NoisyImage1)/255;
MedianFilteringDenoisedImage1 = medfilt2(AveragedFilteringDenoisedImage1);
AdaptiveFilteringDenoisedImage2 = wiener2(NoisyImage2,[3 3]);

% noisy original image VS denoised image
figure
imshowpair(NoisyImage1, MedianFilteringDenoisedImage1, 'montage');
title("Mixture of Average Filtering and Median Filtering");

figure
imshowpair(NoisyImage2, AdaptiveFilteringDenoisedImage2, 'montage');
title("Adaptive Filtering");

