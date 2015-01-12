function advOut = mpower(adv,pow)
% MPOWER advar power
%
% ADV^POW returns an advar ADV to the scalar power POW, a scalar ADV to the
% advar power POW, or an advar ADV to the advar power POW. 
%
% MPOWER will only work if length(ADV) is equal to one, otherwise, use
% advar/mpower.
%
% See also, advar/mpower.

% Copyright (c) 2013, Asgeir Birkisson and Tobin A. Driscoll. 

if length(adv.val) == 1
    advOut = power(adv,pow);
else
    error('Dimension mismatch');
end