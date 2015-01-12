function varargout = subsasgn(advin,index,varargin)
% SUBSASGN for an advar

% Copyright (c) 2013, Asgeir Birkisson and Tobin A. Driscoll.
idx = index(1).subs;
vin = varargin{:};
varargout = {set(advin,idx,vin)};

end

