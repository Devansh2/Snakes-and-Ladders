function [pos_1,pos_2,rolled,comproll] = rollDice(pos_1, pos_2)
% this function rolls the dice and adds the number rolled to the position
rng('shuffle');
rolls = input('Press enter to roll: ');
    rolled = randi([1,6]);
    pos_1(2) = pos_1(2) + rolled;
    if pos_1(2) > 10
        pos_1(1) = pos_1(1) + 1;
        pos_1(2) = pos_1(2) - 10;
        if pos_1(1)>10
            pos_1 = [10,10];
        end
    end
comproll = randi([1,6]);
    pos_2(2) = pos_2(2) + comproll;
    if pos_2(2) > 10
        pos_2(1) = pos_2(1) + 1;
        pos_2(2) = pos_2(2) - 10;
         if pos_2(1)>10
            pos_2 = [10,10];
        end
    end
end