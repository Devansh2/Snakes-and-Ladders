pos_1=[1,1];
pos_2 = [1,1];
for i =1:5
pos_1 = rollDice(pos_1);
pos_2 = rollDice(pos_2);
board_1 = board(pos_1,pos_2);
imshow(board_1);
end