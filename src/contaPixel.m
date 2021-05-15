
% img = imread('circle.bmp');

function [pb, pp] = contaPixel(img)

[l, c] = size(img);

pp = 0 ;
pb = 0 ;

for i = 1 : l
    for j = 1 : c
        if (img(i,j) ~= 0)
            pb = pb + 1 ;
        else
            pp = pp + 1 ;
        end
        
    end
end

end

