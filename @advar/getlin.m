function l = getlin(adv)
% L = GETDER(ADV) returns linearity information about the advar ADV.
%
% An entry equal to 1 in the vector L indicates that ADV is linear in the
% corresponding input variable.

% Copyright (c) 2013, Asgeir Birkisson and Tobin A. Driscoll. 

l = adv.linear;
end