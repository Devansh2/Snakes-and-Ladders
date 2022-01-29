function [piece]=piece1()
% this code makes the piece
% it will be a coloured vertical rectangle of size 70 by 20 pixels
piece = ones(70,20,3); 
for i = 1:70
    for j = 1:20
        piece(i,j,2)=0;
        piece(:,:,3)=0.5;
    end
end
end