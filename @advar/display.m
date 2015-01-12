function display( adv )
% DISPLAY   Display an advar
%
% DISPLAY(ADV) outputs important information about the advar ADV to the
% command window. It is called automatically when the semicolon is not used at the
% end of a statement that results in a chebfun.

% Copyright 2013 Asgeir Birkisson and Toby Driscoll 

% Set all displayed information up nicely
if length(adv.val) > 1
    valstr = ['[' num2str(adv.val),']'];
    valstr = strrep(valstr,'  ',' ');
else
    valstr = num2str(adv.val);
end

if length(adv.der) > 1
    derstr = ['[' num2str(adv.der),']'];
    % Get rid of double spaces
    derstr = strrep(derstr,'  ',' ');
else
    derstr = num2str(adv.der);
end

if length(adv.linear) > 1
    linstr = ['[' num2str(adv.linear),']'];
    % Get rid of double spaces
    linstr = strrep(linstr,'  ',' ');
else
    linstr = num2str(adv.linear);
end

if length(adv.zeroder) > 1
    zeroderr = ['[' num2str(adv.zeroder),']'];
    % Get rid of double spaces
    zeroderr = strrep(zeroderr,'  ',' ');
else
    zeroderr = num2str(adv.zeroder);
end

% Print to screen
fprintf('%s = \n',inputname(1))
disp(['      val: ',valstr])
disp(['      der: ',derstr])
disp(['   linear: ',linstr])
disp(['    zeroder: ',zeroderr])

end

