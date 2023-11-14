globals

e e = "String \" cscsc"

s array b = 1 + + + - - + 2.22332 - 'ASf' + $3434 + 0x224
a array c = e and d or v

constant integer PLAYER_NEUTRAL_PASSIVE = 15/2
constant integer PLAYER_NEUTRAL_AGGRESSIVE = 12

constant playercolor PLAYER_COLOR_RED = ConvertPlayerColor(0 + a + (1 - 3))
constant playercolor PLAYER_COLOR_BLUE = ConvertPlayerColor(1)
constant playercolor PLAYER_COLOR_CYAN = ConvertPlayerColor(2)
constant playercolor PLAYER_COLOR_PURPLE = ConvertPlayerColor(3)
constant playercolor PLAYER_COLOR_YELLOW = ConvertPlayerColor(4)
constant playercolor PLAYER_COLOR_ORANGE = ConvertPlayerColor(5)
constant playercolor PLAYER_COLOR_GREEN = ConvertPlayerColor(6)

//===================================================
// Game Constants
//===================================================

endglobals

globals



endglobals

native CreateGroup takes nothing returns group
native DestroyGroup takes group whichGroup returns nothing
native GroupAddUnit takes group whichGroup, unit whichUnit returns nothing
native GroupRemoveUnit takes group whichGroup, unit whichUnit returns nothing
native GroupClear takes group whichGroup returns nothing

function BJDebugMsg takes string msg, fuck d, c e returns nothing
    set a = 1

    set d = 2 + d

endfunction
