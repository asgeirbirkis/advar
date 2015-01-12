function valOut = get( advin,type )
% GET for an advar -- get the fields of the object.

% Copyright (c) 2013, Asgeir Birkisson and Tobin A. Driscoll.

switch type
    case 'val'
        valOut = advin.val;
    case 'der'
        valOut = advin.der;
    case 'zeroder'
        valOut = advin.zeroder;
    case 'linear'
        valOut = advin.linear;
end

end

