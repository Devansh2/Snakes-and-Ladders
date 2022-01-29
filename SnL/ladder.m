function [pos_1, pos_2] = ladder(pos_1,pos_2)
%this code test the position of the piece with all ladders

%it takes the position of a ladder and the pieces and runs the checkladder
%funtion on them to move the piece if it comes to a ladder position
ladder1_start = [1,4];
ladder1_end = [4,4];

[pos_1, pos_2]=checkladder(ladder1_start,ladder1_end,pos_1,pos_2);

% the same code is run for all ladders

ladder2_start = [8,10];
ladder2_end = [10,8];

[pos_1, pos_2]=checkladder(ladder2_start,ladder2_end,pos_1,pos_2);

ladder3_start = [2,10];
ladder3_end = [6,8];

[pos_1, pos_2]=checkladder(ladder3_start,ladder3_end,pos_1,pos_2);

ladder4_start = [4,3];
ladder4_end = [10,6];

[pos_1, pos_2]=checkladder(ladder4_start,ladder4_end,pos_1,pos_2);

ladder5_start = [8,1];
ladder5_end = [10,3];

[pos_1, pos_2]=checkladder(ladder5_start,ladder5_end,pos_1,pos_2);
% if the piece is at an end of a ladder then it will move otherwise it will
% remain at the position it was in
end