constant native CreateGroup      takes nothing returns group

constant native DestroyGroup takes group whichGroup returns nothing

native GroupAddUnit takes group whichGroup, unit whichUnit returns nothing

native GroupRemoveUnit takes group whichGroup, unit whichUnit returns nothing
native GroupClear takes group whichGroup returns nothing


type a extends b     // comment
type ab extends be       // comment

type d extends c // comment
type d extends c // comment


globals
constant a b
b c=1234
constant e f=2344


endglobals

function


a




takes b c returns
d if a > b and c < 2 or (1123) then

  endif

local d e=f
endfunction
