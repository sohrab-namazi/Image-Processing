% take algorithm from user
prompt = "Please type one of the following options, as the algorithm for image edge detection:\nRoberts\nSobel\nPrewitt\nlog\nzerocross\nCanny\napproxcanny\n";
Algorithm = input(prompt, 's');

% check input validation
a = Algorithm == "Roberts";
b = Algorithm == "Sobel";
c = Algorithm == "Prewitt";
d = Algorithm == "log";
e = Algorithm == "zerocross";
f = Algorithm == "Canny";
g = Algorithm == "approxcanny";
result = a + b + c + d + e + f + g;
if result == 0
    fprintf("The input is not valid. please run again and type exactly one of the available options.\n");
    return;
end

% image file paths
File1 = "Images/Coins.png";
File2 = "Images/Butterfly.jpg";
File3 = "Images/Books.png";

% get Images
Image1 = imread(File1);
Image2 = imread(File2);
Image3 = imread(File3);

% we need to do that, because edge method first argument is 2-D image
ImageGrayScale1=rgb2gray(Image1);
ImageGrayScale2=rgb2gray(Image2);
ImageGrayScale3=rgb2gray(Image3);

% implement algorithm
Result1 = edge(ImageGrayScale1, Algorithm);
Result2 = edge(ImageGrayScale2, Algorithm);
Result3 = edge(ImageGrayScale3, Algorithm);

% before VS after
figure
imshowpair(Result1, Image1, 'montage');
figure
imshowpair(Result2, Image2, 'montage');
figure
imshowpair(Result3, Image3, 'montage');