function plot(varargin)
% PLOT Plot an advar

% Copyright (c) 2013, Asgeir Birkisson and Tobin A. Driscoll.

if nargin == 1
    ady = varargin{1};
    plot(ady.val);
elseif nargin == 2
    plot(varargin{1}.val,varargin{2}.val);
end
    

end

