function isl = islinear(adv)
% ISL = GETDER(ADV) returns linearity information about the advar ADV.
%
% ISL = 1 indicates that ADV is linear in all the input variables.
% Otherwise, ISL will be 0.

% Copyright (c) 2013, Asgeir Birkisson and Tobin A. Driscoll. 

isl = all(adv.linear);
    
end