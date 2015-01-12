function adv = set( adv,type,value )
% SET fields of advars

% Copyright (c) 2013, Asgeir Birkisson and Tobin A. Driscoll.
switch type
    case 'val'
        adv.val = value;
    case 'der'
        adv.der = value;
    case 'zeroder'
        adv.zeroder = value;
    case 'linear'
        adv.linear = value;
end

end

