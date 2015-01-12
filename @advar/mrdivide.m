function advOut = mrdivide(adv1,adv2)
% MRDIVIDE Right divide of advars

% Copyright (c) 2013, Asgeir Birkisson and Tobin A. Driscoll.
if length(adv1.val) == 1 && length(adv2.val) == 1 
    advOut = rdivide(adv1,adv2);
else
    error('Dimension mismatch');
end