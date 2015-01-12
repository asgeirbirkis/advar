function advout = cos( advin )
% cos of an advar

% Copyright (c) 2013, Asgeir Birkisson and Tobin A. Driscoll. 

% Copy advin to obtain an object of advar type
advout = advin;

% Compute the value of the variable and the derivative
advout.val = cos(advin.val);
advin.der = -sin(advin.val).*advin.der;


% Compute new linearity information
advout.zeroder = advin.zeroder;
advout.linear = advin.zeroder;

end

