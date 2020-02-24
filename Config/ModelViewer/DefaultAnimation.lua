-- All arguments animation

local period = 10;
local t =   {  
        {0, -1},
        {period/2, 1},
        {period, -1},
};

animation = {};
for i = 0, 10000 do
    animation[i] = t;
end;
