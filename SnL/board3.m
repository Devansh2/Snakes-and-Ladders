function[] = board3 ()
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

%next step is to place the ladders

%ladder1
%The first ladder will be 285 in length
for i = 1:285
    for k = 1:2
        % The pixels making the ladder will be coloured
        board(930-i,i+330,k) =0.1;
        board(929-i,i+330,k) =0.1;
        board(929-i,i+329,k) =0.1;
        board(969-i,i+369,k) =0.1;
        board(969-i,i+370,k) =0.1;
        board(970-i,i+370,k) =0.1;
    end
end
% This code will make the step of the ladder
r = 907;
c = 350;
for i = 1:10
    for l = 1:40
        for k = 1:2
        %There will be 10 steps at equal steps
        board(r+l,c+l,k)=0.1;
        board((r+1)+l,c+l,k)=0.1;
        board((r+1)+l,(c+1)+l,k)=0.1;
        end
    end
    r = r-28;
    c = c+28;
end
%ladder2
for i = 1:180
    for k = 2:3
        board(230-i,i+30,k) =0.1;
        board(229-i,i+30,k) =0.1;
        board(229-i,i+29,k) =0.1;
        board(269-i,i+69,k) =0.1;
        board(269-i,i+70,k) =0.1;
        board(270-i,i+70,k) =0.1;
    end
end
r = 207;
c = 50;
for i = 1:6
    for l = 1:40
        for k = 2:3
        board(r+l,c+l,k)= 0.1;
        board((r+1)+l,c+l,k)=0.1;
        board((r+1)+l,(c+1)+l,k)=0.1;
        end
    end
    r = r-28;
    c = c+28;
end
imshow(board);
end