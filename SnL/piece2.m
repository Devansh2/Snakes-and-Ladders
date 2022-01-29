function [piece]=piece2()
% this code makes the piece
% it will be a coloured vertical rectangle of size 70 by 20 pixels, it will
% be a different colour from piece1
piece = ones(70,20,3);
for i = 1:70
    for j = 1:20
        piece(i,j,1)=0.2;
        piece(:,:,2)=0.5;
    end
end
end