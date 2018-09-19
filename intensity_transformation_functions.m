%% Function imadjust(f, [low_in high_in], [low_out high_out], gamma)
% f is the image input
% Values between low_in and high_in map to values between low_out and
% high_out. Values below low_in map to low_out, and those above high_in map
% to high_out.
% All inputs, other than f, are specified as values between 0 and 1.
% gamma specifies the shape of the curve. Less than 1: brighter values.
% Greather than 1: darker values. default: 1;
f = imread('./tests/test_change_image_format.jpg');

% this return the negative of the original image.
g1 = imadjust(f, [0 1], [1 0]);
% this return a brighter image.
g2 = imadjust(f, [], [], 0.5);
% this return a darker image.
g3 = imadjust(f, [], [], 2);

imshow(f);
figure();
imshow(g2);
figure()
imshow(g3);

%% Logarithmic and Contrast-Stretching Transformations
% Logarithmic: i = c*log(1 + double(f))
% Shape similar to gamma curve. However, the shape of log is fixed.
% Usage: compress dynamic range(for example, Fourier spectrum)
f = imread('./samples/fourier_spec.png');
g = im2uint16(mat2gray(log(1 + double(f))));

imshow(f);
figure();
imshow(g);
