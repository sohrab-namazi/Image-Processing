% initializing the 2D Array
arr1 = [22 2 10; 2 22 2; 10 2 22];
figure('Name','2D-Array','NumberTitle','off');
% scaled CDataMapping, scales all values to our max element
image(arr1,'CDataMapping','scaled');
colorbar

% setting the dimensions, for being blue, i have set 2 of columns to zero.
arr2 = zeros(3,3,3);
%R
%arr2(:,:,1) = [.1 .2 .3; .4 .5 .6; .7 .8 .9];
%G
%arr2(:,:,2) = [.1 .2 .3; .4 .5 .6; .7 .8 .9];
%B
arr2(:,:,3) = [.5 .5 .5; .5 .2 .5; .5 .5 .5];
figure('Name','3D-Array','NumberTitle','off');
image(arr2);