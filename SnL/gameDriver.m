clc;clear;
%This script is the main driver for the snakes and ladders game

%Start by loading the title screen
start = titleScreen();

%If enter is pressed, start the game
if start == 1
    
%Set initial position
pos_1 = [1,1];
pos_2 = [1,1];

%situation false until game ends, so a while loop can be used
situation = false;

%variable play is set so the dice is not rolled for the first display
play = 0;

%show the board with the initial positions
board1 = board (pos_1,pos_2,play);
%perform the board funtion to get the board
%show the board
imshow(board1);

%run the game until someone wins
 while situation ~= true

    %change the play so the dice is rolled 
    play = play+2;
    %perform the board funtion again with the new position so the player
    %and the computer moves
    [pos_1,pos_2,board1] = game(pos_1,pos_2,play);
    %display the board
    imshow(board1);
    
    %run this funtion again until some one wins
    
    fprintf('\n');
    
    %when its a draw
    if pos_1(1) == 10&&pos_1(2) == 10 && pos_2(1) == 10&&pos_2(2) == 10
        situation = true;
        %set situation true meaning the game is over
        fprintf('Its a draw\n');
        %print 'its a draw' and display a image
        winner = imread('draw.jpg');
        imshow(winner)
    %when player wins
    elseif pos_1(1) == 10&&pos_1(2) == 10
        situation = true;
        %set situation true meaning the game is over
        fprintf('you win\n');
        %print 'you win' and display a image
        winner = imread('winner.jpg');
        imshow(winner);
    %when computer wins
    elseif pos_2(1) == 10&&pos_2(2) == 10
        situation = true;
        %set situation true meaning the game is over
        fprintf ('computer wins\n');
        %print 'you lose' and display a image
        winner = imread ('loss.jpg');
        imshow(winner);
    end
end
end
%The code ends when the game ends