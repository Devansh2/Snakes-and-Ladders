function [] = diceImage1()
%this code makes the dice and displayes it
% the dice is 75 by 75 in size
dice = ones(75,75,3);
dice (1,:,:) = 0;
dice (2,:,:) = 0;
dice (74,:,:) = 0;
dice (75,:,:) = 0;
dice (:,1,:) = 0;
dice (:,2,:) = 0;
dice (:,74,:) = 0;
dice (:,75,:) = 0;
imshow(dice);
end