F = im2double(imread('chest.pgm'));
%simpleDifferentiation(F);
[result, deltaX, deltaY] = prewitt(F);

figure(1);
imshow(result);

figure(2);
imshow(deltaX);

figure(3);
imshow(deltaY);