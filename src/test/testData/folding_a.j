type jassthread     extends handle
type handlelist     extends handle
type textfilehandle extends handle

		 native ConvertRace                   takes integer i                                          returns race
		 native ConvertAllianceType           takes integer i                                          returns alliancetype
		 native ConvertRacePref               takes integer i,real r                                   returns racepreference
constant native ConvertIGameState             takes integer i                                          returns igamestate
		 native SetUnitStunCounter            takes unit whichUnit,                integer stunCounter returns nothing
		 native SetUnitKiller                 takes unit whichUnit,            unit killer             returns nothing
		 native KillUnitEx                    takes unit whichUnit, unit killer                        returns nothing
		 native MorphUnitToTypeIdEx           takes unit whichUnit, integer uid, integer unitFlags     returns nothing
		 native MorphUnitToTypeId             takes unit whichUnit, integer uid                        returns nothing
		 native GetUnitModelObjectPositionX   takes unit whichUnit, string whichObject                 returns real
		 native GetUnitModelObjectPositionY   takes unit whichUnit, string whichObject                 returns real
		 native GetUnitModelObjectPositionZ   takes unit whichUnit, string whichObject                 returns real
		 native GetUnitModelObjectPositionLoc takes unit whichUnit, string whichObject                 returns location
		 native GetUnitCurrentAnimationId     takes unit whichUnit                                     returns integer


globals
//-----------------------------------------------------------------------
// Constants
//

// Misc constants
constant real      bj_PI                            = 3.14159
constant real      bj_E                             = 2.71828
constant real      bj_CELLWIDTH                     = 128.0
real      bj_CLIFFHEIGHT                   = 128.0
constant real      bj_UNIT_FACING                   = 270.0
constant real      bj_RADTODEG                      = 180.0/bj_PI
real      bj_DEGTORAD                      = bj_PI/180.0
constant real      bj_TEXT_DELAY_QUEST              = 20.00
constant real      bj_TEXT_DELAY_QUESTUPDATE        = 20.00

endglobals
