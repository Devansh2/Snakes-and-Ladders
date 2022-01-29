function [pos_1,pos_2] = checkladder (ladder_start,ladder_end,pos_1,pos_2)
% this function test if the pice reaches the ladder. This same code is
% similar to the snakes and therefore is used for the snake as well
if (pos_1 == ladder_start)
    % if the position is at one end on the ladder/snake then it will move
    % to the other end
    pos_1 = ladder_end;
end
if (pos_2 == ladder_start)
    % same is done for the computer piece
    pos_2 = ladder_end;
end