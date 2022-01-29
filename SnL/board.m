%This is the main board funtion for the snakes and ladder game
%This function makes the board, sets the pieces, snakes, ladders and
%displays the dice roll

function[board] = board (position,position2,play,rolled,comproll)
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

%This process will be repeated 4 more times to make 4 more ladders at
%different positions

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

%ladder3
for i = 1:200
    board(840-2*i,i+10,1)=0;
    board(841-2*i,i+10,1)=0;
    board(839-2*i,i+10,1)=0;
    board(880-2*i,i+40,1)=0;
    board(881-2*i,i+40,1)=0;
    board(879-2*i,i+40,1)=0;
    board(840-2*i,i+10,3)=0;
    board(841-2*i,i+10,3)=0;
    board(839-2*i,i+10,3)=0;
    board(880-2*i,i+40,3)=0;
    board(881-2*i,i+40,3)=0;
    board(879-2*i,i+40,3)=0;
end
r = 826;
c = 17;
for i = 1:10
    for l = 1:33
      board (r+l,c+l,1) = 0;
      board (r+l,c+l,3) = 0;
      board (r+l+1,c+l,1) = 0;
      board (r+l+1,c+l,3) = 0;
      board (r+l-1,c+l,1) = 0;
      board (r+l-1,c+l,3) = 0;
    end
    r = r - 38;
    c = c + 19;
end

%ladder4
 for i = 1:290
     for k = 1:2
     board(660-2*i,720-i,k)=0.75;
     board(661-2*i-2,720-i,k)=0.25;
     board(659-2*i+2,720-i,k)=0.25;
     board(630-2*i,780-i,k)=0.25;
     board(631-2*i-2,780-i,k)=0.25;
     board(629-2*i+2,780-i,k)=0.25;
     end
 end
r = 630;
c = 705;
 for i = 1:10
    for l = 1:50
        for k = 1:2
      board (r-l,c+l,k) = .25;
      board (r-l+1,c+l,k) = .25;
      board (r-l-1,c+l,k) = .25;
        end
    end
    r = r - 58;
    c = c - 29;
 end
 
%ladder5

for i = 1:180
    for k = 2:3
        board(270-i,920-i,k) =0.5;
        board(271-i,920-i,k) =0.5;
        board(269-i,920-i,k) =0.5;
        board(219-i,970-i,k) =0.5;
        board(220-i,970-i,k) =0.5;
        board(221-i,970-i,k) =0.5;
    end
end
r = 200;
c = 950;
for i = 1:6
    for l = 1:50
        for k = 2:3
            board(r+l,c-l,k)= 0.5;
            board(r+l+1,c-l,k)= 0.5;
            board(r+l-1,c-l,k)= 0.5;
        end
    end
    r = r-29;
    c = c-29;
end

%This part makes the snakes on the board

%snake1

%for this one, the program will go through every pixel and colour the only
%ones that are required to make the snake

for i = 1:1200
    for l = 1:1000
        for k = 1:2
            %i = rows and l = columns
        if i>50 && i<95 && l>310 && l <350
            board(i,l,k) = 0.5;
        end
        if i>94 && i<150 && l>320 && l<340
             board(i,l,k) = 0.5;
        end
        if i>149 && i < 170 && l < 340 && l > 265
            board(i,l,k) = 0.5;
        end
        if i>169 && i<369 && l>265 && l<285 
            board(i,l,k) = 0.5;
        end
        if i>368 && i<389 && l>265 && l<440
           board(i,l,k) = 0.5;
        end
        if i>368 && i<740 && l>439 && l <460
            board(i,l,k) = 0.5;
        end
        if i>739 && i<760 && l>260 && l<460
            board(i,l,k) = 0.5;
        end
        if l>315 && l<325 && i >65 && i < 75
            board(i,l,2) = 0;
            board(i,l,3) = 0.3;
        end
        if l>335 && l<345 && i >65 && i < 75
            board(i,l,2) = 0;
            board(i,l,3) = 0.3;
        end
    end
    end
end

%This process will be repeated multiple times with diffrent if loops to
%perform different shapes and create snakes in different positions

%snake 2

for i = 1:1000
    for j = 1:1000
        for k = 2:3
            if i>340 && i<380 && j>110 && j <155
                board(i,j,k) = 0.2;
            end
            if i>350 && i<370 && j<111 && j > 45
                board(i,j,k) = 0.2;
            end
            if i>369 && i<630 && j<65 && j > 45
                board(i,j,k) = 0.2;
            end
            if i>345 && i<355 && j> 120 && j<130
                       board(i,j,1) = 0.2;
                       board(i,j,3) = 0.4;
            end
            if i>365 && i<375 && j> 120 && j<130
                       board(i,j,1) = 0.2;
                       board(i,j,3) = 0.4;
            end
        end
    end
end

%snake3

for i = 1:1000
    for j = 1:1000
        if i>150 && i<195 && j>630 && j <670
            board(i,j,1) = 0.5;
            board(i,j,3) = 0.5;
        end
        if i>194 && i<290 && j>640 && j <660
            board(i,j,1) = 0.5;
            board(i,j,3) = 0.5;
        end
        if i>270 && i<290 && j>640 && j < 940
            board(i,j,1) = 0.5;
            board(i,j,3) = 0.5;
        end
        if i>289 && i<450 && j>920 && j <940
            board(i,j,1) = 0.5;
            board(i,j,3) = 0.5;
        end
          if j>635 && j<645 && i > 170 && i < 180
            board(i,j,1) = 0;
            board(i,j,2) = 0;
        end
        if j>655 && j<665 && i >170 && i < 180
            board(i,j,1) = 0;
            board(i,j,2) = 0;
        end
    end
end

%snake4

for i = 1:1000
    for j = 1:1000     
         if i>650 && i<695 && j>930 && j <970
            board(i,j,3) = 0.8;
            board(i,j,2) = 0.2;
         end
         if i>694 && i<830 && j>940 && j<960
            board(i,j,3) = 0.8;
            board(i,j,2) = 0.2;
         end
         if i >810 && i<830 && j<941 && j > 640
            board(i,j,3) = 0.8;
            board(i,j,2) = 0.2;
         end
         if i>829 && i<930 && j>640 && j<660
            board(i,j,3) = 0.8;
            board(i,j,2) = 0.2;
         end
         if j>935 && j<945 && i>665 && i<675
            board(i,j,1) = 0.2;
            board(i,j,3) = 0.2;
         end
         if j>955 && j<965 && i>665 && i<675
            board(i,j,1) = 0.2;
            board(i,j,3) = 0.2;
         end
    end
end

%The next code will create a piece and place it in the right position on
%the board

%Get the display information for the pieces so they can be put onto the
%board
piece = piece1();
piece_2 = piece2();

%Next the dice needs to be rolled and the position of the pieces must be
%determined

%The dice must also be displayed on the board 

%this code displays the dice effect
if play > 1
for i = 1:15
%The dice is shown 15 times with random numbers to make the dice effect
%random number is chosen
    roll = randi([1,6]);
    %that number dice is chosen
    dices = diceImage(roll);
    %that dice is then displayed on the board
    for l = 1:75
        for k = 1:75
            for j =1:3
            board (l+1063,k+215,j) = dices(l,k,j);
            end
        end
    end
    %the board is shown
    imshow(board);
end
%the rolled value is taken
roll = rolled;
%the rolled value dice is chosen
    dices = diceImage(roll);
    %that value dice is displayed
    for l = 1:75
        for k = 1:75
            for j =1:3
            board (l+1063,k+215,j) = dices(l,k,j);
            end
        end
    end
    imshow(board);
    fprintf ('\nYou rolled %d',rolled);
    pause(0.5);
end

%setting player position
%the position of the piece, which includes the rolled value, is taken to be
%displayed on the board
row_1 = position(1);
position = (position)*100;
row = position(1)+120;
col = position(2)-80;
col2 = 1060-position(2);
%that pieces position is multiplied by 100 as that is the size of the
%squares on the board

%the size of the pieces is used to make the loop for setting them on the
%board
for i = 1:70
    for l = 1:20
        for k = 1:3
            % the position of the piece is used to find that position on
            % the board and display it
        if (mod(row_1,2)~=0)
             board(rows-(i+row-1),(l+col),k) = piece(i,l,k);
        else
            board(rows-(i+row-1),(l+col2),k) = piece(i,l,k);
        end
        end
    end
end

% the same process is performed for the computer piece, but it just doesn't
% have the player input.
%compdice
if play>1
for i = 1:15
    roll = randi([1,6]);
    dices = diceImage(roll);
    for l = 1:75
        for k = 1:75
            for j =1:3
              board (l+1063,k+715,j) = abs(1-dices(l,k,j));
            end
        end
    end
    imshow(board);
end
roll = comproll;
dices = diceImage(roll);
    for l = 1:75
        for k = 1:75
            for j =1:3
              board (l+1063,k+715,j) = abs(1-dices(l,k,j));
            end
        end
    end
    imshow(board);
    fprintf ('\nComputer rolled %d',comproll);
end
%setting computer position
% the position of the computer is set the same way, but it is set 50 pixel
% apart from the player piece so they remain spereate at all times
row_1 = position2(1);
position2 = (position2)*100;
row = position2(1)+120;
col = position2(2)-35;
col2 = 1015-position2(2);
for i = 1:70
    for l = 1:20
        for k = 1:3
        if (mod(row_1,2)~=0)
            board(rows-(i+row-1),l+col,k) = piece_2(i,l,k);
        end
        if(mod(row_1,2)==0)
            board(rows-(i+row-1),l+col2,k) = piece_2(i,l,k);
        end
        end
    end
end
end