function cal = fun_reg(e)
    y = 0;
    persistent yn
    if isempty(yn)
        yn = [0];
    end

    persistent en
    if isempty(en)
        en = [0];
    end

    y = yn(1) + 0.1*e - 0.082*en(1);
    yn(1) = y;
    en(1) = e;
    cal = y;
end