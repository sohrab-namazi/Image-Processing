prompt = "please Type the image file path,\nExamples:\nImages/SohrabNamazi.jpg\nImages/ComputerDepartment.jpg\nImages/Cristiano_BlackWhite.jpg\nImages/Cristiano_Colorful.jpg\nImages/Test.png\n";
path = input(prompt, 's');
if exist(path, 'file')
   ImageMatrix = imread(path);
   imshow(ImageMatrix);
   imwrite(ImageMatrix, 'Output.txt', 'bmp');
else
    fprintf("The path you entered is invalid!\nif the image is in this directory type the image name with its extension, like image.jpg.\nelse, type the full image path combined with its name and extension.\n");
end

