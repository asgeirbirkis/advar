function advOut = mtimes(adv1,adv2)
% MTIMES Multiplication of two advars.

% Copyright (c) 2013, Asgeir Birkisson and Tobin A. Driscoll.

if isnumeric(adv1) % double*advar
    advOut = adv2;
    advOut.val = adv1*advOut.val;
    advOut.der = adv1*advOut.der;
elseif isnumeric(adv2) % advar*double
    advOut = adv1;
    advOut.val = adv2*advOut.val;
    advOut.der = adv2*advOut.der;    
elseif isa(adv1,'advar') && isa(adv2,'advar') % advar*advar
    % Update the values and the derivatives
    advOut = advar(adv1.val*adv2.val,adv1.val*adv2.der + adv2.val*adv1.der);
    
    % Obtain linearity information
    adv1linear = adv1.linear;
    adv2linear = adv2.linear;
    adv1zeroder = adv1.zeroder;
    adv2zeroder = adv2.zeroder;
    advOut.linear = adv1linear & adv2linear & ...
         ((all(adv1zeroder) || all(adv2zeroder)) | (adv1zeroder & adv2zeroder));
     
else
    error('Illegal arguments in advar/mtimes');
end

end