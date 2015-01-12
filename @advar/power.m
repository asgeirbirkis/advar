function advOut = power(adv1,adv2)
% POWER advar power
%
% ADV^POW returns an advar ADV to the scalar power POW, a scalar ADV to the
% advar power POW, or an advar ADV to the advar power POW. 
%
% See also, advar/mpower.

% Copyright (c) 2013, Asgeir Birkisson and Tobin A. Driscoll. 


if isnumeric(adv1) % double^advar
    % Do the expected things with the values and the derivatives, and
    % update linearity information.
    advOut = adv2;
    advOut.val = adv1.^adv2.val;
    advOut.der = adv1.^adv2.val.*log(adv1).*advOut.der;
    advOut.linear = adv2.zeroder;
elseif isnumeric(adv2) % advar^double
    % Do the expected things with the values and the derivatives, and
    % update linearity information.
    advOut = adv1;
    advOut.val = adv1.val.^adv2;
    advOut.der = adv2.*adv1.val.^(adv2-1).*advOut.der;
    advOut.linear = adv1.zeroder;
elseif isa(adv1,'advar') && isa(adv2,'advar')
    % Do the expected things with the values and the derivatives, and
    % update linearity information.
    
    adv1v = adv1.val; adv2v = adv2.val;
    der = adv2v.*adv1v.^(adv2v-1).*adv1.der + adv1v.^adv2v.*log(adv1v).*adv2.der;

    advOut = advar(adv1.val.^adv2.val,der);
    
    advOut.zeroder = adv1.zeroder & adv2.zeroder;
    
    advOut.linear = adv1.zeroder & adv2.zeroder;
else
    error('Illegal arguments in advar/power');
end

end