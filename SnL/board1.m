function[board] = board1 ()
%board will be made on a 1200 by 1000 pixel white screen. 
%3 is set in the vector to add colour
board = ones(1200,1000,3);
%rows variable was set to amount of rows to be used later on
[rows, ~] = size(board);
%The board will be made on the top 1000 x 1000 pixels. The bottom 200 rows
%will be used to display the dice
%make the board
for i = 1:1000
    %these two lines set the background colour of the board
    board (i,:,1) = 0.9;
    board (i,:,3) = 0.9;
end
%make the lines on the board
for i = 1:1000
    for l = 1:1000
        %for every 100 rows and columns, a black line is placed
    if mod(i,100)==0
        board(i,l,:) = 0;
        board(i-1,l,:)=0;
        board(i+1,l,:)=0;
        board(l,i,:)=0;
        board(l,i-1,:)=0;
        board(l,i+1,:)=0;
    end
    end
    %This sets the lines bordering the board
     for l = 1:3
     board (l,i,:)=0;
     board (i,l,:)=0;
 end
end
imshow(board);
end