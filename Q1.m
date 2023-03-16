%%
% First Question of your Homework
% size of image (squared)
clear all,close all, clc
seed_val = 6;% You will test 4,5 and 6 as seed value
z_test_img = createSmoothedImage(seed_val);
figure(1); imagesc(z_test_img), colormap jet, colorbar
title('Normalized test image - Written by Dilara', 'fontsize', 20)

%%
%write the code segment for showing the Histogram, use 200 bins

%your code should be written here
figure(2); histogram(z_test_img, 200)


% pick a threshold to used in detection of peaks
z_thresh = 2;%values exceeding this threshold will be segmented

% binarize the thresholded image for the values higher than threshold
%hint bwlabeln function can be used
%your code should be written here
[bw, n] = bwlabeln(z_test_img >= z_thresh);

%%
% plot the original image
% Hint: contourf function can be used, do not show lines, contour number
% can be selected as 40, colormap jet can be used
figure(3), clf
subplot(131)
%your code should be written here
contourf(z_test_img, 40, 'EdgeColor', 'none'), colormap jet


% plot the binarized thresholded map
%Hint: imagesc function can be used, axis manipulation is needed to have
%the same localization with previous plot
subplot(132)
%your code should be written here
flipped_img = flip(bw, 2);
rotated_img = imrotate(flipped_img, 180);
imagesc(rotated_img);



% plotting the contours outlining thresholded clusters
%Hint: Hold on/Hold off pair can be used to have contours with line and
%without line in the same figure
% Show the boundaries of segmented part, for very tiny elemets this could
% be tricky ("logical()" function can be used)
%contourf and contour functions can be used
subplot(133)
%your code should be written here
contourf(z_test_img, 40, 'EdgeColor','none')
hold on
contourf(z_test_img, [z_thresh, z_thresh])
hold off

%%
% Finding the area of clusters and summarize their properties
%Hint: returning values of "bwlabeln" function can be used

%your code should be written here
fprintf('There are %d clusters in the image.\n', n)
stats = regionprops(bw, "Area");
areas = [stats.Area];
max_area = max(areas);
min_area = min(areas);
fprintf('The area of the largest cluster is %d pixels.\n', max_area)
fprintf('The area of the smallest cluster is %d pixels.\n', min_area)

%%
