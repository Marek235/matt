function cal = funkcja(u)
    y = 0;
    persistent yn
    if isempty(yn)
        yn = [0, 0];
    end

    persistent un
    if isempty(un)
        un = [0, 0];
    end

    y = 1.895*yn(1) - 0.9048*yn(2) + 0.0145*un(1) + 0.01402*un(2);
    yn(2) = yn(1);
    yn(1) = y;
    un(2) = un(1);
    un(1) = u;
    cal=y;
end