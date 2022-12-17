function [X, Y, Z] = getInitialData(fileName)
    mat = readmatrix(fileName);
    sizeMat = size(mat);
    sizeMat = sizeMat(1);
    sizeX = 0; sizeY = 0;
    
    m = 1;
    y1 = mat(1, 2);
    while (mat(m, 2) == y1)
        sizeX = sizeX + 1;
        m = m + 1;
    end
    
    m = 1;
    z1 = mat(1, 3);
    while (mat(m, 3) == z1)
        sizeY = sizeY + 1;
        m = m + 1;
    end
    sizeY = sizeY / sizeX;
    sizeZ = sizeMat / (sizeX * sizeY);
    
    X = zeros(sizeX, sizeY, sizeZ);
    Y = X; Z = X;
    
    m = 1;
    for k = 1:sizeZ
        for j = 1:sizeY
            for i = 1:sizeX
                X(i, j, k) = mat(m, 4);
                Y(i, j, k) = mat(m, 6);
                Z(i, j, k) = mat(m, 8);
                m = m + 1;
            end
        end
    end
end
