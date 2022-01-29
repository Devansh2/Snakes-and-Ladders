function [start] = titleScreen()
%This code makes the title screen
%it reads a screen that is completely white
screen = imread('screen2.jpeg');
% this reads the snake and ladder title text
title = imread('snake.jpeg');
%this reads the 'press enter to play' button
enter = imread('enter.png');

%this places the snakes and ladder title text on the screen
for i = 1:480
    for j = 1:712
        for k = 1:3
        screen(i+100,j+144,k) = title(i,j,k);
        end
    end
end

% this places the button on the screen
for i = 1:162
    for j = 1:512
        for k = 1:3
        screen(i+900,j+244,k) = enter(i,j,k);
        end
    end
end

%this displays the screen
imshow(screen);
%take an input
tostart = input('');
%if enter is pressed, set start to 1 so the game may start
start = 1;
end