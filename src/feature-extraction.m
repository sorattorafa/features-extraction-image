fid = fopen ('features-response/training-images.txt', 'w');

for i = 0: 9
    pathImage = strcat('baseImagens/Imagens_Treinamento/Imagens_Treinamento/', num2str (i) , '/*.bmp')
    imagefiles = dir(pathImage);
    [num, z] = size(imagefiles);
    for j = 1: num
        imageName = strcat('baseImagens/Imagens_Treinamento/Imagens_Treinamento', '/', num2str (i), '/',imagefiles(j).name);
        image1 = imread(imageName);
        huFeaturesImage1 = invmoments(image1); 
        csvwrite(fid, huFeaturesImage1);
        csvwrite(fid, i);
        
       
    endfor
endfor
fclose(fid)

fid = fopen ('features-response/test-images.txt', 'w');

for i = 0: 9
    pathImage = strcat('baseImagens/Imagens_Teste/Imagens_Teste/', num2str (i) , '/*.bmp')
    imagefiles = dir(pathImage);
    [num, z] = size(imagefiles);
    for j = 1: num
        imageName = strcat('baseImagens/Imagens_Teste/Imagens_Teste', '/', num2str (i), '/',imagefiles(j).name);
        image1 = imread(imageName);
        huFeaturesImage1 = invmoments(image1);
        csvwrite(fid, huFeaturesImage1);
        csvwrite(fid, i);;
    endfor
endfor
fclose(fid)