function Mag = centerPlaneMagnitude(X, Y, Z)
    dimZ = size(X);
    dimZ = dimZ(3);
    
    mid = floor((dimZ + 1) / 2);
    Mag = X(:, :, mid) .* X(:, :, mid) + Y(:, :, mid) .* Y(:, :, mid) + Z(:, :, mid) .* Z(:, :, mid);
    Mag = sqrt(Mag);
end