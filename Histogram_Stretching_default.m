% using the default limits [0.01 0.99]:

I = imread('c:\Myimage2.jpg');

% to stretch contrast of an image, will use imadjust() function and call another function stretchlim():
% J = imadjust(I,[low_in high_in],[low_out high_out])
 
% Adjust the contrast in the image using stretchlim to set the limits, and display the result. 
% using the default limits [0.01 0.99], saturating the upper 1% and the lower 1%.
 
J = imadjust(I,stretchlim(I),[]);
 
subplot(2,2,1), imshow(I); title('Original Image');
subplot(2,2,3), imshow(J); title('Stretched Contrast Image');
subplot(2,2,2), imhist(I); title('Histogram of Original Image');
subplot(2,2,4), imhist(J); title('Histogram of Stretched Contrast Image');
