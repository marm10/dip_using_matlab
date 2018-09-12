clear;
%% I can read an image using the 'imread' function, specifying the image path
f = imread('./samples/nostalgia.jpg');
fRed = f(:,:,1); % Here, i get only the Red section of the image

%% I can get the image size and storage on a  M x N matrix
[M, N] = size(fRed);

%% ...and more additional information about an image
whos fRed