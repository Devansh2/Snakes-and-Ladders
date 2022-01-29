function [] = diceImage3()
roll = 2
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
        case 2
        for i = 1:75
            for j = 1:75
            if i>14 && i<24 && j>52 && j<62
                dice (i,j,:) = 0;
            end
            if i>52 && i<62 && j>14 && j<24
                dice (i,j,:) = 0;
            end
            end
        end
end
imshow(dice);
end