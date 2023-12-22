type a      extends b // comment

// comment

type ab     extends be // comment

// comment

type d      extends c // comment
type ass    extends c // comment
type assads extends c // comment
type dd     extends c // comment

// comment

globals
    a b = 1 != 2 != false

endglobals


constant native CreateGroup     takes nothing returns group

constant native DestroyGroup    takes group whichGroup returns nothing

// 111
native          GroupAddUnit    takes group whichGroup, unit whichUnit returns nothing

native          GroupRemoveUnit takes group whichGroup, unit whichUnit returns nothing
native          GroupClear      takes group whichGroup returns nothing

globals constant a b
    b              c = 1234
    constant e     f = 2344

endglobals

function a takes b c, d e, r d returns d

    if a > b and c < 2 or (1123) then
    endif

    local d e = f
endfunction


function MyFunc

    real a = 22 real b = 33 integer c Somefunc()

    real d

endfunction
