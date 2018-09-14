%% This function show how to write images to disk
% imwrite(f, 'filename', 'format') or imwrite(f, 'filename.format')
f = imread('./samples/nostalgia.jpg');
fRed = f(:,:,1);
imwrite(fRed, './tests/test_change_image_format.jpg');
%% For JPEG images, a more general imwrite syntax is imfinfo(f, 'filename.jpg', 'quality', q)
% where q is an integer between 0 and 100.
imwrite(fRed, './tests/test_change_image_format25.jpg','quality', 25);
K = imfinfo('./tests/test_change_image_format25.jpg');
img_bytes = K.Width*K.Height*K.BitDepth/8;
compressed_bytes = K.FileSize;
compression_ratio = img_bytes/compressed_bytes;