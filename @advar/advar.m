classdef advar
% The class definition file of the advar class.

% Copyright (c) 2013, Asgeir Birkisson and Tobin A. Driscoll. 

    % Initialise the fields of the advars
    properties
        % Fields for value of function and derivative
        val = []; der = [];
        % Fields used for linearity detection.
        linear = []; zeroder = []; 
    end
    
    methods
        % The advar zeroderructor. It takes two input arguments; the first
        % one is the value of the variable, and the second one is the seed
        % for the deriavtive computation.
        function adv = advar(val,der)
            % Make sure we only work with column vectors using val(:)
            adv.val = val(:);
            adv.der = der;

            % Initialise values. Assume linearity to start off. The MATLAB
            % method true gives a logical vector of desired size.
            adv.linear = true(1,length(der));
            % The ~der will give a logical vector of 0 and 1, corresponding
            % to guaranteed independent values -- an entry will have value
            % 1 if entry in der is 0, and 1 for any other entries.
            adv.zeroder = ~der;
        end
    end
end