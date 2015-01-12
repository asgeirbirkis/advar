%% Initialisation for one var
x = advar(1, 0);
u = advar(2, 1);

%% One variable involved
pass = [];
w = u.*2;
pass(length(pass) + 1) = w.linear == 1;

w = u.*(x+2);
pass(length(pass) + 1) = w.linear == 1;

w = sin(u).*(x+2);
pass(length(pass) + 1) = w.linear == 0;

w = 2.*u;
pass(length(pass) + 1) = w.linear == 1;

w = x.*u;
pass(length(pass) + 1) = w.linear == 1;

w = u.*(u+2);
pass(length(pass) + 1) = w.linear == 0

passOld = pass;
%% Initialisation for two vars
x = advar(1, [0 0]);
u = advar(2, [1 0]);
v = advar(3, [0 1]);

%% Two variables, but still only one in compuations
pass = passOld;
w = u.*2;
pass(length(pass) + 1) = all( w.linear == [1 1]);

w = u.*(x+2);
pass(length(pass) + 1) = all( w.linear == [1 1]);

w = sin(u).*(x+2);
pass(length(pass) + 1) = all( w.linear == [0 1]);

w = 2.*u;
pass(length(pass) + 1) = all( w.linear == [1 1]);

w = x.*u;
pass(length(pass) + 1) = all( w.linear == [1 1]);

w = u.*(u+2);
pass(length(pass) + 1) = all( w.linear == [0 1])

passOld2 = pass;
%% Combination of variables
pass = passOld2;
w = u.*v;
pass(length(pass) + 1) = all( w.linear == [0 0]);

w = sin(u).*v;
pass(length(pass) + 1) = all( w.linear == [0 0]);

w = u.*(u.*v);
pass(length(pass) + 1) = all( w.linear == [0 0])
