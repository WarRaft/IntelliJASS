function
a
takes
b c
returns d
local d e = f
endfunction

constant native CreateGroup      takes nothing returns group
native DestroyGroup takes group whichGroup returns nothing
native GroupAddUnit takes group whichGroup, unit whichUnit returns nothing
native GroupRemoveUnit takes group whichGroup, unit whichUnit returns nothing
native GroupClear takes group whichGroup returns nothing
