%% Examples of advar usage
%
% This MATLAB script demonstrates how advars are created, and how they can
% be used in computations to obtain information about linearity of
% mathematical expressions.
%
% Copyright (c) 2013, Asgeir Birkisson and Tobin A. Driscoll.

%% Initialisation
%
% We begin by creating advars to represent the variables u1 and u2, as well
% seeding their derivatives.
u1 = advar(4,[1 0])
u2 = advar(-1,[0 1]);
%%
% Now create an advar to represent the independent variable x.
x = advar(2,[0 0])
%% 
% Create a new variable by combining x, u1, and u2
y = sin(x) + 3*u1 + u2^2

%% Linearity information
% The getlin method returns linearity information about variables. If the
% i-th entry of the vector is equal to 1 indicates, then the variable is
% linear w.r.t. the i-th input variable.
%
% Here we see that y is linear in u1, but nonlinear in u2.
getlin(y)
%%
% The islinear method returns either 1 if a variable is linear w.r.t. all
% the input variables, and 0 otherwise.
islinear(x*u1+u2)
islinear(x*exp(u1))
islinear(x+u1*u2)
islinear(u2/x)
islinear(x/u2)