globals

	constant

		boolean            FALSE                       = false

	constant boolean array TRUE                        = true
	constant integer       JASS_MAX_ARRAY_SIZE         = 262144

	constant integer       PLAYER_NEUTRAL_PASSIVE      = 15
	constant integer       PLAYER_NEUTRAL_AGGRESSIVE   = 12

	constant playercolor   PLAYER_COLOR_RED            = ConvertPlayerColor(0)
	constant playercolor   PLAYER_COLOR_BLUE           = ConvertPlayerColor(1)
	constant playercolor   PLAYER_COLOR_CYAN           = ConvertPlayerColor(2)

	force                  bj_FORCE_ALL_PLAYERS        = null
	force array            bj_FORCE_PLAYER

	integer                bj_MELEE_MAX_TWINKED_HEROES = 0

	// Map area rects
	rect                   bj_mapInitialPlayableArea   = null
	rect                   bj_mapInitialCameraBounds   = null

	// Utility function vars
	integer                bj_forLoopAIndex            = 0
	integer                bj_forLoopBIndex            = 0
	integer                bj_forLoopAIndexEnd         = 0
	integer                bj_forLoopBIndexEnd         = 0

	boolean                bj_slotControlReady         = false
	boolean array          bj_slotControlUsed
	mapcontrol array       bj_slotControl

endglobals
