File1 = "Images/Cristiano_BlackWhite.jpg";
File2 = "Images/Cristiano_Colorful.jpg";
% images are stored in Image1 and Image2 as arrays
Image1 = imread(File1);
Image2 = imread(File2);
figure('Name','Black-White Image','NumberTitle','off');
imshow(Image1);
figure('Name','Colorful Image','NumberTitle','off');
imshow(Image2); 
% color cloud of white-black image
colorcloud(Image1, 'rgb');
% color cloud of colorful image
colorcloud(Image2, 'rgb');