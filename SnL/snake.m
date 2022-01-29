function [pos_1, pos_2] = snake(pos_1,pos_2)
% this function does the same thing for snakes as it does for ladders
% it checks if the position of the piece is located on a snake head, if it
% is then it moves the piece to the bottom of the snake

% the position of the snake is inputed
snake1_start = [10,7];
snake1_end = [3,3];
% position of the pieces is compared with the snakes position and acted
% upon if it matches
[pos_1, pos_2]=checkladder(snake1_start,snake1_end,pos_1,pos_2);

%the same code is performed multiple more times for all the snakes

snake2_start = [7,2];
snake2_end = [4,10];

[pos_1, pos_2]=checkladder(snake2_start,snake2_end,pos_1,pos_2);

snake3_start = [9,7];
snake3_end = [6,1];

[pos_1, pos_2]=checkladder(snake3_start,snake3_end,pos_1,pos_2);

snake4_start = [4,1];
snake4_end = [1,7];

[pos_1, pos_2]=checkladder(snake4_start,snake4_end,pos_1,pos_2);
% if the piece is at an end of a snake then it will move otherwise it will
% remain at the position it was in
end