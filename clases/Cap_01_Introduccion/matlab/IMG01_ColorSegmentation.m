close all
warning off
I = imread('flowers.jpg');
figure(1)
imtool(I)
pause

Red   = I(:,:,1);
Green = I(:,:,2);
Blue  = I(:,:,3);
figure(2)
subplot(2,3,1);imshow(Red)  ;title('Red');
subplot(2,3,2);imshow(Green);title('Green');
subplot(2,3,3);imshow(Blue) ;title('Blue');
subplot(2,3,4);imhist(Red)  ;title('Histogram');
subplot(2,3,5);imhist(Green);title('Histogram');
subplot(2,3,6);imhist(Blue) ;title('Histogram');
pause

% Step 0: Color Segmentation (Red Hi and Green and Blue Low)
SegRed_0 = Red>150 & Green <40 & Blue < 40;
figure(3)
imshow(SegRed_0);title('Color Segmentation');
pause

% Step 1: Remove small regions
SegRed_1 = bwareaopen(SegRed_0,1500);
figure(4)
imshow(SegRed_1);title('Large Regions');
pause

[ii,jj] = find(SegRed_1==1);
i1 = min(ii);i2 = max(ii);
j1 = min(jj);j2 = max(jj);

figure(5)
imshow(I);title('Bounding Box');
hold on
plot([j1 j2 j2 j1 j1],[i1 i1 i2 i2 i1],'r','LineWidth',3)
text(j1-325,i2-30,'Red Flower','FontSize',20,'Color','White');
pause

S = I(i1:i2,j1:j2,:);
figure(6)
imshow(S);title('Segmented Red Flower');


