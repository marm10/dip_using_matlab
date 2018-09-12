clear;
%% I can display an image using the 'imshow' function, specifying the matrix
f = imread('./samples/nostalgia.jpg');
fRed = f(:,:,1); % Here, i get only the Red section of the image

% Here, i show the original red image and a second image, displaying as
% black all values less than or equal to 50, and as white all values
% greater than or equal to 200. The 'figure' function keep both the images
% on output.

imshow(fRed), figure, imshow(fRed, [50, 200]);