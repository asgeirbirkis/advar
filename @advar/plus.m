function advOut = plus(adv1,adv2)
% PLUS Addition of two advars

% Copyright (c) 2013, Asgeir Birkisson and Tobin A. Driscoll.

if isnumeric(adv1)
    advtemp = adv1;
    adv1 = adv2;
    adv2 = advtemp;
end

advOut = adv1;

if isnumeric(adv2)
    advOut.val = advOut.val + adv2;
else
    advOut = adv1;
    advOut.val = adv1.val + adv2.val;
    advOut.der = adv1.der + adv2.der;
    
    % Update linearity information
    advOut.linear = adv1.linear & adv2.linear;
    advOut.zeroder = adv1.zeroder & adv2.zeroder;
end


end