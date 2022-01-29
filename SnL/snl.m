function [pos_1,pos_2]= game (pos_1,pos_2)
clc;clear;
% piece_1 = piece1();
% pos_1 = [1,1];
% piece_2 = piece2();
% pos_2 = [1,1];

[pos_1 pos_2] = ladder(pos_1,pos_2);

snake1_start = [10,9];
snake1_end = [3,6];

if (pos_1 == snake1_start)
    pos_1 = snake1_end;
end
if (pos_2 == snake1_start)
    pos_2 = snake1_end;
end
n = 0;
% board = board(pos_1,pos_2);
% imshow(board);
% board = [];
pos_1 = rollDice(pos_1);
pos_2 = rollDice(pos_2);
board = board(pos_1,pos_2);
[pos_1 pos_2] = ladder(pos_1,pos_2);
imshow(board);
end