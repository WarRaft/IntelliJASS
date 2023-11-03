test

type agent extends handle // all reference counted objects

constant native ConvertRace takes integer i returns race

globals
constant playercolor PLAYER_COLOR_RED = ConvertPlayerColor(0)

endglobals

native AddHeroXP takes unit whichHero, integer xpToAdd, boolean showEyeCandy returns nothing

function main takes nothing returns nothing


endfunction


