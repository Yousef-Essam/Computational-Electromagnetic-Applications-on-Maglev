function [Jxn, Jyn, Jzn] = updateCurrent(Jx, Jy, Jz, dt, f)
    Jxn = Jx * cos(2*pi*f*dt);
    Jyn = Jy * cos(2*pi*f*dt);
    Jzn = Jz * cos(2*pi*f*dt);
end