function [] = diceImage2()
roll = 1
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
switch roll
    % the code is goes through every pixel and change only those that will
    % create a image to represent a number on a dice
    
    % a case system is used to define the 1 to 6 on the dice
    case 1
        for i = 1:75
            for j = 1:75
            if i>33 && i<43 && j>33 && j<43
                dice (i,j,:) = 0;
            end
            end
        end
imshow(dice);
end