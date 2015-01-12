function varargout = subsref( advin,index )
% SUBSREF for advars

% Copyright (c) 2013, Asgeir Birkisson and Tobin A. Driscoll.
idx = index(1).subs;
varargout = get(advin,idx);
if ~iscell(varargout),
    varargout = {varargout};
end

end

