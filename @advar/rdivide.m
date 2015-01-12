function advOut = rdivide(adv1,adv2)
% RDIVIDE Right division of advars

% Copyright (c) 2013, Asgeir Birkisson and Tobin A. Driscoll. 

if isnumeric(adv1) % double/advar
    advOut = adv2;
    advOut.val = adv1./adv2.val;
    advOut.der = (-adv1./(adv2.val).^2).*advOut.der;
    advOut.zeroder = adv2.zeroder;
    advOut.linear = adv2.zeroder;
    
elseif isnumeric(adv2) % advar/double
    advOut = adv1*(1/adv2);
    advOut.zeroder = adv1.zeroder;
    advOut.linear = adv1.linear;
    
elseif isa(adv1,'advar') && isa(adv2,'advar')
    % Update value and derivatives
    adv1v = adv1.val; adv2v = adv2.val;
    der = (1./adv2v).*adv1.der - (adv1v./adv2v.^2).*adv2.der;

    advOut = advar(adv1.val./adv2.val,der);
    
    % Obtain linearity information
    advOut.zeroder = adv1.zeroder & adv2.zeroder;
    
    advOut.linear = adv1.linear & adv2.zeroder & ...
        ( adv1.zeroder | all(adv2.zeroder) );
    
else
    error('Illegal arguments in advar/rdivide');
end

end