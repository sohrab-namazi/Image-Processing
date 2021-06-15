% initialization
File = "Images/Pizza.jpg";
Image = imread(File);
ImageGrayScale = rgb2gray(Image);

% roberts vs canny
Result1 = edge(ImageGrayScale, 'Roberts');
Result2 = edge(ImageGrayScale, 'Canny');

%comparison
figure
imshow(Image);
title("Original Image");
figure
imshowpair(Result1, Result2, 'montage');
title('Roberts                 VS               Canny ');