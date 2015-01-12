function advout = exp( advin )
% exp of an advar

% Copyright (c) 2013, Asgeir Birkisson and Tobin A. Driscoll. 

% Compute the value of the variable and the derivative
advout = advar(exp(advin.val), exp(advin.val).*advin.der);

% Compute new linearity information
advout.zeroder = advin.zeroder;
advout.linear = advin.zeroder;

end

