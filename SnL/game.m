function [pos_1,pos_2,board1]= game (pos_1,pos_2,play)
% this function runs the primary objective of the game
% it takes the position of the pieces and runs the main board funtion
% this is used in a driver so it can be performed multiple times easily

%the dice is rolled
[pos_1,pos_2,rolled,comproll] = rollDice(pos_1, pos_2);

% the position is checked for ladder and snakes
[pos_1,pos_2] = ladder(pos_1,pos_2);
[pos_1,pos_2] = snake(pos_1,pos_2);

fprintf('\n');
% the position and the rolled value is placed in the board functio so it
% can run and display the outcome
board1 = board (pos_1,pos_2,play,rolled,comproll);
end