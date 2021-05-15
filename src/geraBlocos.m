#pkg load image
function zonas = geraBlocos(image1, linhas, colunas)

[height, width] = size(image1);

zonas = zeros (linhas,colunas);

for i =1 : height

  for j = 1 : width

    if image1(i, j) == 0

      if linhas == 1 && colunas == 1

        zonas(1,1) = zonas(1,1) + 1;

      elseif linhas == 2 &&  colunas ==2

        if i <= 13 && j <= 7
            zonas(1,1) = zonas(1,1) + 1;
        endif
        
        if i > 13 && j <= 7
            zonas(1,2) = zonas(1,2) + 1;
        endif
        
        if i <= 13 && j > 7
            zonas(2,1) = zonas(2,1) + 1;
        endif
        
        if i > 13 && j > 7
            zonas(2,2) = zonas(2,2) + 1;
        endif

     elseif linhas == 3 &&  colunas ==3

        if i <= 9 && j <= 4
            zonas(1,1) = zonas(1,1) + 1;

        elseif i <= 17 && j<= 4
            zonas(1,2) = zonas(1,2) + 1;

        elseif i <= 26 && j <= 4
            zonas(1,3) = zonas(1,3) + 1;
        
        elseif i <= 9 && j <= 9
            zonas(2,1) = zonas(2,1) + 1;

        elseif i <= 17 && j<= 9
            zonas(2,2) = zonas(2,2) + 1;

        elseif i <= 26 && j <= 9
            zonas(2,3) = zonas(2,3) + 1;
            
        elseif i <= 9 && j <= 13
            zonas(3,1) = zonas(3,1) + 1;

        elseif i <= 17 && j<= 13
            zonas(3,2) = zonas(3,2) + 1;

        elseif i <= 26 && j <= 13
            zonas(3,3) = zonas(3,3) + 1;
        endif
      endif
    endif
  endfor
endfor
