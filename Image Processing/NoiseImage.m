% initialization

File1 = "Images/Pizza.jpg";
Image1 = imread(File1);
ImageGrayScale1 = rgb2gray(Image1);

File2 = "Images/ComputerDepartment.jpg";
Image2 = imread(File2);
ImageGrayScale2 = rgb2gray(Image2);

File3 = "Images/SohrabNamazi.jpg";
Image3 = imread(File3);
ImageGrayScale3 = rgb2gray(Image3);

File4 = "Images/Books.png";
Image4 = imread(File4);
ImageGrayScale4 = rgb2gray(Image4);

File5 = "Images/Cristiano_Colorful.jpg";
Image5 = imread(File5);
ImageGrayScale5 = rgb2gray(Image5);

% implementation
NoisyImage1 = imnoise(ImageGrayScale1, 'salt & pepper', 0.1);
NoisyImage2 = imnoise(ImageGrayScale2, 'speckle');
NoisyImage3 = imnoise(ImageGrayScale3, 'Poisson');
NoisyImage4 = imnoise(ImageGrayScale4, 'gaussian');
NoisyImage5 = imnoise(ImageGrayScale5, 'gaussian', 0.5, 0.1);

% original image VS noisy image
figure
imshowpair(ImageGrayScale1, NoisyImage1, 'montage');
title("Salt & Pepper (d = 0.1)");

figure
imshowpair(ImageGrayScale2, NoisyImage2, 'montage');
title("Speckle");

figure
imshowpair(ImageGrayScale3, NoisyImage3, 'montage');
title("Poisson");

figure
imshowpair(ImageGrayScale4, NoisyImage4, 'montage');
title("Gaussian (m = 0, variance = 0.01)");

figure
imshowpair(ImageGrayScale5, NoisyImage5, 'montage');
title("Gaussian (m = 0.5, variance = 0.1)");