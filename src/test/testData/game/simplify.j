globals
    //-----------------------------------------------------------------------
    // Constants
    //

    // Misc constants
    constant real      bj_PI                            = 3.14159
    constant real      bj_E                             = 2.71828
    constant real      bj_CELLWIDTH                     = 128.0
    constant real      bj_CLIFFHEIGHT                   = 128.0
    constant real      bj_UNIT_FACING                   = 270.0
    constant real      bj_RADTODEG                      = 180.0/bj_PI
    constant real      bj_DEGTORAD                      = bj_PI/180.0
    constant real      bj_TEXT_DELAY_QUEST              = 20.00
    constant real      bj_TEXT_DELAY_QUESTUPDATE        = 20.00
    constant real      bj_TEXT_DELAY_QUESTDONE          = 20.00
    constant real      bj_TEXT_DELAY_QUESTFAILED        = 20.00
    constant real      bj_TEXT_DELAY_QUESTREQUIREMENT   = 20.00
    constant real      bj_TEXT_DELAY_MISSIONFAILED      = 20.00
    constant real      bj_TEXT_DELAY_ALWAYSHINT         = 12.00
    constant real      bj_TEXT_DELAY_HINT               = 12.00
    constant real      bj_TEXT_DELAY_SECRET             = 10.00
    constant real      bj_TEXT_DELAY_UNITACQUIRED       = 15.00
    constant real      bj_TEXT_DELAY_UNITAVAILABLE      = 10.00
    constant real      bj_TEXT_DELAY_ITEMACQUIRED       = 10.00
    constant real      bj_TEXT_DELAY_WARNING            = 12.00
    constant real      bj_QUEUE_DELAY_QUEST             =  5.00
    constant real      bj_QUEUE_DELAY_HINT              =  5.00
    constant real      bj_QUEUE_DELAY_SECRET            =  3.00
    constant real      bj_HANDICAP_EASY                 = 60.00
    constant real      bj_GAME_STARTED_THRESHOLD        =  0.01
    constant real      bj_WAIT_FOR_COND_MIN_INTERVAL    =  0.10
    constant real      bj_POLLED_WAIT_INTERVAL          =  0.10
    constant real      bj_POLLED_WAIT_SKIP_THRESHOLD    =  2.00

    // Game constants
    constant integer   bj_MAX_INVENTORY                 =   6
    constant integer   bj_MAX_PLAYERS                   =  12
    constant integer   bj_PLAYER_NEUTRAL_VICTIM         =  13
    constant integer   bj_PLAYER_NEUTRAL_EXTRA          =  14
    constant integer   bj_MAX_PLAYER_SLOTS              =  16
    constant integer   bj_MAX_SKELETONS                 =  25
    constant integer   bj_MAX_STOCK_ITEM_SLOTS          =  11
    constant integer   bj_MAX_STOCK_UNIT_SLOTS          =  11
    constant integer   bj_MAX_ITEM_LEVEL                =  10

    // Ideally these would be looked up from Units/MiscData.txt,
    // but there is currently no script functionality exposed to do that
    constant real      bj_TOD_DAWN                      = 6.00
    constant real      bj_TOD_DUSK                      = 18.00

    // Melee game settings:
    //   - Starting Time of Day (TOD)
    //   - Starting Gold
    //   - Starting Lumber
    //   - Starting Hero Tokens (free heroes)
    //   - Max heroes allowed per player
    //   - Max heroes allowed per hero type
    //   - Distance from start loc to search for nearby mines
    //
    constant real      bj_MELEE_STARTING_TOD            = 8.00
    constant integer   bj_MELEE_STARTING_GOLD_V0        = 750
    constant integer   bj_MELEE_STARTING_GOLD_V1        = 500
    constant integer   bj_MELEE_STARTING_LUMBER_V0      = 200
    constant integer   bj_MELEE_STARTING_LUMBER_V1      = 150
    constant integer   bj_MELEE_STARTING_HERO_TOKENS    = 1
    constant integer   bj_MELEE_HERO_LIMIT              = 3
    constant integer   bj_MELEE_HERO_TYPE_LIMIT         = 1
    constant real      bj_MELEE_MINE_SEARCH_RADIUS      = 2000
    constant real      bj_MELEE_CLEAR_UNITS_RADIUS      = 1500
    constant real      bj_MELEE_CRIPPLE_TIMEOUT         = 120.00
    constant real      bj_MELEE_CRIPPLE_MSG_DURATION    = 20.00
    constant integer   bj_MELEE_MAX_TWINKED_HEROES_V0   = 3
    constant integer   bj_MELEE_MAX_TWINKED_HEROES_V1   = 1

    // Delay between a creep's death and the time it may drop an item.
    constant real      bj_CREEP_ITEM_DELAY              = 0.50

    // Timing settings for Marketplace inventories.
    constant real      bj_STOCK_RESTOCK_INITIAL_DELAY   = 120
    constant real      bj_STOCK_RESTOCK_INTERVAL        = 30
    constant integer   bj_STOCK_MAX_ITERATIONS          = 20

    // Max events registered by a single "dest dies in region" event.
    constant integer   bj_MAX_DEST_IN_REGION_EVENTS     = 64

    // Camera settings
    constant integer   bj_CAMERA_MIN_FARZ               = 100
    constant integer   bj_CAMERA_DEFAULT_DISTANCE       = 1650
    constant integer   bj_CAMERA_DEFAULT_FARZ           = 5000
    constant integer   bj_CAMERA_DEFAULT_AOA            = 304
    constant integer   bj_CAMERA_DEFAULT_FOV            = 70
    constant integer   bj_CAMERA_DEFAULT_ROLL           = 0
    constant integer   bj_CAMERA_DEFAULT_ROTATION       = 90

    // Rescue
    constant real      bj_RESCUE_PING_TIME              = 2.00

    // Transmission behavior settings
    constant real      bj_NOTHING_SOUND_DURATION        = 5.00
    constant real      bj_TRANSMISSION_PING_TIME        = 1.00
    constant integer   bj_TRANSMISSION_IND_RED          = 255
    constant integer   bj_TRANSMISSION_IND_BLUE         = 255
    constant integer   bj_TRANSMISSION_IND_GREEN        = 255
    constant integer   bj_TRANSMISSION_IND_ALPHA        = 255
    constant real      bj_TRANSMISSION_PORT_HANGTIME    = 1.50

    // Cinematic mode settings
    constant real      bj_CINEMODE_INTERFACEFADE        = 0.50
    constant gamespeed bj_CINEMODE_GAMESPEED            = MAP_SPEED_NORMAL

    // Cinematic mode volume levels
    constant real      bj_CINEMODE_VOLUME_UNITMOVEMENT  = 0.40
    constant real      bj_CINEMODE_VOLUME_UNITSOUNDS    = 0.00
    constant real      bj_CINEMODE_VOLUME_COMBAT        = 0.40
    constant real      bj_CINEMODE_VOLUME_SPELLS        = 0.40
    constant real      bj_CINEMODE_VOLUME_UI            = 0.00
    constant real      bj_CINEMODE_VOLUME_MUSIC         = 0.55
    constant real      bj_CINEMODE_VOLUME_AMBIENTSOUNDS = 1.00
    constant real      bj_CINEMODE_VOLUME_FIRE          = 0.60

    // Speech mode volume levels
    constant real      bj_SPEECH_VOLUME_UNITMOVEMENT    = 0.25
    constant real      bj_SPEECH_VOLUME_UNITSOUNDS      = 0.00
    constant real      bj_SPEECH_VOLUME_COMBAT          = 0.25
    constant real      bj_SPEECH_VOLUME_SPELLS          = 0.25
    constant real      bj_SPEECH_VOLUME_UI              = 0.00
    constant real      bj_SPEECH_VOLUME_MUSIC           = 0.55
    constant real      bj_SPEECH_VOLUME_AMBIENTSOUNDS   = 1.00
    constant real      bj_SPEECH_VOLUME_FIRE            = 0.60

    // Smart pan settings
    constant real      bj_SMARTPAN_TRESHOLD_PAN         = 500
    constant real      bj_SMARTPAN_TRESHOLD_SNAP        = 3500

    // QueuedTriggerExecute settings
    constant integer   bj_MAX_QUEUED_TRIGGERS           = 100
    constant real      bj_QUEUED_TRIGGER_TIMEOUT        = 180.00

    // Campaign indexing constants
    constant integer   bj_CAMPAIGN_INDEX_T        = 0
    constant integer   bj_CAMPAIGN_INDEX_H        = 1
    constant integer   bj_CAMPAIGN_INDEX_U        = 2
    constant integer   bj_CAMPAIGN_INDEX_O        = 3
    constant integer   bj_CAMPAIGN_INDEX_N        = 4
    constant integer   bj_CAMPAIGN_INDEX_XN       = 5
    constant integer   bj_CAMPAIGN_INDEX_XH       = 6
    constant integer   bj_CAMPAIGN_INDEX_XU       = 7
    constant integer   bj_CAMPAIGN_INDEX_XO       = 8

    // Campaign offset constants (for mission indexing)
    constant integer   bj_CAMPAIGN_OFFSET_T       = 0
    constant integer   bj_CAMPAIGN_OFFSET_H       = 1
    constant integer   bj_CAMPAIGN_OFFSET_U       = 2
    constant integer   bj_CAMPAIGN_OFFSET_O       = 3
    constant integer   bj_CAMPAIGN_OFFSET_N       = 4
    constant integer   bj_CAMPAIGN_OFFSET_XN      = 0
    constant integer   bj_CAMPAIGN_OFFSET_XH      = 1
    constant integer   bj_CAMPAIGN_OFFSET_XU      = 2
    constant integer   bj_CAMPAIGN_OFFSET_XO      = 3

    // Mission indexing constants
    // Tutorial
    constant integer   bj_MISSION_INDEX_T00       = bj_CAMPAIGN_OFFSET_T * 1000 + 0
    constant integer   bj_MISSION_INDEX_T01       = bj_CAMPAIGN_OFFSET_T * 1000 + 1
    // Human
    constant integer   bj_MISSION_INDEX_H00       = bj_CAMPAIGN_OFFSET_H * 1000 + 0
    constant integer   bj_MISSION_INDEX_H01       = bj_CAMPAIGN_OFFSET_H * 1000 + 1
    constant integer   bj_MISSION_INDEX_H02       = bj_CAMPAIGN_OFFSET_H * 1000 + 2
    constant integer   bj_MISSION_INDEX_H03       = bj_CAMPAIGN_OFFSET_H * 1000 + 3
    constant integer   bj_MISSION_INDEX_H04       = bj_CAMPAIGN_OFFSET_H * 1000 + 4
    constant integer   bj_MISSION_INDEX_H05       = bj_CAMPAIGN_OFFSET_H * 1000 + 5
    constant integer   bj_MISSION_INDEX_H06       = bj_CAMPAIGN_OFFSET_H * 1000 + 6
    constant integer   bj_MISSION_INDEX_H07       = bj_CAMPAIGN_OFFSET_H * 1000 + 7
    constant integer   bj_MISSION_INDEX_H08       = bj_CAMPAIGN_OFFSET_H * 1000 + 8
    constant integer   bj_MISSION_INDEX_H09       = bj_CAMPAIGN_OFFSET_H * 1000 + 9
    constant integer   bj_MISSION_INDEX_H10       = bj_CAMPAIGN_OFFSET_H * 1000 + 10
    constant integer   bj_MISSION_INDEX_H11       = bj_CAMPAIGN_OFFSET_H * 1000 + 11
    // Undead
    constant integer   bj_MISSION_INDEX_U00       = bj_CAMPAIGN_OFFSET_U * 1000 + 0
    constant integer   bj_MISSION_INDEX_U01       = bj_CAMPAIGN_OFFSET_U * 1000 + 1
    constant integer   bj_MISSION_INDEX_U02       = bj_CAMPAIGN_OFFSET_U * 1000 + 2
    constant integer   bj_MISSION_INDEX_U03       = bj_CAMPAIGN_OFFSET_U * 1000 + 3
    constant integer   bj_MISSION_INDEX_U05       = bj_CAMPAIGN_OFFSET_U * 1000 + 4
    constant integer   bj_MISSION_INDEX_U07       = bj_CAMPAIGN_OFFSET_U * 1000 + 5
    constant integer   bj_MISSION_INDEX_U08       = bj_CAMPAIGN_OFFSET_U * 1000 + 6
    constant integer   bj_MISSION_INDEX_U09       = bj_CAMPAIGN_OFFSET_U * 1000 + 7
    constant integer   bj_MISSION_INDEX_U10       = bj_CAMPAIGN_OFFSET_U * 1000 + 8
    constant integer   bj_MISSION_INDEX_U11       = bj_CAMPAIGN_OFFSET_U * 1000 + 9
    // Orc
    constant integer   bj_MISSION_INDEX_O00       = bj_CAMPAIGN_OFFSET_O * 1000 + 0
    constant integer   bj_MISSION_INDEX_O01       = bj_CAMPAIGN_OFFSET_O * 1000 + 1
    constant integer   bj_MISSION_INDEX_O02       = bj_CAMPAIGN_OFFSET_O * 1000 + 2
    constant integer   bj_MISSION_INDEX_O03       = bj_CAMPAIGN_OFFSET_O * 1000 + 3
    constant integer   bj_MISSION_INDEX_O04       = bj_CAMPAIGN_OFFSET_O * 1000 + 4
    constant integer   bj_MISSION_INDEX_O05       = bj_CAMPAIGN_OFFSET_O * 1000 + 5
    constant integer   bj_MISSION_INDEX_O06       = bj_CAMPAIGN_OFFSET_O * 1000 + 6
    constant integer   bj_MISSION_INDEX_O07       = bj_CAMPAIGN_OFFSET_O * 1000 + 7
    constant integer   bj_MISSION_INDEX_O08       = bj_CAMPAIGN_OFFSET_O * 1000 + 8
    constant integer   bj_MISSION_INDEX_O09       = bj_CAMPAIGN_OFFSET_O * 1000 + 9
    constant integer   bj_MISSION_INDEX_O10       = bj_CAMPAIGN_OFFSET_O * 1000 + 10
    // Night Elf
    constant integer   bj_MISSION_INDEX_N00       = bj_CAMPAIGN_OFFSET_N * 1000 + 0
    constant integer   bj_MISSION_INDEX_N01       = bj_CAMPAIGN_OFFSET_N * 1000 + 1
    constant integer   bj_MISSION_INDEX_N02       = bj_CAMPAIGN_OFFSET_N * 1000 + 2
    constant integer   bj_MISSION_INDEX_N03       = bj_CAMPAIGN_OFFSET_N * 1000 + 3
    constant integer   bj_MISSION_INDEX_N04       = bj_CAMPAIGN_OFFSET_N * 1000 + 4
    constant integer   bj_MISSION_INDEX_N05       = bj_CAMPAIGN_OFFSET_N * 1000 + 5
    constant integer   bj_MISSION_INDEX_N06       = bj_CAMPAIGN_OFFSET_N * 1000 + 6
    constant integer   bj_MISSION_INDEX_N07       = bj_CAMPAIGN_OFFSET_N * 1000 + 7
    constant integer   bj_MISSION_INDEX_N08       = bj_CAMPAIGN_OFFSET_N * 1000 + 8
    constant integer   bj_MISSION_INDEX_N09       = bj_CAMPAIGN_OFFSET_N * 1000 + 9
    // Expansion Night Elf
    constant integer   bj_MISSION_INDEX_XN00       = bj_CAMPAIGN_OFFSET_XN * 1000 + 0
    constant integer   bj_MISSION_INDEX_XN01       = bj_CAMPAIGN_OFFSET_XN * 1000 + 1
    constant integer   bj_MISSION_INDEX_XN02       = bj_CAMPAIGN_OFFSET_XN * 1000 + 2
    constant integer   bj_MISSION_INDEX_XN03       = bj_CAMPAIGN_OFFSET_XN * 1000 + 3
    constant integer   bj_MISSION_INDEX_XN04       = bj_CAMPAIGN_OFFSET_XN * 1000 + 4
    constant integer   bj_MISSION_INDEX_XN05       = bj_CAMPAIGN_OFFSET_XN * 1000 + 5
    constant integer   bj_MISSION_INDEX_XN06       = bj_CAMPAIGN_OFFSET_XN * 1000 + 6
    constant integer   bj_MISSION_INDEX_XN07       = bj_CAMPAIGN_OFFSET_XN * 1000 + 7
    constant integer   bj_MISSION_INDEX_XN08       = bj_CAMPAIGN_OFFSET_XN * 1000 + 8
    constant integer   bj_MISSION_INDEX_XN09       = bj_CAMPAIGN_OFFSET_XN * 1000 + 9
    constant integer   bj_MISSION_INDEX_XN10       = bj_CAMPAIGN_OFFSET_XN * 1000 + 10
    // Expansion Human
    constant integer   bj_MISSION_INDEX_XH00       = bj_CAMPAIGN_OFFSET_XH * 1000 + 0
    constant integer   bj_MISSION_INDEX_XH01       = bj_CAMPAIGN_OFFSET_XH * 1000 + 1
    constant integer   bj_MISSION_INDEX_XH02       = bj_CAMPAIGN_OFFSET_XH * 1000 + 2
    constant integer   bj_MISSION_INDEX_XH03       = bj_CAMPAIGN_OFFSET_XH * 1000 + 3
    constant integer   bj_MISSION_INDEX_XH04       = bj_CAMPAIGN_OFFSET_XH * 1000 + 4
    constant integer   bj_MISSION_INDEX_XH05       = bj_CAMPAIGN_OFFSET_XH * 1000 + 5
    constant integer   bj_MISSION_INDEX_XH06       = bj_CAMPAIGN_OFFSET_XH * 1000 + 6
    constant integer   bj_MISSION_INDEX_XH07       = bj_CAMPAIGN_OFFSET_XH * 1000 + 7
    constant integer   bj_MISSION_INDEX_XH08       = bj_CAMPAIGN_OFFSET_XH * 1000 + 8
    constant integer   bj_MISSION_INDEX_XH09       = bj_CAMPAIGN_OFFSET_XH * 1000 + 9
    // Expansion Undead
    constant integer   bj_MISSION_INDEX_XU00       = bj_CAMPAIGN_OFFSET_XU * 1000 + 0
    constant integer   bj_MISSION_INDEX_XU01       = bj_CAMPAIGN_OFFSET_XU * 1000 + 1
    constant integer   bj_MISSION_INDEX_XU02       = bj_CAMPAIGN_OFFSET_XU * 1000 + 2
    constant integer   bj_MISSION_INDEX_XU03       = bj_CAMPAIGN_OFFSET_XU * 1000 + 3
    constant integer   bj_MISSION_INDEX_XU04       = bj_CAMPAIGN_OFFSET_XU * 1000 + 4
    constant integer   bj_MISSION_INDEX_XU05       = bj_CAMPAIGN_OFFSET_XU * 1000 + 5
    constant integer   bj_MISSION_INDEX_XU06       = bj_CAMPAIGN_OFFSET_XU * 1000 + 6
    constant integer   bj_MISSION_INDEX_XU07       = bj_CAMPAIGN_OFFSET_XU * 1000 + 7
    constant integer   bj_MISSION_INDEX_XU08       = bj_CAMPAIGN_OFFSET_XU * 1000 + 8
    constant integer   bj_MISSION_INDEX_XU09       = bj_CAMPAIGN_OFFSET_XU * 1000 + 9
    constant integer   bj_MISSION_INDEX_XU10       = bj_CAMPAIGN_OFFSET_XU * 1000 + 10
    constant integer   bj_MISSION_INDEX_XU11       = bj_CAMPAIGN_OFFSET_XU * 1000 + 11
    constant integer   bj_MISSION_INDEX_XU12       = bj_CAMPAIGN_OFFSET_XU * 1000 + 12
    constant integer   bj_MISSION_INDEX_XU13       = bj_CAMPAIGN_OFFSET_XU * 1000 + 13

    // Expansion Orc
    constant integer   bj_MISSION_INDEX_XO00       = bj_CAMPAIGN_OFFSET_XO * 1000 + 0

    // Cinematic indexing constants
    constant integer   bj_CINEMATICINDEX_TOP      = 0
    constant integer   bj_CINEMATICINDEX_HOP      = 1
    constant integer   bj_CINEMATICINDEX_HED      = 2
    constant integer   bj_CINEMATICINDEX_OOP      = 3
    constant integer   bj_CINEMATICINDEX_OED      = 4
    constant integer   bj_CINEMATICINDEX_UOP      = 5
    constant integer   bj_CINEMATICINDEX_UED      = 6
    constant integer   bj_CINEMATICINDEX_NOP      = 7
    constant integer   bj_CINEMATICINDEX_NED      = 8
    constant integer   bj_CINEMATICINDEX_XOP      = 9
    constant integer   bj_CINEMATICINDEX_XED      = 10

    // Alliance settings
    constant integer   bj_ALLIANCE_UNALLIED        = 0
    constant integer   bj_ALLIANCE_UNALLIED_VISION = 1
    constant integer   bj_ALLIANCE_ALLIED          = 2
    constant integer   bj_ALLIANCE_ALLIED_VISION   = 3
    constant integer   bj_ALLIANCE_ALLIED_UNITS    = 4
    constant integer   bj_ALLIANCE_ALLIED_ADVUNITS = 5
    constant integer   bj_ALLIANCE_NEUTRAL         = 6
    constant integer   bj_ALLIANCE_NEUTRAL_VISION  = 7

    // Keyboard Event Types
    constant integer   bj_KEYEVENTTYPE_DEPRESS     = 0
    constant integer   bj_KEYEVENTTYPE_RELEASE     = 1

    // Keyboard Event Keys
    constant integer   bj_KEYEVENTKEY_LEFT         = 0
    constant integer   bj_KEYEVENTKEY_RIGHT        = 1
    constant integer   bj_KEYEVENTKEY_DOWN         = 2
    constant integer   bj_KEYEVENTKEY_UP           = 3

    // Transmission timing methods
    constant integer   bj_TIMETYPE_ADD             = 0
    constant integer   bj_TIMETYPE_SET             = 1
    constant integer   bj_TIMETYPE_SUB             = 2

    // Camera bounds adjustment methods
    constant integer   bj_CAMERABOUNDS_ADJUST_ADD  = 0
    constant integer   bj_CAMERABOUNDS_ADJUST_SUB  = 1

    // Quest creation states
    constant integer   bj_QUESTTYPE_REQ_DISCOVERED   = 0
    constant integer   bj_QUESTTYPE_REQ_UNDISCOVERED = 1
    constant integer   bj_QUESTTYPE_OPT_DISCOVERED   = 2
    constant integer   bj_QUESTTYPE_OPT_UNDISCOVERED = 3

    // Quest message types
    constant integer   bj_QUESTMESSAGE_DISCOVERED    = 0
    constant integer   bj_QUESTMESSAGE_UPDATED       = 1
    constant integer   bj_QUESTMESSAGE_COMPLETED     = 2
    constant integer   bj_QUESTMESSAGE_FAILED        = 3
    constant integer   bj_QUESTMESSAGE_REQUIREMENT   = 4
    constant integer   bj_QUESTMESSAGE_MISSIONFAILED = 5
    constant integer   bj_QUESTMESSAGE_ALWAYSHINT    = 6
    constant integer   bj_QUESTMESSAGE_HINT          = 7
    constant integer   bj_QUESTMESSAGE_SECRET        = 8
    constant integer   bj_QUESTMESSAGE_UNITACQUIRED  = 9
    constant integer   bj_QUESTMESSAGE_UNITAVAILABLE = 10
    constant integer   bj_QUESTMESSAGE_ITEMACQUIRED  = 11
    constant integer   bj_QUESTMESSAGE_WARNING       = 12

    // Leaderboard sorting methods
    constant integer   bj_SORTTYPE_SORTBYVALUE     = 0
    constant integer   bj_SORTTYPE_SORTBYPLAYER    = 1
    constant integer   bj_SORTTYPE_SORTBYLABEL     = 2

    // Cinematic fade filter methods
    constant integer   bj_CINEFADETYPE_FADEIN      = 0
    constant integer   bj_CINEFADETYPE_FADEOUT     = 1
    constant integer   bj_CINEFADETYPE_FADEOUTIN   = 2

    // Buff removal methods
    constant integer   bj_REMOVEBUFFS_POSITIVE     = 0
    constant integer   bj_REMOVEBUFFS_NEGATIVE     = 1
    constant integer   bj_REMOVEBUFFS_ALL          = 2
    constant integer   bj_REMOVEBUFFS_NONTLIFE     = 3

    // Buff properties - polarity
    constant integer   bj_BUFF_POLARITY_POSITIVE   = 0
    constant integer   bj_BUFF_POLARITY_NEGATIVE   = 1
    constant integer   bj_BUFF_POLARITY_EITHER     = 2

    // Buff properties - resist type
    constant integer   bj_BUFF_RESIST_MAGIC        = 0
    constant integer   bj_BUFF_RESIST_PHYSICAL     = 1
    constant integer   bj_BUFF_RESIST_EITHER       = 2
    constant integer   bj_BUFF_RESIST_BOTH         = 3

    // Hero stats
    constant integer   bj_HEROSTAT_STR             = 0
    constant integer   bj_HEROSTAT_AGI             = 1
    constant integer   bj_HEROSTAT_INT             = 2

    // Hero skill point modification methods
    constant integer   bj_MODIFYMETHOD_ADD    = 0
    constant integer   bj_MODIFYMETHOD_SUB    = 1
    constant integer   bj_MODIFYMETHOD_SET    = 2

    // Unit state adjustment methods (for replaced units)
    constant integer   bj_UNIT_STATE_METHOD_ABSOLUTE = 0
    constant integer   bj_UNIT_STATE_METHOD_RELATIVE = 1
    constant integer   bj_UNIT_STATE_METHOD_DEFAULTS = 2
    constant integer   bj_UNIT_STATE_METHOD_MAXIMUM  = 3

    // Gate operations
    constant integer   bj_GATEOPERATION_CLOSE      = 0
    constant integer   bj_GATEOPERATION_OPEN       = 1
    constant integer   bj_GATEOPERATION_DESTROY    = 2

    // Game cache value types
    constant integer   bj_GAMECACHE_BOOLEAN        = 0
    constant integer   bj_GAMECACHE_INTEGER        = 1
    constant integer   bj_GAMECACHE_REAL           = 2
    constant integer   bj_GAMECACHE_UNIT           = 3
    constant integer   bj_GAMECACHE_STRING         = 4

    // Item status types
    constant integer   bj_ITEM_STATUS_HIDDEN       = 0
    constant integer   bj_ITEM_STATUS_OWNED        = 1
    constant integer   bj_ITEM_STATUS_INVULNERABLE = 2
    constant integer   bj_ITEM_STATUS_POWERUP      = 3
    constant integer   bj_ITEM_STATUS_SELLABLE     = 4
    constant integer   bj_ITEM_STATUS_PAWNABLE     = 5

    // Itemcode status types
    constant integer   bj_ITEMCODE_STATUS_POWERUP  = 0
    constant integer   bj_ITEMCODE_STATUS_SELLABLE = 1
    constant integer   bj_ITEMCODE_STATUS_PAWNABLE = 2

    // Minimap ping styles
    constant integer   bj_MINIMAPPINGSTYLE_SIMPLE  = 0
    constant integer   bj_MINIMAPPINGSTYLE_FLASHY  = 1
    constant integer   bj_MINIMAPPINGSTYLE_ATTACK  = 2

    // Corpse creation settings
    constant real      bj_CORPSE_MAX_DEATH_TIME    = 8.00

    // Corpse creation styles
    constant integer   bj_CORPSETYPE_FLESH         = 0
    constant integer   bj_CORPSETYPE_BONE          = 1

    // Elevator pathing-blocker destructable code
    constant integer   bj_ELEVATOR_BLOCKER_CODE    = 'DTep'
    constant integer   bj_ELEVATOR_CODE01          = 'DTrf'
    constant integer   bj_ELEVATOR_CODE02          = 'DTrx'

    // Elevator wall codes
    constant integer   bj_ELEVATOR_WALL_TYPE_ALL        = 0
    constant integer   bj_ELEVATOR_WALL_TYPE_EAST       = 1
    constant integer   bj_ELEVATOR_WALL_TYPE_NORTH      = 2
    constant integer   bj_ELEVATOR_WALL_TYPE_SOUTH      = 3
    constant integer   bj_ELEVATOR_WALL_TYPE_WEST       = 4

    //-----------------------------------------------------------------------
    // Variables
    //

    // Force predefs
    force              bj_FORCE_ALL_PLAYERS        = null
    force array        bj_FORCE_PLAYER

    integer            bj_MELEE_MAX_TWINKED_HEROES = 0

    // Map area rects
    rect               bj_mapInitialPlayableArea   = null
    rect               bj_mapInitialCameraBounds   = null

    // Utility function vars
    integer            bj_forLoopAIndex            = 0
    integer            bj_forLoopBIndex            = 0
    integer            bj_forLoopAIndexEnd         = 0
    integer            bj_forLoopBIndexEnd         = 0

    boolean            bj_slotControlReady         = false
    boolean array      bj_slotControlUsed
    mapcontrol array   bj_slotControl

    // Game started detection vars
    timer              bj_gameStartedTimer         = null
    boolean            bj_gameStarted              = false
    timer              bj_volumeGroupsTimer        = CreateTimer()

    // Singleplayer check
    boolean            bj_isSinglePlayer           = false

    // Day/Night Cycle vars
    trigger            bj_dncSoundsDay             = null
    trigger            bj_dncSoundsNight           = null
    sound              bj_dayAmbientSound          = null
    sound              bj_nightAmbientSound        = null
    trigger            bj_dncSoundsDawn            = null
    trigger            bj_dncSoundsDusk            = null
    sound              bj_dawnSound                = null
    sound              bj_duskSound                = null
    boolean            bj_useDawnDuskSounds        = true
    boolean            bj_dncIsDaytime             = false

    // Triggered sounds
    //sound              bj_pingMinimapSound         = null
    sound              bj_rescueSound              = null
    sound              bj_questDiscoveredSound     = null
    sound              bj_questUpdatedSound        = null
    sound              bj_questCompletedSound      = null
    sound              bj_questFailedSound         = null
    sound              bj_questHintSound           = null
    sound              bj_questSecretSound         = null
    sound              bj_questItemAcquiredSound   = null
    sound              bj_questWarningSound        = null
    sound              bj_victoryDialogSound       = null
    sound              bj_defeatDialogSound        = null

    // Marketplace vars
    trigger            bj_stockItemPurchased       = null
    timer              bj_stockUpdateTimer         = null
    boolean array      bj_stockAllowedPermanent
    boolean array      bj_stockAllowedCharged
    boolean array      bj_stockAllowedArtifact
    integer            bj_stockPickedItemLevel     = 0
    itemtype           bj_stockPickedItemType

    // Melee vars
    trigger            bj_meleeVisibilityTrained   = null
    boolean            bj_meleeVisibilityIsDay     = true
    boolean            bj_meleeGrantHeroItems      = false
    location           bj_meleeNearestMineToLoc    = null
    unit               bj_meleeNearestMine         = null
    real               bj_meleeNearestMineDist     = 0.00
    boolean            bj_meleeGameOver            = false
    boolean array      bj_meleeDefeated
    boolean array      bj_meleeVictoried
    unit array         bj_ghoul
    timer array        bj_crippledTimer
    timerdialog array  bj_crippledTimerWindows
    boolean array      bj_playerIsCrippled
    boolean array      bj_playerIsExposed
    boolean            bj_finishSoonAllExposed     = false
    timerdialog        bj_finishSoonTimerDialog    = null
    integer array      bj_meleeTwinkedHeroes

    // Rescue behavior vars
    trigger            bj_rescueUnitBehavior       = null
    boolean            bj_rescueChangeColorUnit    = true
    boolean            bj_rescueChangeColorBldg    = true

    // Transmission vars
    timer              bj_cineSceneEndingTimer     = null
    sound              bj_cineSceneLastSound       = null
    trigger            bj_cineSceneBeingSkipped    = null

    // Cinematic mode vars
    gamespeed          bj_cineModePriorSpeed       = MAP_SPEED_NORMAL
    boolean            bj_cineModePriorFogSetting  = false
    boolean            bj_cineModePriorMaskSetting = false
    boolean            bj_cineModeAlreadyIn        = false
    boolean            bj_cineModePriorDawnDusk    = false
    integer            bj_cineModeSavedSeed        = 0

    // Cinematic fade vars
    timer              bj_cineFadeFinishTimer      = null
    timer              bj_cineFadeContinueTimer    = null
    real               bj_cineFadeContinueRed      = 0
    real               bj_cineFadeContinueGreen    = 0
    real               bj_cineFadeContinueBlue     = 0
    real               bj_cineFadeContinueTrans    = 0
    real               bj_cineFadeContinueDuration = 0
    string             bj_cineFadeContinueTex      = ""

    // QueuedTriggerExecute vars
    integer            bj_queuedExecTotal          = 0
    trigger array      bj_queuedExecTriggers
    boolean array      bj_queuedExecUseConds
    timer              bj_queuedExecTimeoutTimer   = CreateTimer()
    trigger            bj_queuedExecTimeout        = null

    // Helper vars (for Filter and Enum funcs)
    integer            bj_destInRegionDiesCount    = 0
    trigger            bj_destInRegionDiesTrig     = null
    integer            bj_groupCountUnits          = 0
    integer            bj_forceCountPlayers        = 0
    integer            bj_groupEnumTypeId          = 0
    player             bj_groupEnumOwningPlayer    = null
    group              bj_groupAddGroupDest        = null
    group              bj_groupRemoveGroupDest     = null
    integer            bj_groupRandomConsidered    = 0
    unit               bj_groupRandomCurrentPick   = null
    group              bj_groupLastCreatedDest     = null
    group              bj_randomSubGroupGroup      = null
    integer            bj_randomSubGroupWant       = 0
    integer            bj_randomSubGroupTotal      = 0
    real               bj_randomSubGroupChance     = 0
    integer            bj_destRandomConsidered     = 0
    destructable       bj_destRandomCurrentPick    = null
    destructable       bj_elevatorWallBlocker      = null
    destructable       bj_elevatorNeighbor         = null
    integer            bj_itemRandomConsidered     = 0
    item               bj_itemRandomCurrentPick    = null
    integer            bj_forceRandomConsidered    = 0
    player             bj_forceRandomCurrentPick   = null
    unit               bj_makeUnitRescuableUnit    = null
    boolean            bj_makeUnitRescuableFlag    = true
    boolean            bj_pauseAllUnitsFlag        = true
    location           bj_enumDestructableCenter   = null
    real               bj_enumDestructableRadius   = 0
    playercolor        bj_setPlayerTargetColor     = null
    boolean            bj_isUnitGroupDeadResult    = true
    boolean            bj_isUnitGroupEmptyResult   = true
    boolean            bj_isUnitGroupInRectResult  = true
    rect               bj_isUnitGroupInRectRect    = null
    boolean            bj_changeLevelShowScores    = false
    string             bj_changeLevelMapName       = null
    group              bj_suspendDecayFleshGroup   = CreateGroup()
    group              bj_suspendDecayBoneGroup    = CreateGroup()
    timer              bj_delayedSuspendDecayTimer = CreateTimer()
    trigger            bj_delayedSuspendDecayTrig  = null
    integer            bj_livingPlayerUnitsTypeId  = 0
    widget             bj_lastDyingWidget          = null

    // Random distribution vars
	integer            bj_randDistCount            = 0
	integer array      bj_randDistID
	integer array      bj_randDistChance

    // Last X'd vars
    unit               bj_lastCreatedUnit          = null
    item               bj_lastCreatedItem          = null
    item               bj_lastRemovedItem          = null
    unit               bj_lastHauntedGoldMine      = null
    destructable       bj_lastCreatedDestructable  = null
    group              bj_lastCreatedGroup         = CreateGroup()
    fogmodifier        bj_lastCreatedFogModifier   = null
    effect             bj_lastCreatedEffect        = null
    weathereffect      bj_lastCreatedWeatherEffect = null
    terraindeformation bj_lastCreatedTerrainDeformation = null
    quest              bj_lastCreatedQuest         = null
    questitem          bj_lastCreatedQuestItem     = null
    defeatcondition    bj_lastCreatedDefeatCondition = null
    timer              bj_lastStartedTimer         = CreateTimer()
    timerdialog        bj_lastCreatedTimerDialog   = null
    leaderboard        bj_lastCreatedLeaderboard   = null
    sound              bj_lastPlayedSound          = null
    string             bj_lastPlayedMusic          = ""
    real               bj_lastTransmissionDuration = 0
    gamecache          bj_lastCreatedGameCache     = null
    unit               bj_lastLoadedUnit           = null
    button             bj_lastCreatedButton        = null
    unit               bj_lastReplacedUnit         = null
    texttag            bj_lastCreatedTextTag       = null

    // Filter function vars
    boolexpr           filterIssueHauntOrderAtLocBJ      = null
    boolexpr           filterEnumDestructablesInCircleBJ = null
    boolexpr           filterGetUnitsInRectOfPlayer      = null
    boolexpr           filterGetUnitsOfTypeIdAll         = null
    boolexpr           filterGetUnitsOfPlayerAndTypeId   = null
    boolexpr           filterMeleeTrainedUnitIsHeroBJ    = null
    boolexpr           filterLivingPlayerUnitsOfTypeId   = null

    // Memory cleanup vars
    boolean            bj_wantDestroyGroup         = false
endglobals

function RMinBJ takes real a, real b returns real
    if (a < b) then
        return a
    else
        return b
    endif
endfunction

function RMaxBJ takes real a, real b returns real
    if (a < b) then
        return b
    else
        return a
    endif
endfunction

function RAbsBJ takes real a returns real
    if (a >= 0) then
        return a
    else
        return -a
    endif
endfunction

function RSignBJ takes real a returns real
    if (a >= 0.0) then
        return 1.0
    else
        return -1.0
    endif
endfunction

function IMinBJ takes integer a, integer b returns integer
    if (a < b) then
        return a
    else
        return b
    endif
endfunction

function IMaxBJ takes integer a, integer b returns integer
    if (a < b) then
        return b
    else
        return a
    endif
endfunction

function IAbsBJ takes integer a returns integer
    if (a >= 0) then
        return a
    else
        return -a
    endif
endfunction

function ISignBJ takes integer a returns integer
    if (a >= 0) then
        return 1
    else
        return -1
    endif
endfunction

function SinBJ takes real degrees returns real
    return Sin(degrees * bj_DEGTORAD)
endfunction

function CosBJ takes real degrees returns real
    return Cos(degrees * bj_DEGTORAD)
endfunction

function TanBJ takes real degrees returns real
    return Tan(degrees * bj_DEGTORAD)
endfunction

function AsinBJ takes real degrees returns real
    return Asin(degrees) * bj_RADTODEG
endfunction

function AcosBJ takes real degrees returns real
    return Acos(degrees) * bj_RADTODEG
endfunction

function AtanBJ takes real degrees returns real
    return Atan(degrees) * bj_RADTODEG
endfunction

function Atan2BJ takes real y, real x returns real
    return Atan2(y, x) * bj_RADTODEG
endfunction

function AngleBetweenPoints takes location locA, location locB returns real
    return bj_RADTODEG * Atan2(GetLocationY(locB) - GetLocationY(locA), GetLocationX(locB) - GetLocationX(locA))
endfunction

function DistanceBetweenPoints takes location locA, location locB returns real
    local real dx = GetLocationX(locB) - GetLocationX(locA)
    local real dy = GetLocationY(locB) - GetLocationY(locA)
    return SquareRoot(dx * dx + dy * dy)
endfunction

function PolarProjectionBJ takes location source, real dist, real angle returns location
    local real x = GetLocationX(source) + dist * Cos(angle * bj_DEGTORAD)
    local real y = GetLocationY(source) + dist * Sin(angle * bj_DEGTORAD)
    return Location(x, y)
endfunction

function GetRandomDirectionDeg takes nothing returns real
    return GetRandomReal(0, 360)
endfunction

function GetRandomPercentageBJ takes nothing returns real
    return GetRandomReal(0, 100)
endfunction

// Calculate the modulus/remainder of (dividend) divided by (divisor).
// Examples:  18 mod 5 = 3.  15 mod 5 = 0.  -8 mod 5 = 2.
//
function ModuloInteger takes integer dividend, integer divisor returns integer
    local integer modulus = dividend - (dividend / divisor) * divisor

    // If the dividend was negative, the above modulus calculation will
    // be negative, but within (-divisor..0).  We can add (divisor) to
    // shift this result into the desired range of (0..divisor).
    if (modulus < 0) then
        set modulus = modulus + divisor
    endif

    return modulus
endfunction

//===========================================================================
// Calculate the modulus/remainder of (dividend) divided by (divisor).
// Examples:  13.000 mod 2.500 = 0.500.  -6.000 mod 2.500 = 1.500.
//
function ModuloReal takes real dividend, real divisor returns real
    local real modulus = dividend - I2R(R2I(dividend / divisor)) * divisor

    // If the dividend was negative, the above modulus calculation will
    // be negative, but within (-divisor..0).  We can add (divisor) to
    // shift this result into the desired range of (0..divisor).
    if (modulus < 0) then
        set modulus = modulus + divisor
    endif

    return modulus
endfunction

//***************************************************************************
//*
//*  Utility Constructs
//*
//***************************************************************************

//===========================================================================
function QueuedTriggerCountBJ takes nothing returns integer
    return bj_queuedExecTotal
endfunction

//===========================================================================
function IsTriggerQueueEmptyBJ takes nothing returns boolean
    return bj_queuedExecTotal <= 0
endfunction

//===========================================================================
function IsTriggerQueuedBJ takes trigger trig returns boolean
    return QueuedTriggerGetIndex(trig) != -1
endfunction

//===========================================================================
function GetForLoopIndexA takes nothing returns integer
    return bj_forLoopAIndex
endfunction

//===========================================================================
function SetForLoopIndexA takes integer newIndex returns nothing
    set bj_forLoopAIndex = newIndex
endfunction

//===========================================================================
function GetForLoopIndexB takes nothing returns integer
    return bj_forLoopBIndex
endfunction

//===========================================================================
function SetForLoopIndexB takes integer newIndex returns nothing
    set bj_forLoopBIndex = newIndex
endfunction


//***************************************************************************
//*
//*  General Utility Functions
//*  These functions exist purely to make the trigger dialogs cleaner and
//*  more comprehensible.
//*
//***************************************************************************

//===========================================================================
function DoNothing takes nothing returns nothing
endfunction

//===========================================================================
// This function does nothing.  WorldEdit should should eventually ignore
// CommentString triggers during script generation, but until such a time,
// this function will serve as a stub.
//
function CommentString takes string commentString returns nothing
endfunction

//===========================================================================
// This seemingly useless function is used to trick the trigger editor into
// externalizing arbitrary strings.  Especially useful for storing externalized
// string references in variables.
//
function StringIdentity takes string theString returns string
    return theString
endfunction

//===========================================================================
function GetBooleanAnd takes boolean valueA, boolean valueB returns boolean
    return valueA and valueB
endfunction

//===========================================================================
function GetBooleanOr takes boolean valueA, boolean valueB returns boolean
    return valueA or valueB
endfunction

//===========================================================================
function PercentTo255 takes real percentage returns integer
    return PercentToInt(percentage, 255)
endfunction

//===========================================================================
function GetTimeOfDay takes nothing returns real
    return GetFloatGameState(GAME_STATE_TIME_OF_DAY)
endfunction

//===========================================================================
function SetTimeOfDay takes real whatTime returns nothing
    call SetFloatGameState(GAME_STATE_TIME_OF_DAY, whatTime)
endfunction

//===========================================================================
function SetTimeOfDayScalePercentBJ takes real scalePercent returns nothing
    call SetTimeOfDayScale(scalePercent * 0.01)
endfunction

//===========================================================================
function GetTimeOfDayScalePercentBJ takes nothing returns real
    return GetTimeOfDayScale() * 100
endfunction


//===========================================================================
function CompareRectsBJ takes rect A, rect B returns boolean
    return GetRectMinX(A) == GetRectMinX(B) and GetRectMinY(A) == GetRectMinY(B) and GetRectMaxX(A) == GetRectMaxX(B) and GetRectMaxY(A) == GetRectMaxY(B)
endfunction

//===========================================================================
function CameraSetupGetFieldSwap takes camerafield whichField, camerasetup whichSetup returns real
    return CameraSetupGetField(whichSetup, whichField)
endfunction

//===========================================================================
// Query the initial camera bounds, as defined at map init.
//
function GetCameraBoundsMapRect takes nothing returns rect
    return bj_mapInitialCameraBounds
endfunction

//===========================================================================
// Query the playable map area, as defined at map init.
//
function GetPlayableMapRect takes nothing returns rect
    return bj_mapInitialPlayableArea
endfunction

//===========================================================================
// Query the entire map area, as defined at map init.
//
function GetEntireMapRect takes nothing returns rect
    return GetWorldBounds()
endfunction

//===========================================================================
function CameraSetSmoothingFactorBJ takes real factor returns nothing
    call CameraSetSmoothingFactor(factor)
endfunction

//===========================================================================
function CameraResetSmoothingFactorBJ takes nothing returns nothing
    call CameraSetSmoothingFactor(0)
endfunction

//===========================================================================
// The parameters for the API Substring function are unintuitive, so this
// merely performs a translation for the starting index.
//
function SubStringBJ takes string source, integer start, integer end returns string
    return SubString(source, start-1, end)
endfunction



//***************************************************************************
//*
//*  Event Registration Utility Functions
//*
//***************************************************************************

//===========================================================================
function TriggerRegisterTimerEventPeriodic takes trigger trig, real timeout returns event
    return TriggerRegisterTimerEvent(trig, timeout, true)
endfunction

//===========================================================================
function TriggerRegisterTimerEventSingle takes trigger trig, real timeout returns event
    return TriggerRegisterTimerEvent(trig, timeout, false)
endfunction

//===========================================================================
function TriggerRegisterTimerExpireEventBJ takes trigger trig, timer t returns event
    return TriggerRegisterTimerExpireEvent(trig, t)
endfunction

//===========================================================================
function TriggerRegisterPlayerUnitEventSimple takes trigger trig, player whichPlayer, playerunitevent whichEvent returns event
    return TriggerRegisterPlayerUnitEvent(trig, whichPlayer, whichEvent, null)
endfunction

//===========================================================================
function TriggerRegisterPlayerEventVictory takes trigger trig, player whichPlayer returns event
    return TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_VICTORY)
endfunction

//===========================================================================
function TriggerRegisterPlayerEventDefeat takes trigger trig, player whichPlayer returns event
    return TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_DEFEAT)
endfunction

//===========================================================================
function TriggerRegisterPlayerEventAllianceChanged takes trigger trig, player whichPlayer returns event
    return TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_ALLIANCE_CHANGED)
endfunction

//===========================================================================
function TriggerRegisterPlayerEventEndCinematic takes trigger trig, player whichPlayer returns event
    return TriggerRegisterPlayerEvent(trig, whichPlayer, EVENT_PLAYER_END_CINEMATIC)
endfunction

//===========================================================================
function TriggerRegisterGameStateEventTimeOfDay takes trigger trig, limitop opcode, real limitval returns event
    return TriggerRegisterGameStateEvent(trig, GAME_STATE_TIME_OF_DAY, opcode, limitval)
endfunction

//===========================================================================
function TriggerRegisterEnterRegionSimple takes trigger trig, region whichRegion returns event
    return TriggerRegisterEnterRegion(trig, whichRegion, null)
endfunction

//===========================================================================
function TriggerRegisterLeaveRegionSimple takes trigger trig, region whichRegion returns event
    return TriggerRegisterLeaveRegion(trig, whichRegion, null)
endfunction

//===========================================================================
function TriggerRegisterDistanceBetweenUnits takes trigger trig, unit whichUnit, boolexpr condition, real range returns event
    return TriggerRegisterUnitInRange(trig, whichUnit, range, condition)
endfunction

//===========================================================================
function TriggerRegisterUnitInRangeSimple takes trigger trig, real range, unit whichUnit returns event
    return TriggerRegisterUnitInRange(trig, whichUnit, range, null)
endfunction

//===========================================================================
function TriggerRegisterUnitLifeEvent takes trigger trig, unit whichUnit, limitop opcode, real limitval returns event
    return TriggerRegisterUnitStateEvent(trig, whichUnit, UNIT_STATE_LIFE, opcode, limitval)
endfunction

//===========================================================================
function TriggerRegisterUnitManaEvent takes trigger trig, unit whichUnit, limitop opcode, real limitval returns event
    return TriggerRegisterUnitStateEvent(trig, whichUnit, UNIT_STATE_MANA, opcode, limitval)
endfunction

//===========================================================================
function TriggerRegisterDialogEventBJ takes trigger trig, dialog whichDialog returns event
    return TriggerRegisterDialogEvent(trig, whichDialog)
endfunction

//===========================================================================
function TriggerRegisterShowSkillEventBJ takes trigger trig returns event
    return TriggerRegisterGameEvent(trig, EVENT_GAME_SHOW_SKILL)
endfunction

//===========================================================================
function TriggerRegisterBuildSubmenuEventBJ takes trigger trig returns event
    return TriggerRegisterGameEvent(trig, EVENT_GAME_BUILD_SUBMENU)
endfunction

//===========================================================================
function TriggerRegisterGameLoadedEventBJ takes trigger trig returns event
    return TriggerRegisterGameEvent(trig, EVENT_GAME_LOADED)
endfunction

//===========================================================================
function TriggerRegisterGameSavedEventBJ takes trigger trig returns event
    return TriggerRegisterGameEvent(trig, EVENT_GAME_SAVE)
endfunction

//***************************************************************************
//*
//*  Environment Utility Functions
//*
//***************************************************************************

//===========================================================================
function GetLastCreatedWeatherEffect takes nothing returns weathereffect
    return bj_lastCreatedWeatherEffect
endfunction

//===========================================================================
function RemoveWeatherEffectBJ takes weathereffect whichWeatherEffect returns nothing
    call RemoveWeatherEffect(whichWeatherEffect)
endfunction

//===========================================================================
function TerrainDeformationStopBJ takes terraindeformation deformation, real duration returns nothing
    call TerrainDeformStop(deformation, R2I(duration * 1000))
endfunction

//===========================================================================
function GetLastCreatedTerrainDeformation takes nothing returns terraindeformation
    return bj_lastCreatedTerrainDeformation
endfunction

//===========================================================================
function GetTerrainCliffLevelBJ takes location where returns integer
    return GetTerrainCliffLevel(GetLocationX(where), GetLocationY(where))
endfunction

//===========================================================================
function SetWaterBaseColorBJ takes real red, real green, real blue, real transparency returns nothing
    call SetWaterBaseColor(PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0-transparency))
endfunction

//===========================================================================
function GetLastCreatedFogModifier takes nothing returns fogmodifier
    return bj_lastCreatedFogModifier
endfunction

//===========================================================================
function FogEnableOn takes nothing returns nothing
    call FogEnable(true)
endfunction

//===========================================================================
function FogEnableOff takes nothing returns nothing
    call FogEnable(false)
endfunction

//===========================================================================
function FogMaskEnableOn takes nothing returns nothing
    call FogMaskEnable(true)
endfunction

//===========================================================================
function FogMaskEnableOff takes nothing returns nothing
    call FogMaskEnable(false)
endfunction

//===========================================================================
function UseTimeOfDayBJ takes boolean flag returns nothing
    call SuspendTimeOfDay(not flag)
endfunction

//===========================================================================
function SetTerrainFogExBJ takes integer style, real zstart, real zend, real density, real red, real green, real blue returns nothing
    call SetTerrainFogEx(style, zstart, zend, density, red * 0.01, green * 0.01, blue * 0.01)
endfunction

//===========================================================================
function ResetTerrainFogBJ takes nothing returns nothing
    call ResetTerrainFog()
endfunction

//===========================================================================
function SetDoodadAnimationBJ takes string animName, integer doodadID, real radius, location center returns nothing
    call SetDoodadAnimation(GetLocationX(center), GetLocationY(center), radius, doodadID, false, animName, false)
endfunction

//===========================================================================
function SetDoodadAnimationRectBJ takes string animName, integer doodadID, rect r returns nothing
    call SetDoodadAnimationRect(r, doodadID, animName, false)
endfunction

//===========================================================================
function AddUnitAnimationPropertiesBJ takes boolean add, string animProperties, unit whichUnit returns nothing
    call AddUnitAnimationProperties(whichUnit, animProperties, add)
endfunction



//***************************************************************************
//*
//*  Sound Utility Functions
//*
//***************************************************************************

//===========================================================================
function StopSoundBJ takes sound soundHandle, boolean fadeOut returns nothing
    call StopSound(soundHandle, false, fadeOut)
endfunction

//===========================================================================
function SetSoundVolumeBJ takes sound soundHandle, real volumePercent returns nothing
    call SetSoundVolume(soundHandle, PercentToInt(volumePercent, 127))
endfunction

//===========================================================================
function SetSoundOffsetBJ takes real newOffset, sound soundHandle returns nothing
    call SetSoundPlayPosition(soundHandle, R2I(newOffset * 1000))
endfunction

//===========================================================================
function SetSoundDistanceCutoffBJ takes sound soundHandle, real cutoff returns nothing
    call SetSoundDistanceCutoff(soundHandle, cutoff)
endfunction

//===========================================================================
function SetSoundPitchBJ takes sound soundHandle, real pitch returns nothing
    call SetSoundPitch(soundHandle, pitch)
endfunction

//===========================================================================
function SetSoundPositionLocBJ takes sound soundHandle, location loc, real z returns nothing
    call SetSoundPosition(soundHandle, GetLocationX(loc), GetLocationY(loc), z)
endfunction

//===========================================================================
function AttachSoundToUnitBJ takes sound soundHandle, unit whichUnit returns nothing
    call AttachSoundToUnit(soundHandle, whichUnit)
endfunction

//===========================================================================
function SetSoundConeAnglesBJ takes sound soundHandle, real inside, real outside, real outsideVolumePercent returns nothing
    call SetSoundConeAngles(soundHandle, inside, outside, PercentToInt(outsideVolumePercent, 127))
endfunction

//===========================================================================
function KillSoundWhenDoneBJ takes sound soundHandle returns nothing
    call KillSoundWhenDone(soundHandle)
endfunction

//===========================================================================
function SetMusicOffsetBJ takes real newOffset returns nothing
    call SetMusicPlayPosition(R2I(newOffset * 1000))
endfunction

//===========================================================================
function PlayThematicMusicBJ takes string musicName returns nothing
    call PlayThematicMusic(musicName)
endfunction

//===========================================================================
function PlayThematicMusicExBJ takes string musicName, real startingOffset returns nothing
    call PlayThematicMusicEx(musicName, R2I(startingOffset * 1000))
endfunction

//===========================================================================
function SetThematicMusicOffsetBJ takes real newOffset returns nothing
    call SetThematicMusicPlayPosition(R2I(newOffset * 1000))
endfunction

//===========================================================================
function EndThematicMusicBJ takes nothing returns nothing
    call EndThematicMusic()
endfunction

//===========================================================================
function StopMusicBJ takes boolean fadeOut returns nothing
    call StopMusic(fadeOut)
endfunction

//===========================================================================
function ResumeMusicBJ takes nothing returns nothing
    call ResumeMusic()
endfunction

//===========================================================================
function SetMusicVolumeBJ takes real volumePercent returns nothing
    call SetMusicVolume(PercentToInt(volumePercent, 127))
endfunction

//===========================================================================
function GetSoundFileDurationBJ takes string musicFileName returns real
    return I2R(GetSoundFileDuration(musicFileName)) * 0.001
endfunction

//===========================================================================
function GetLastPlayedSound takes nothing returns sound
    return bj_lastPlayedSound
endfunction

//===========================================================================
function GetLastPlayedMusic takes nothing returns string
    return bj_lastPlayedMusic
endfunction

//===========================================================================
function VolumeGroupSetVolumeBJ takes volumegroup vgroup, real percent returns nothing
    call VolumeGroupSetVolume(vgroup, percent * 0.01)
endfunction

//===========================================================================
function VolumeGroupResetImmediateBJ takes nothing returns nothing
    call VolumeGroupReset()
endfunction

//===========================================================================
function GetSoundIsPlayingBJ takes sound soundHandle returns boolean
    return GetSoundIsLoading(soundHandle) or GetSoundIsPlaying(soundHandle)
endfunction

//===========================================================================
function WaitForSoundBJ takes sound soundHandle, real offset returns nothing
    call TriggerWaitForSound( soundHandle, offset )
endfunction

//===========================================================================
function SetMapMusicIndexedBJ takes string musicName, integer index returns nothing
    call SetMapMusic(musicName, false, index)
endfunction

//===========================================================================
function SetMapMusicRandomBJ takes string musicName returns nothing
    call SetMapMusic(musicName, true, 0)
endfunction

//===========================================================================
function ClearMapMusicBJ takes nothing returns nothing
    call ClearMapMusic()
endfunction

//===========================================================================
function EnableDawnDusk takes boolean flag returns nothing
    set bj_useDawnDuskSounds = flag
endfunction

//===========================================================================
function IsDawnDuskEnabled takes nothing returns boolean
    return bj_useDawnDuskSounds
endfunction


//===========================================================================
// Two distinct trigger actions can't share the same function name, so this
// dummy function simply mimics the behavior of an existing call.
//
// Commented out - Destructibles have no attachment points.
//
//function AddSpecialEffectTargetDestructableBJ takes string attachPointName, widget targetWidget, string modelName returns effect
//    return AddSpecialEffectTargetUnitBJ(attachPointName, targetWidget, modelName)
//endfunction

//===========================================================================
// Two distinct trigger actions can't share the same function name, so this
// dummy function simply mimics the behavior of an existing call.
//
// Commented out - Items have no attachment points.
//
//function AddSpecialEffectTargetItemBJ takes string attachPointName, widget targetWidget, string modelName returns effect
//    return AddSpecialEffectTargetUnitBJ(attachPointName, targetWidget, modelName)
//endfunction

//===========================================================================
function DestroyEffectBJ takes effect whichEffect returns nothing
    call DestroyEffect(whichEffect)
endfunction

//===========================================================================
function GetLastCreatedEffectBJ takes nothing returns effect
    return bj_lastCreatedEffect
endfunction



//***************************************************************************
//*
//*  Hero and Item Utility Functions
//*
//***************************************************************************

//===========================================================================
function GetItemLoc takes item whichItem returns location
    return Location(GetItemX(whichItem), GetItemY(whichItem))
endfunction

//===========================================================================
function GetItemLifeBJ takes widget whichWidget returns real
    return GetWidgetLife(whichWidget)
endfunction

//===========================================================================
function SetItemLifeBJ takes widget whichWidget, real life returns nothing
    call SetWidgetLife(whichWidget, life)
endfunction

//===========================================================================
function AddHeroXPSwapped takes integer xpToAdd, unit whichHero, boolean showEyeCandy returns nothing
    call AddHeroXP(whichHero, xpToAdd, showEyeCandy)
endfunction

//===========================================================================
function UnitAddItemSwapped takes item whichItem, unit whichHero returns boolean
    return UnitAddItem(whichHero, whichItem)
endfunction

//===========================================================================
function GetLastCreatedItem takes nothing returns item
    return bj_lastCreatedItem
endfunction

//===========================================================================
function GetLastRemovedItem takes nothing returns item
    return bj_lastRemovedItem
endfunction

//===========================================================================
function SetItemPositionLoc takes item whichItem, location loc returns nothing
    call SetItemPosition(whichItem, GetLocationX(loc), GetLocationY(loc))
endfunction

//===========================================================================
function GetLearnedSkillBJ takes nothing returns integer
    return GetLearnedSkill()
endfunction

//===========================================================================
function SuspendHeroXPBJ takes boolean flag, unit whichHero returns nothing
    call SuspendHeroXP(whichHero, not flag)
endfunction

//===========================================================================
function SetPlayerHandicapXPBJ takes player whichPlayer, real handicapPercent returns nothing
    call SetPlayerHandicapXP(whichPlayer, handicapPercent * 0.01)
endfunction

//===========================================================================
function GetPlayerHandicapXPBJ takes player whichPlayer returns real
    return GetPlayerHandicapXP(whichPlayer) * 100
endfunction

//===========================================================================
function SetPlayerHandicapBJ takes player whichPlayer, real handicapPercent returns nothing
    call SetPlayerHandicap(whichPlayer, handicapPercent * 0.01)
endfunction

//===========================================================================
function GetPlayerHandicapBJ takes player whichPlayer returns real
    return GetPlayerHandicap(whichPlayer) * 100
endfunction

//===========================================================================
// Two distinct trigger actions can't share the same function name, so this
// dummy function simply mimics the behavior of an existing call.
//
function UnitUseItemDestructable takes unit whichUnit, item whichItem, widget target returns boolean
    return UnitUseItemTarget(whichUnit, whichItem, target)
endfunction

//===========================================================================
function UnitUseItemPointLoc takes unit whichUnit, item whichItem, location loc returns boolean
    return UnitUseItemPoint(whichUnit, whichItem, GetLocationX(loc), GetLocationY(loc))
endfunction

//===========================================================================
// Translates 0-based slot indices to 1-based slot indices.
//
function UnitItemInSlotBJ takes unit whichUnit, integer itemSlot returns item
    return UnitItemInSlot(whichUnit, itemSlot-1)
endfunction

//===========================================================================
function UnitHasItemOfTypeBJ takes unit whichUnit, integer itemId returns boolean
    return GetInventoryIndexOfItemTypeBJ(whichUnit, itemId) > 0
endfunction

//===========================================================================
function SetItemInvulnerableBJ takes item whichItem, boolean flag returns nothing
    call SetItemInvulnerable(whichItem, flag)
endfunction

//===========================================================================
function SetItemDropOnDeathBJ takes item whichItem, boolean flag returns nothing
    call SetItemDropOnDeath(whichItem, flag)
endfunction

//===========================================================================
function SetItemDroppableBJ takes item whichItem, boolean flag returns nothing
    call SetItemDroppable(whichItem, flag)
endfunction

//===========================================================================
function SetItemPlayerBJ takes item whichItem, player whichPlayer, boolean changeColor returns nothing
    call SetItemPlayer(whichItem, whichPlayer, changeColor)
endfunction

//===========================================================================
function SetItemVisibleBJ takes boolean show, item whichItem returns nothing
    call SetItemVisible(whichItem, show)
endfunction

//===========================================================================
function IsItemHiddenBJ takes item whichItem returns boolean
    return not IsItemVisible(whichItem)
endfunction

//===========================================================================
function ChooseRandomItemBJ takes integer level returns integer
    return ChooseRandomItem(level)
endfunction

//===========================================================================
function ChooseRandomItemExBJ takes integer level, itemtype whichType returns integer
    return ChooseRandomItemEx(whichType, level)
endfunction

//===========================================================================
function ChooseRandomNPBuildingBJ takes nothing returns integer
    return ChooseRandomNPBuilding()
endfunction

//===========================================================================
function ChooseRandomCreepBJ takes integer level returns integer
    return ChooseRandomCreep(level)
endfunction

//===========================================================================
function EnumItemsInRectBJ takes rect r, code actionFunc returns nothing
    call EnumItemsInRect(r, null, actionFunc)
endfunction

//===========================================================================
// Picks a random item from within a rect
//
function RandomItemInRectSimpleBJ takes rect r returns item
    return RandomItemInRectBJ(r, null)
endfunction

//***************************************************************************
//*
//*  Unit Utility Functions
//*
//***************************************************************************

//===========================================================================
function UnitId2OrderIdBJ takes integer unitId returns integer
    return unitId
endfunction

//===========================================================================
function String2UnitIdBJ takes string unitIdString returns integer
    return UnitId(unitIdString)
endfunction

//===========================================================================
function GetIssuedOrderIdBJ takes nothing returns integer
    return GetIssuedOrderId()
endfunction

//===========================================================================
function GetKillingUnitBJ takes nothing returns unit
    return GetKillingUnit()
endfunction

//===========================================================================
function GetLastCreatedUnit takes nothing returns unit
    return bj_lastCreatedUnit
endfunction

//===========================================================================
function CreateNUnitsAtLocFacingLocBJ takes integer count, integer unitId, player whichPlayer, location loc, location lookAt returns group
    return CreateNUnitsAtLoc(count, unitId, whichPlayer, loc, AngleBetweenPoints(loc, lookAt))
endfunction

//===========================================================================
function GetLastCreatedGroupEnum takes nothing returns nothing
    call GroupAddUnit(bj_groupLastCreatedDest, GetEnumUnit())
endfunction

//===========================================================================
function UnitSuspendDecayBJ takes boolean suspend, unit whichUnit returns nothing
    call UnitSuspendDecay(whichUnit, suspend)
endfunction

//===========================================================================
function GetUnitStateSwap takes unitstate whichState, unit whichUnit returns real
    return GetUnitState(whichUnit, whichState)
endfunction

//===========================================================================
function GetUnitLifePercent takes unit whichUnit returns real
    return GetUnitStatePercent(whichUnit, UNIT_STATE_LIFE, UNIT_STATE_MAX_LIFE)
endfunction

//===========================================================================
function GetUnitManaPercent takes unit whichUnit returns real
    return GetUnitStatePercent(whichUnit, UNIT_STATE_MANA, UNIT_STATE_MAX_MANA)
endfunction

//===========================================================================
function SelectGroupBJEnum takes nothing returns nothing
    call SelectUnit( GetEnumUnit(), true )
endfunction

//===========================================================================
function SelectUnitAdd takes unit whichUnit returns nothing
    call SelectUnit(whichUnit, true)
endfunction

//===========================================================================
function SelectUnitRemove takes unit whichUnit returns nothing
    call SelectUnit(whichUnit, false)
endfunction

//===========================================================================
function SetUnitLifeBJ takes unit whichUnit, real newValue returns nothing
    call SetUnitState(whichUnit, UNIT_STATE_LIFE, RMaxBJ(0,newValue))
endfunction

//===========================================================================
function SetUnitManaBJ takes unit whichUnit, real newValue returns nothing
    call SetUnitState(whichUnit, UNIT_STATE_MANA, RMaxBJ(0,newValue))
endfunction

//===========================================================================
function SetUnitLifePercentBJ takes unit whichUnit, real percent returns nothing
    call SetUnitState(whichUnit, UNIT_STATE_LIFE, GetUnitState(whichUnit, UNIT_STATE_MAX_LIFE) * RMaxBJ(0,percent) * 0.01)
endfunction

//===========================================================================
function SetUnitManaPercentBJ takes unit whichUnit, real percent returns nothing
    call SetUnitState(whichUnit, UNIT_STATE_MANA, GetUnitState(whichUnit, UNIT_STATE_MAX_MANA) * RMaxBJ(0,percent) * 0.01)
endfunction

//===========================================================================
function IsUnitDeadBJ takes unit whichUnit returns boolean
    return GetUnitState(whichUnit, UNIT_STATE_LIFE) <= 0
endfunction

//===========================================================================
function IsUnitAliveBJ takes unit whichUnit returns boolean
    return not IsUnitDeadBJ(whichUnit)
endfunction

//===========================================================================
function IsUnitGroupEmptyBJEnum takes nothing returns nothing
    set bj_isUnitGroupEmptyResult = false
endfunction

//===========================================================================
function IsUnitHiddenBJ takes unit whichUnit returns boolean
    return IsUnitHidden(whichUnit)
endfunction

//===========================================================================
function ShowUnitHide takes unit whichUnit returns nothing
    call ShowUnit(whichUnit, false)
endfunction

//===========================================================================
function IssueHauntOrderAtLocBJFilter takes nothing returns boolean
    return GetUnitTypeId(GetFilterUnit()) == 'ngol'
endfunction

//===========================================================================
function IssueTrainOrderByIdBJ takes unit whichUnit, integer unitId returns boolean
    return IssueImmediateOrderById(whichUnit, unitId)
endfunction

//===========================================================================
function GroupTrainOrderByIdBJ takes group g, integer unitId returns boolean
    return GroupImmediateOrderById(g, unitId)
endfunction

//===========================================================================
function IssueUpgradeOrderByIdBJ takes unit whichUnit, integer techId returns boolean
    return IssueImmediateOrderById(whichUnit, techId)
endfunction

//===========================================================================
function GetAttackedUnitBJ takes nothing returns unit
    return GetTriggerUnit()
endfunction

//===========================================================================
function SetUnitFlyHeightBJ takes unit whichUnit, real newHeight, real rate returns nothing
    call SetUnitFlyHeight(whichUnit, newHeight, rate)
endfunction

//===========================================================================
function SetUnitTurnSpeedBJ takes unit whichUnit, real turnSpeed returns nothing
    call SetUnitTurnSpeed(whichUnit, turnSpeed)
endfunction

//===========================================================================
function GetUnitPropWindowBJ takes unit whichUnit returns real
    return GetUnitPropWindow(whichUnit) * bj_RADTODEG
endfunction

//===========================================================================
function GetUnitDefaultPropWindowBJ takes unit whichUnit returns real
    return GetUnitDefaultPropWindow(whichUnit)
endfunction

//===========================================================================
function SetUnitBlendTimeBJ takes unit whichUnit, real blendTime returns nothing
    call SetUnitBlendTime(whichUnit, blendTime)
endfunction

//===========================================================================
function SetUnitAcquireRangeBJ takes unit whichUnit, real acquireRange returns nothing
    call SetUnitAcquireRange(whichUnit, acquireRange)
endfunction

//===========================================================================
function UnitSetCanSleepBJ takes unit whichUnit, boolean canSleep returns nothing
    call UnitAddSleep(whichUnit, canSleep)
endfunction

//===========================================================================
function UnitCanSleepBJ takes unit whichUnit returns boolean
    return UnitCanSleep(whichUnit)
endfunction

//===========================================================================
function UnitWakeUpBJ takes unit whichUnit returns nothing
    call UnitWakeUp(whichUnit)
endfunction

//===========================================================================
function UnitIsSleepingBJ takes unit whichUnit returns boolean
    return UnitIsSleeping(whichUnit)
endfunction

//===========================================================================
function WakePlayerUnitsEnum takes nothing returns nothing
    call UnitWakeUp(GetEnumUnit())
endfunction

//===========================================================================
function UnitGenerateAlarms takes unit whichUnit, boolean generate returns boolean
    return UnitIgnoreAlarm(whichUnit, not generate)
endfunction

//===========================================================================
function DoesUnitGenerateAlarms takes unit whichUnit returns boolean
    return not UnitIgnoreAlarmToggled(whichUnit)
endfunction

//===========================================================================
function PauseAllUnitsBJEnum takes nothing returns nothing
    call PauseUnit( GetEnumUnit(), bj_pauseAllUnitsFlag )
endfunction

//===========================================================================
function PauseUnitBJ takes boolean pause, unit whichUnit returns nothing
    call PauseUnit(whichUnit, pause)
endfunction

//===========================================================================
function IsUnitPausedBJ takes unit whichUnit returns boolean
    return IsUnitPaused(whichUnit)
endfunction

//===========================================================================
function UnitPauseTimedLifeBJ takes boolean flag, unit whichUnit returns nothing
    call UnitPauseTimedLife(whichUnit, flag)
endfunction

//===========================================================================
function UnitApplyTimedLifeBJ takes real duration, integer buffId, unit whichUnit returns nothing
    call UnitApplyTimedLife(whichUnit, buffId, duration)
endfunction

//===========================================================================
function UnitShareVisionBJ takes boolean share, unit whichUnit, player whichPlayer returns nothing
    call UnitShareVision(whichUnit, whichPlayer, share)
endfunction

//===========================================================================
function UnitRemoveAbilityBJ takes integer abilityId, unit whichUnit returns boolean
    return UnitRemoveAbility(whichUnit, abilityId)
endfunction

//===========================================================================
function UnitAddAbilityBJ takes integer abilityId, unit whichUnit returns boolean
    return UnitAddAbility(whichUnit, abilityId)
endfunction

//===========================================================================
function SetUnitExplodedBJ takes unit whichUnit, boolean exploded returns nothing
    call SetUnitExploded(whichUnit, exploded)
endfunction

//===========================================================================
function ExplodeUnitBJ takes unit whichUnit returns nothing
    call SetUnitExploded(whichUnit, true)
    call KillUnit(whichUnit)
endfunction

//===========================================================================
function GetTransportUnitBJ takes nothing returns unit
    return GetTransportUnit()
endfunction

//===========================================================================
function GetLoadedUnitBJ takes nothing returns unit
    return GetLoadedUnit()
endfunction

//===========================================================================
function IsUnitInTransportBJ takes unit whichUnit, unit whichTransport returns boolean
    return IsUnitInTransport(whichUnit, whichTransport)
endfunction

//===========================================================================
function IsUnitLoadedBJ takes unit whichUnit returns boolean
    return IsUnitLoaded(whichUnit)
endfunction

//===========================================================================
function IsUnitIllusionBJ takes unit whichUnit returns boolean
    return IsUnitIllusion(whichUnit)
endfunction

//===========================================================================
function GetLastReplacedUnitBJ takes nothing returns unit
    return bj_lastReplacedUnit
endfunction

//===========================================================================
function AddItemToStockBJ takes integer itemId, unit whichUnit, integer currentStock, integer stockMax returns nothing
    call AddItemToStock(whichUnit, itemId, currentStock, stockMax)
endfunction

//===========================================================================
function AddUnitToStockBJ takes integer unitId, unit whichUnit, integer currentStock, integer stockMax returns nothing
    call AddUnitToStock(whichUnit, unitId, currentStock, stockMax)
endfunction

//===========================================================================
function RemoveItemFromStockBJ takes integer itemId, unit whichUnit returns nothing
    call RemoveItemFromStock(whichUnit, itemId)
endfunction

//===========================================================================
function RemoveUnitFromStockBJ takes integer unitId, unit whichUnit returns nothing
    call RemoveUnitFromStock(whichUnit, unitId)
endfunction

//===========================================================================
function SetUnitUseFoodBJ takes boolean enable, unit whichUnit returns nothing
    call SetUnitUseFood(whichUnit, enable)
endfunction



//***************************************************************************
//*
//*  Destructable Utility Functions
//*
//***************************************************************************

//===========================================================================
function GetLastCreatedDestructable takes nothing returns destructable
    return bj_lastCreatedDestructable
endfunction

//===========================================================================
function ShowDestructableBJ takes boolean flag, destructable d returns nothing
    call ShowDestructable(d, flag)
endfunction

//===========================================================================
function SetDestructableInvulnerableBJ takes destructable d, boolean flag returns nothing
    call SetDestructableInvulnerable(d, flag)
endfunction

//===========================================================================
function IsDestructableInvulnerableBJ takes destructable d returns boolean
    return IsDestructableInvulnerable(d)
endfunction

//===========================================================================
function GetDestructableLoc takes destructable whichDestructable returns location
    return Location(GetDestructableX(whichDestructable), GetDestructableY(whichDestructable))
endfunction

//===========================================================================
function EnumDestructablesInRectAll takes rect r, code actionFunc returns nothing
    call EnumDestructablesInRect(r, null, actionFunc)
endfunction

//===========================================================================
function IsDestructableDeadBJ takes destructable d returns boolean
    return GetDestructableLife(d) <= 0
endfunction

//===========================================================================
function IsDestructableAliveBJ takes destructable d returns boolean
    return not IsDestructableDeadBJ(d)
endfunction

//===========================================================================
// Picks a random destructable from within a rect
//
function RandomDestructableInRectSimpleBJ takes rect r returns destructable
    return RandomDestructableInRectBJ(r, null)
endfunction

//===========================================================================
function SetDestructableLifePercentBJ takes destructable d, real percent returns nothing
    call SetDestructableLife(d, GetDestructableMaxLife(d) * percent * 0.01)
endfunction

//===========================================================================
function SetDestructableMaxLifeBJ takes destructable d, real max returns nothing
    call SetDestructableMaxLife(d, max)
endfunction

//===========================================================================
function FindElevatorWallBlockerEnum takes nothing returns nothing
    set bj_elevatorWallBlocker = GetEnumDestructable()
endfunction

//***************************************************************************
//*
//*  Neutral Building Utility Functions
//*
//***************************************************************************

//===========================================================================
function WaygateActivateBJ takes boolean activate, unit waygate returns nothing
    call WaygateActivate(waygate, activate)
endfunction

//===========================================================================
function WaygateIsActiveBJ takes unit waygate returns boolean
    return WaygateIsActive(waygate)
endfunction

//===========================================================================
function WaygateSetDestinationLocBJ takes unit waygate, location loc returns nothing
    call WaygateSetDestination(waygate, GetLocationX(loc), GetLocationY(loc))
endfunction

//===========================================================================
function WaygateGetDestinationLocBJ takes unit waygate returns location
    return Location(WaygateGetDestinationX(waygate), WaygateGetDestinationY(waygate))
endfunction

//===========================================================================
function UnitSetUsesAltIconBJ takes boolean flag, unit whichUnit returns nothing
    call UnitSetUsesAltIcon(whichUnit, flag)
endfunction


//***************************************************************************
//*
//*  Group and Force Utility Functions
//*
//***************************************************************************

//===========================================================================
function GroupAddUnitSimple takes unit whichUnit, group whichGroup returns nothing
    call GroupAddUnit(whichGroup, whichUnit)
endfunction

//===========================================================================
function GroupRemoveUnitSimple takes unit whichUnit, group whichGroup returns nothing
    call GroupRemoveUnit(whichGroup, whichUnit)
endfunction

//===========================================================================
function GroupAddGroupEnum takes nothing returns nothing
    call GroupAddUnit(bj_groupAddGroupDest, GetEnumUnit())
endfunction

//===========================================================================
function GroupRemoveGroupEnum takes nothing returns nothing
    call GroupRemoveUnit(bj_groupRemoveGroupDest, GetEnumUnit())
endfunction

//===========================================================================
function ForceAddPlayerSimple takes player whichPlayer, force whichForce returns nothing
    call ForceAddPlayer(whichForce, whichPlayer)
endfunction

//===========================================================================
function ForceRemovePlayerSimple takes player whichPlayer, force whichForce returns nothing
    call ForceRemovePlayer(whichForce, whichPlayer)
endfunction

//===========================================================================
function GetUnitsInRectAll takes rect r returns group
    return GetUnitsInRectMatching(r, null)
endfunction

//===========================================================================
function GetUnitsInRectOfPlayerFilter takes nothing returns boolean
    return GetOwningPlayer(GetFilterUnit()) == bj_groupEnumOwningPlayer
endfunction

//===========================================================================
function GetUnitsInRangeOfLocAll takes real radius, location whichLocation returns group
    return GetUnitsInRangeOfLocMatching(radius, whichLocation, null)
endfunction

//===========================================================================
function GetUnitsOfTypeIdAllFilter takes nothing returns boolean
    return GetUnitTypeId(GetFilterUnit()) == bj_groupEnumTypeId
endfunction

//===========================================================================
function GetUnitsOfPlayerAll takes player whichPlayer returns group
    return GetUnitsOfPlayerMatching(whichPlayer, null)
endfunction

//===========================================================================
function GetUnitsOfPlayerAndTypeIdFilter takes nothing returns boolean
    return GetUnitTypeId(GetFilterUnit()) == bj_groupEnumTypeId
endfunction

//===========================================================================
function GetPlayersAll takes nothing returns force
    return bj_FORCE_ALL_PLAYERS
endfunction

//===========================================================================
function CountUnitsInGroupEnum takes nothing returns nothing
    set bj_groupCountUnits = bj_groupCountUnits + 1
endfunction

//===========================================================================
function CountPlayersInForceEnum takes nothing returns nothing
    set bj_forceCountPlayers = bj_forceCountPlayers + 1
endfunction


//***************************************************************************
//*
//*  Animation Utility Functions
//*
//***************************************************************************

//===========================================================================
function ResetUnitAnimation takes unit whichUnit returns nothing
    call SetUnitAnimation(whichUnit, "stand")
endfunction

//===========================================================================
function SetUnitTimeScalePercent takes unit whichUnit, real percentScale returns nothing
    call SetUnitTimeScale(whichUnit, percentScale * 0.01)
endfunction

//===========================================================================
function SetUnitScalePercent takes unit whichUnit, real percentScaleX, real percentScaleY, real percentScaleZ returns nothing
    call SetUnitScale(whichUnit, percentScaleX * 0.01, percentScaleY * 0.01, percentScaleZ * 0.01)
endfunction

//===========================================================================
// This version differs from the common.j interface in that the alpha value
// is reversed so as to be displayed as transparency, and all four parameters
// are treated as percentages rather than bytes.
//
function SetUnitVertexColorBJ takes unit whichUnit, real red, real green, real blue, real transparency returns nothing
    call SetUnitVertexColor(whichUnit, PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0-transparency))
endfunction

//===========================================================================
function UnitAddIndicatorBJ takes unit whichUnit, real red, real green, real blue, real transparency returns nothing
    call AddIndicator(whichUnit, PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0-transparency))
endfunction

//===========================================================================
function DestructableAddIndicatorBJ takes destructable whichDestructable, real red, real green, real blue, real transparency returns nothing
    call AddIndicator(whichDestructable, PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0-transparency))
endfunction

//===========================================================================
function ItemAddIndicatorBJ takes item whichItem, real red, real green, real blue, real transparency returns nothing
    call AddIndicator(whichItem, PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0-transparency))
endfunction

//===========================================================================
// Sets a unit's facing to point directly at a location.
//

//===========================================================================
// Sets a unit's facing to point directly at another unit.
//

//===========================================================================
function QueueUnitAnimationBJ takes unit whichUnit, string whichAnimation returns nothing
    call QueueUnitAnimation(whichUnit, whichAnimation)
endfunction

//===========================================================================
function SetDestructableAnimationBJ takes destructable d, string whichAnimation returns nothing
    call SetDestructableAnimation(d, whichAnimation)
endfunction

//===========================================================================
function QueueDestructableAnimationBJ takes destructable d, string whichAnimation returns nothing
    call QueueDestructableAnimation(d, whichAnimation)
endfunction

//===========================================================================
function SetDestAnimationSpeedPercent takes destructable d, real percentScale returns nothing
    call SetDestructableAnimationSpeed(d, percentScale * 0.01)
endfunction



//***************************************************************************
//*
//*  Dialog Utility Functions
//*
//***************************************************************************

//===========================================================================
function DialogDisplayBJ takes boolean flag, dialog whichDialog, player whichPlayer returns nothing
    call DialogDisplay(whichPlayer, whichDialog, flag)
endfunction

//===========================================================================
function DialogSetMessageBJ takes dialog whichDialog, string message returns nothing
    call DialogSetMessage(whichDialog, message)
endfunction

//===========================================================================
function DialogClearBJ takes dialog whichDialog returns nothing
    call DialogClear(whichDialog)
endfunction

//===========================================================================
function GetLastCreatedButtonBJ takes nothing returns button
    return bj_lastCreatedButton
endfunction

//===========================================================================
function GetClickedButtonBJ takes nothing returns button
    return GetClickedButton()
endfunction

//===========================================================================
function GetClickedDialogBJ takes nothing returns dialog
    return GetClickedDialog()
endfunction

//***************************************************************************
//*
//*  Alliance Utility Functions
//*
//***************************************************************************

//===========================================================================
// Set all flags used by the in-game "Shared Vision" checkbox.
//
function SetPlayerAllianceStateVisionBJ takes player sourcePlayer, player otherPlayer, boolean flag returns nothing
    call SetPlayerAlliance(sourcePlayer, otherPlayer, ALLIANCE_SHARED_VISION, flag)
endfunction

//===========================================================================
// Set all flags used by the in-game "Shared Units" checkbox.
//
function SetPlayerAllianceStateControlBJ takes player sourcePlayer, player otherPlayer, boolean flag returns nothing
    call SetPlayerAlliance(sourcePlayer, otherPlayer, ALLIANCE_SHARED_CONTROL, flag)
endfunction

//===========================================================================
// Set all flags used by the in-game "Shared Units" checkbox with the Full
// Shared Unit Control feature enabled.
//
function SetPlayerAllianceStateFullControlBJ takes player sourcePlayer, player otherPlayer, boolean flag returns nothing
    call SetPlayerAlliance(sourcePlayer, otherPlayer, ALLIANCE_SHARED_ADVANCED_CONTROL, flag)
endfunction

//===========================================================================
function MakeUnitsPassiveForPlayerEnum takes nothing returns nothing
    call SetUnitOwner(GetEnumUnit(), Player(bj_PLAYER_NEUTRAL_VICTIM), false)
endfunction

//===========================================================================
function EndGameBJ takes nothing returns nothing
    call EndGame( true )
endfunction

//===========================================================================
function SetPlayerOnScoreScreenBJ takes boolean flag, player whichPlayer returns nothing
    call SetPlayerOnScoreScreen(whichPlayer, flag)
endfunction



//***************************************************************************
//*
//*  Quest Utility Functions
//*
//***************************************************************************

//===========================================================================
function DestroyQuestBJ takes quest whichQuest returns nothing
    call DestroyQuest(whichQuest)
endfunction

//===========================================================================
function QuestSetEnabledBJ takes boolean enabled, quest whichQuest returns nothing
    call QuestSetEnabled(whichQuest, enabled)
endfunction

//===========================================================================
function QuestSetTitleBJ takes quest whichQuest, string title returns nothing
    call QuestSetTitle(whichQuest, title)
endfunction

//===========================================================================
function QuestSetDescriptionBJ takes quest whichQuest, string description returns nothing
    call QuestSetDescription(whichQuest, description)
endfunction

//===========================================================================
function QuestSetCompletedBJ takes quest whichQuest, boolean completed returns nothing
    call QuestSetCompleted(whichQuest, completed)
endfunction

//===========================================================================
function QuestSetFailedBJ takes quest whichQuest, boolean failed returns nothing
    call QuestSetFailed(whichQuest, failed)
endfunction

//===========================================================================
function QuestSetDiscoveredBJ takes quest whichQuest, boolean discovered returns nothing
    call QuestSetDiscovered(whichQuest, discovered)
endfunction

//===========================================================================
function GetLastCreatedQuestBJ takes nothing returns quest
    return bj_lastCreatedQuest
endfunction

//===========================================================================
function QuestItemSetDescriptionBJ takes questitem whichQuestItem, string description returns nothing
    call QuestItemSetDescription(whichQuestItem, description)
endfunction

//===========================================================================
function QuestItemSetCompletedBJ takes questitem whichQuestItem, boolean completed returns nothing
    call QuestItemSetCompleted(whichQuestItem, completed)
endfunction

//===========================================================================
function GetLastCreatedQuestItemBJ takes nothing returns questitem
    return bj_lastCreatedQuestItem
endfunction

//===========================================================================
function DestroyDefeatConditionBJ takes defeatcondition whichCondition returns nothing
    call DestroyDefeatCondition(whichCondition)
endfunction

//===========================================================================
function DefeatConditionSetDescriptionBJ takes defeatcondition whichCondition, string description returns nothing
    call DefeatConditionSetDescription(whichCondition, description)
endfunction

//===========================================================================
function GetLastCreatedDefeatConditionBJ takes nothing returns defeatcondition
    return bj_lastCreatedDefeatCondition
endfunction

//===========================================================================
function FlashQuestDialogButtonBJ takes nothing returns nothing
    call FlashQuestDialogButton()
endfunction


//***************************************************************************
//*
//*  Timer Utility Functions
//*
//***************************************************************************

//===========================================================================
function DestroyTimerBJ takes timer whichTimer returns nothing
    call DestroyTimer(whichTimer)
endfunction

//=========================================================================== if literal
function PauseTimerBJ takes boolean pause, timer whichTimer returns nothing
    if pause then
        call PauseTimer(whichTimer)
    else
        call ResumeTimer(whichTimer)
    endif
endfunction

//===========================================================================
function GetLastCreatedTimerBJ takes nothing returns timer
    return bj_lastStartedTimer
endfunction

//===========================================================================
function DestroyTimerDialogBJ takes timerdialog td returns nothing
    call DestroyTimerDialog(td)
endfunction

//===========================================================================
function TimerDialogSetTitleBJ takes timerdialog td, string title returns nothing
    call TimerDialogSetTitle(td, title)
endfunction

//===========================================================================
function TimerDialogSetTitleColorBJ takes timerdialog td, real red, real green, real blue, real transparency returns nothing
    call TimerDialogSetTitleColor(td, PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0-transparency))
endfunction

//===========================================================================
function TimerDialogSetTimeColorBJ takes timerdialog td, real red, real green, real blue, real transparency returns nothing
    call TimerDialogSetTimeColor(td, PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0-transparency))
endfunction

//===========================================================================
function TimerDialogSetSpeedBJ takes timerdialog td, real speedMultFactor returns nothing
    call TimerDialogSetSpeed(td, speedMultFactor)
endfunction

//===========================================================================
function TimerDialogDisplayBJ takes boolean show, timerdialog td returns nothing
    call TimerDialogDisplay(td, show)
endfunction

//===========================================================================
function GetLastCreatedTimerDialogBJ takes nothing returns timerdialog
    return bj_lastCreatedTimerDialog
endfunction



//***************************************************************************
//*
//*  Leaderboard Utility Functions
//*
//***************************************************************************

//===========================================================================
function LeaderboardSetPlayerItemValueBJ takes player whichPlayer, leaderboard lb, integer val returns nothing
    call LeaderboardSetItemValue(lb, LeaderboardGetPlayerIndex(lb, whichPlayer), val)
endfunction

//===========================================================================
function LeaderboardSetPlayerItemLabelBJ takes player whichPlayer, leaderboard lb, string val returns nothing
    call LeaderboardSetItemLabel(lb, LeaderboardGetPlayerIndex(lb, whichPlayer), val)
endfunction

//===========================================================================
function LeaderboardSetPlayerItemStyleBJ takes player whichPlayer, leaderboard lb, boolean showLabel, boolean showValue, boolean showIcon returns nothing
    call LeaderboardSetItemStyle(lb, LeaderboardGetPlayerIndex(lb, whichPlayer), showLabel, showValue, showIcon)
endfunction

//===========================================================================
function LeaderboardSetPlayerItemLabelColorBJ takes player whichPlayer, leaderboard lb, real red, real green, real blue, real transparency returns nothing
    call LeaderboardSetItemLabelColor(lb, LeaderboardGetPlayerIndex(lb, whichPlayer), PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0-transparency))
endfunction

//===========================================================================
function LeaderboardSetPlayerItemValueColorBJ takes player whichPlayer, leaderboard lb, real red, real green, real blue, real transparency returns nothing
    call LeaderboardSetItemValueColor(lb, LeaderboardGetPlayerIndex(lb, whichPlayer), PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0-transparency))
endfunction

//===========================================================================
function LeaderboardSetLabelColorBJ takes leaderboard lb, real red, real green, real blue, real transparency returns nothing
    call LeaderboardSetLabelColor(lb, PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0-transparency))
endfunction

//===========================================================================
function LeaderboardSetValueColorBJ takes leaderboard lb, real red, real green, real blue, real transparency returns nothing
    call LeaderboardSetValueColor(lb, PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0-transparency))
endfunction

//===========================================================================
function LeaderboardSetStyleBJ takes leaderboard lb, boolean showLabel, boolean showNames, boolean showValues, boolean showIcons returns nothing
    call LeaderboardSetStyle(lb, showLabel, showNames, showValues, showIcons)
endfunction

//===========================================================================
function LeaderboardGetItemCountBJ takes leaderboard lb returns integer
    return LeaderboardGetItemCount(lb)
endfunction

//===========================================================================
function LeaderboardHasPlayerItemBJ takes leaderboard lb, player whichPlayer returns boolean
    return LeaderboardHasPlayerItem(lb, whichPlayer)
endfunction

//===========================================================================
function DestroyLeaderboardBJ takes leaderboard lb returns nothing
    call DestroyLeaderboard(lb)
endfunction

//===========================================================================
function LeaderboardDisplayBJ takes boolean show, leaderboard lb returns nothing
    call LeaderboardDisplay(lb, show)
endfunction

//===========================================================================
function LeaderboardSortItemsByPlayerBJ takes leaderboard lb, boolean ascending returns nothing
    call LeaderboardSortItemsByPlayer(lb, ascending)
endfunction

//===========================================================================
function LeaderboardSortItemsByLabelBJ takes leaderboard lb, boolean ascending returns nothing
    call LeaderboardSortItemsByLabel(lb, ascending)
endfunction

//===========================================================================
function LeaderboardGetPlayerIndexBJ takes player whichPlayer, leaderboard lb returns integer
    return LeaderboardGetPlayerIndex(lb, whichPlayer) + 1
endfunction

//===========================================================================
function PlayerGetLeaderboardBJ takes player whichPlayer returns leaderboard
    return PlayerGetLeaderboard(whichPlayer)
endfunction

//===========================================================================
function GetLastCreatedLeaderboard takes nothing returns leaderboard
    return bj_lastCreatedLeaderboard
endfunction

//===========================================================================
function MultiboardAllowDisplayBJ takes boolean flag returns nothing
    call MultiboardSuppressDisplay(not flag)
endfunction



//***************************************************************************
//*
//*  Text Tag Utility Functions
//*
//***************************************************************************

//===========================================================================
// Scale the font size linearly such that size 10 equates to height 0.023.
// Screen-relative font heights are harder to grasp and than font sizes.
//
function TextTagSize2Height takes real size returns real
    return size * 0.023 / 10
endfunction

//===========================================================================
// Scale the speed linearly such that speed 128 equates to 0.071.
// Screen-relative speeds are hard to grasp.
//
function TextTagSpeed2Velocity takes real speed returns real
    return speed * 0.071 / 128
endfunction

//===========================================================================
function SetTextTagColorBJ takes texttag tt, real red, real green, real blue, real transparency returns nothing
    call SetTextTagColor(tt, PercentTo255(red), PercentTo255(green), PercentTo255(blue), PercentTo255(100.0-transparency))
endfunction

//===========================================================================
function DestroyTextTagBJ takes texttag tt returns nothing
    call DestroyTextTag(tt)
endfunction

//===========================================================================
function GetLastCreatedTextTag takes nothing returns texttag
    return bj_lastCreatedTextTag
endfunction



//***************************************************************************
//*
//*  Cinematic Utility Functions
//*
//***************************************************************************

//===========================================================================
function PauseGameOn takes nothing returns nothing
    call PauseGame(true)
endfunction

//===========================================================================
function PauseGameOff takes nothing returns nothing
    call PauseGame(false)
endfunction

//===========================================================================
function PingMinimapLocForForce takes force whichForce, location loc, real duration returns nothing
    call PingMinimapForForce(whichForce, GetLocationX(loc), GetLocationY(loc), duration)
endfunction

//===========================================================================
function PingMinimapLocForPlayer takes player whichPlayer, location loc, real duration returns nothing
    call PingMinimapForPlayer(whichPlayer, GetLocationX(loc), GetLocationY(loc), duration)
endfunction

//===========================================================================
function PingMinimapLocForForceEx takes force whichForce, location loc, real duration, integer style, real red, real green, real blue returns nothing
    call PingMinimapForForceEx(whichForce, GetLocationX(loc), GetLocationY(loc), duration, style, red, green, blue)
endfunction

//===========================================================================
function GetLastTransmissionDurationBJ takes nothing returns real
    return bj_lastTransmissionDuration
endfunction

//===========================================================================
function ForceCinematicSubtitlesBJ takes boolean flag returns nothing
    call ForceCinematicSubtitles(flag)
endfunction


//***************************************************************************
//*
//*  Cinematic Mode Utility Functions
//*
//***************************************************************************

//===========================================================================
function CinematicModeBJ takes boolean cineMode, force forForce returns nothing
    call CinematicModeExBJ(cineMode, forForce, bj_CINEMODE_INTERFACEFADE)
endfunction



//***************************************************************************
//*
//*  Cinematic Filter Utility Functions
//*
//***************************************************************************

//===========================================================================
function DisplayCineFilterBJ takes boolean flag returns nothing
    call DisplayCineFilter(flag)
endfunction

//***************************************************************************
//*
//*  Rescuable Unit Utility Functions
//*
//***************************************************************************

//===========================================================================
// Determines whether or not rescued units automatically change color upon
// being rescued.
//
function SetRescueUnitColorChangeBJ takes boolean changeColor returns nothing
    set bj_rescueChangeColorUnit = changeColor
endfunction

//===========================================================================
// Determines whether or not rescued buildings automatically change color
// upon being rescued.
//
function SetRescueBuildingColorChangeBJ takes boolean changeColor returns nothing
    set bj_rescueChangeColorBldg = changeColor
endfunction

//***************************************************************************
//*
//*  Research and Upgrade Utility Functions
//*
//***************************************************************************

//===========================================================================
function SetPlayerTechResearchedSwap takes integer techid, integer levels, player whichPlayer returns nothing
    call SetPlayerTechResearched(whichPlayer, techid, levels)
endfunction

//===========================================================================
function SetPlayerTechMaxAllowedSwap takes integer techid, integer maximum, player whichPlayer returns nothing
    call SetPlayerTechMaxAllowed(whichPlayer, techid, maximum)
endfunction

//===========================================================================
function SetPlayerMaxHeroesAllowed takes integer maximum, player whichPlayer returns nothing
    call SetPlayerTechMaxAllowed(whichPlayer, 'HERO', maximum)
endfunction

//===========================================================================
function GetPlayerTechCountSimple takes integer techid, player whichPlayer returns integer
    return GetPlayerTechCount(whichPlayer, techid, true)
endfunction

//===========================================================================
function GetPlayerTechMaxAllowedSwap takes integer techid, player whichPlayer returns integer
    return GetPlayerTechMaxAllowed(whichPlayer, techid)
endfunction

//===========================================================================
function SetPlayerAbilityAvailableBJ takes boolean avail, integer abilid, player whichPlayer returns nothing
    call SetPlayerAbilityAvailable(whichPlayer, abilid, avail)
endfunction



//***************************************************************************
//*
//*  Campaign Utility Functions
//*
//***************************************************************************

//===========================================================================
function SaveGameCacheBJ takes gamecache cache returns boolean
    return SaveGameCache(cache)
endfunction

//===========================================================================
function GetLastCreatedGameCacheBJ takes nothing returns gamecache
    return bj_lastCreatedGameCache
endfunction

//===========================================================================
function StoreRealBJ takes real value, string key, string missionKey, gamecache cache returns nothing
    call StoreReal(cache, missionKey, key, value)
endfunction

//===========================================================================
function StoreIntegerBJ takes integer value, string key, string missionKey, gamecache cache returns nothing
    call StoreInteger(cache, missionKey, key, value)
endfunction

//===========================================================================
function StoreBooleanBJ takes boolean value, string key, string missionKey, gamecache cache returns nothing
    call StoreBoolean(cache, missionKey, key, value)
endfunction

//===========================================================================
function StoreStringBJ takes string value, string key, string missionKey, gamecache cache returns boolean
    return StoreString(cache, missionKey, key, value)
endfunction

//===========================================================================
function StoreUnitBJ takes unit whichUnit, string key, string missionKey, gamecache cache returns boolean
    return StoreUnit(cache, missionKey, key, whichUnit)
endfunction

//===========================================================================
function GetStoredRealBJ takes string key, string missionKey, gamecache cache returns real
    //call SyncStoredReal(cache, missionKey, key)
    return GetStoredReal(cache, missionKey, key)
endfunction

//===========================================================================
function GetStoredIntegerBJ takes string key, string missionKey, gamecache cache returns integer
    //call SyncStoredInteger(cache, missionKey, key)
    return GetStoredInteger(cache, missionKey, key)
endfunction

//===========================================================================
function GetStoredBooleanBJ takes string key, string missionKey, gamecache cache returns boolean
    //call SyncStoredBoolean(cache, missionKey, key)
    return GetStoredBoolean(cache, missionKey, key)
endfunction

//===========================================================================
function RestoreUnitLocFacingPointBJ takes string key, string missionKey, gamecache cache, player forWhichPlayer, location loc, location lookAt returns unit
    //call SyncStoredUnit(cache, missionKey, key)
    return RestoreUnitLocFacingAngleBJ(key, missionKey, cache, forWhichPlayer, loc, AngleBetweenPoints(loc, lookAt))
endfunction

//===========================================================================
function GetLastRestoredUnitBJ takes nothing returns unit
    return bj_lastLoadedUnit
endfunction

//===========================================================================
function FlushGameCacheBJ takes gamecache cache returns nothing
    call FlushGameCache(cache)
endfunction

//===========================================================================
function FlushStoredMissionBJ takes string missionKey, gamecache cache returns nothing
    call FlushStoredMission(cache, missionKey)
endfunction

//=========================================================================== if direct type
function HaveStoredValue takes string key, integer valueType, string missionKey, gamecache cache returns boolean
    if (valueType == bj_GAMECACHE_BOOLEAN) then
        return HaveStoredBoolean(cache, missionKey, key)
    elseif (valueType == bj_GAMECACHE_INTEGER) then
        return HaveStoredInteger(cache, missionKey, key)
    elseif (valueType == bj_GAMECACHE_REAL) then
        return HaveStoredReal(cache, missionKey, key)
    elseif (valueType == bj_GAMECACHE_UNIT) then
        return HaveStoredUnit(cache, missionKey, key)
    elseif (valueType == bj_GAMECACHE_STRING) then
        return HaveStoredString(cache, missionKey, key)
    else
        // Unrecognized value type - ignore the request.
        return false
    endif
endfunction

//===========================================================================
function ShowCustomCampaignButton takes boolean show, integer whichButton returns nothing
    call SetCustomCampaignButtonVisible(whichButton - 1, show)
endfunction

//===========================================================================
function IsCustomCampaignButtonVisibile takes integer whichButton returns boolean
    return GetCustomCampaignButtonVisible(whichButton - 1)
endfunction

//===========================================================================
function LoadGameBJ takes string loadFileName, boolean doScoreScreen returns nothing
    call LoadGame(loadFileName, doScoreScreen)
endfunction

//===========================================================================
function RenameSaveDirectoryBJ takes string sourceDirName, string destDirName returns boolean
    return RenameSaveDirectory(sourceDirName, destDirName)
endfunction

//===========================================================================
function RemoveSaveDirectoryBJ takes string sourceDirName returns boolean
    return RemoveSaveDirectory(sourceDirName)
endfunction

//===========================================================================
function CopySaveGameBJ takes string sourceSaveName, string destSaveName returns boolean
    return CopySaveGame(sourceSaveName, destSaveName)
endfunction

//***************************************************************************
//*
//*  Miscellaneous Utility Functions
//*
//***************************************************************************

//===========================================================================
function GetPlayerStartLocationX takes player whichPlayer returns real
    return GetStartLocationX(GetPlayerStartLocation(whichPlayer))
endfunction

//===========================================================================
function GetPlayerStartLocationY takes player whichPlayer returns real
    return GetStartLocationY(GetPlayerStartLocation(whichPlayer))
endfunction

//===========================================================================
function GetPlayerStartLocationLoc takes player whichPlayer returns location
    return GetStartLocationLoc(GetPlayerStartLocation(whichPlayer))
endfunction

//===========================================================================
function IsPlayerSlotState takes player whichPlayer, playerslotstate whichState returns boolean
    return GetPlayerSlotState(whichPlayer) == whichState
endfunction

//===========================================================================
function AdjustPlayerStateSimpleBJ takes player whichPlayer, playerstate whichPlayerState, integer delta returns nothing
    call SetPlayerState(whichPlayer, whichPlayerState, GetPlayerState(whichPlayer, whichPlayerState) + delta)
endfunction

//===========================================================================
function SetPlayerFlagBJ takes playerstate whichPlayerFlag, boolean flag, player whichPlayer returns nothing
    call SetPlayerState(whichPlayer, whichPlayerFlag, IntegerTertiaryOp(flag, 1, 0))
endfunction

//===========================================================================
function IsPlayerFlagSetBJ takes playerstate whichPlayerFlag, player whichPlayer returns boolean
    return GetPlayerState(whichPlayer, whichPlayerFlag) == 1
endfunction

//===========================================================================
function AddResourceAmountBJ takes integer delta, unit whichUnit returns nothing
    call AddResourceAmount(whichUnit, delta)
endfunction

//===========================================================================
function GetConvertedPlayerId takes player whichPlayer returns integer
    return GetPlayerId(whichPlayer) + 1
endfunction

//===========================================================================
function ConvertedPlayer takes integer convertedPlayerId returns player
    return Player(convertedPlayerId - 1)
endfunction

//===========================================================================
function GetLastHauntedGoldMine takes nothing returns unit
    return bj_lastHauntedGoldMine
endfunction

//===========================================================================
function SetPlayerColorBJEnum takes nothing returns nothing
    call SetUnitColor(GetEnumUnit(), bj_setPlayerTargetColor)
endfunction

//=========================================================================== if boolean
function SetPlayerUnitAvailableBJ takes integer unitId, boolean allowed, player whichPlayer returns nothing
    if allowed then
        call SetPlayerTechMaxAllowed(whichPlayer, unitId, -1)
    else
        call SetPlayerTechMaxAllowed(whichPlayer, unitId, 0)
    endif
endfunction

//===========================================================================
function LockGameSpeedBJ takes nothing returns nothing
    call SetMapFlag(MAP_LOCK_SPEED, true)
endfunction

//===========================================================================
function UnlockGameSpeedBJ takes nothing returns nothing
    call SetMapFlag(MAP_LOCK_SPEED, false)
endfunction

//===========================================================================
function IssueTargetOrderBJ takes unit whichUnit, string order, widget targetWidget returns boolean
    return IssueTargetOrder( whichUnit, order, targetWidget )
endfunction

//===========================================================================
function IssuePointOrderLocBJ takes unit whichUnit, string order, location whichLocation returns boolean
    return IssuePointOrderLoc( whichUnit, order, whichLocation )
endfunction

//===========================================================================
// Two distinct trigger actions can't share the same function name, so this
// dummy function simply mimics the behavior of an existing call.
//
function IssueTargetDestructableOrder takes unit whichUnit, string order, widget targetWidget returns boolean
    return IssueTargetOrder( whichUnit, order, targetWidget )
endfunction

//===========================================================================
function IssueImmediateOrderBJ takes unit whichUnit, string order returns boolean
    return IssueImmediateOrder( whichUnit, order )
endfunction

//===========================================================================
function GroupTargetOrderBJ takes group whichGroup, string order, widget targetWidget returns boolean
    return GroupTargetOrder( whichGroup, order, targetWidget )
endfunction

//===========================================================================
function GroupPointOrderLocBJ takes group whichGroup, string order, location whichLocation returns boolean
    return GroupPointOrderLoc( whichGroup, order, whichLocation )
endfunction

//===========================================================================
function GroupImmediateOrderBJ takes group whichGroup, string order returns boolean
    return GroupImmediateOrder( whichGroup, order )
endfunction

//===========================================================================
// Two distinct trigger actions can't share the same function name, so this
// dummy function simply mimics the behavior of an existing call.
//
function GroupTargetDestructableOrder takes group whichGroup, string order, widget targetWidget returns boolean
    return GroupTargetOrder( whichGroup, order, targetWidget )
endfunction

//===========================================================================
function GetDyingDestructable takes nothing returns destructable
    return GetTriggerWidget()
endfunction

//===========================================================================
// Utility function for use by editor-generated item drop table triggers.
// This function is added as an action to all destructable drop triggers,
// so that a widget drop may be differentiated from a unit drop.
//
function SaveDyingWidget takes nothing returns nothing
    set bj_lastDyingWidget = GetTriggerWidget()
endfunction

//===========================================================================
function SetBlightRectBJ takes boolean addBlight, player whichPlayer, rect r returns nothing
    call SetBlightRect(whichPlayer, r, addBlight)
endfunction

//===========================================================================
function SetBlightRadiusLocBJ takes boolean addBlight, player whichPlayer, location loc, real radius returns nothing
    call SetBlightLoc(whichPlayer, loc, radius, addBlight)
endfunction

//***************************************************************************
//*
//*  Melee Template Visibility Settings
//*
//***************************************************************************

//===========================================================================
function MeleeStartingVisibility takes nothing returns nothing
    // Start by setting the ToD.
    call SetFloatGameState(GAME_STATE_TIME_OF_DAY, bj_MELEE_STARTING_TOD)

    // call FogMaskEnable(true)
    // call FogEnable(true)
endfunction

//***************************************************************************
//*
//*  Melee Template Granted Hero Items
//*
//***************************************************************************

//===========================================================================
function MeleeTrainedUnitIsHeroBJFilter takes nothing returns boolean
    return IsUnitType(GetFilterUnit(), UNIT_TYPE_HERO)
endfunction

//===========================================================================
function MeleeGrantItemsToTrainedHero takes nothing returns nothing
    call MeleeGrantItemsToHero(GetTrainedUnit())
endfunction

//===========================================================================
function MeleeGrantItemsToHiredHero takes nothing returns nothing
    call MeleeGrantItemsToHero(GetSoldUnit())
endfunction

function LockGuardPosition takes unit targ returns nothing
    call SetUnitCreepGuard(targ,true)
endfunction

//===========================================================================
function MeleeTriggerActionConstructCancel takes nothing returns nothing
    call MeleeCheckLostUnit(GetCancelledStructure())
endfunction

//===========================================================================
function MeleeTriggerActionUnitConstructionStart takes nothing returns nothing
    call MeleeCheckAddedUnit(GetConstructingStructure())
endfunction

//===========================================================================
function RemovePurchasedItem takes nothing returns nothing
    call RemoveItemFromStock(GetSellingUnit(), GetItemTypeId(GetSoldItem()))
endfunction

//***************************************************************************
//*
//*  Random distribution
//*
//*  Used to select a random object from a given distribution of chances
//*
//*  - RandomDistReset clears the distribution list
//*
//*  - RandomDistAddItem adds a new object to the distribution list
//*    with a given identifier and an integer chance to be chosen
//*
//*  - RandomDistChoose will use the current distribution list to choose
//*    one of the objects randomly based on the chance distribution
//*
//*  Note that the chances are effectively normalized by their sum,
//*  so only the relative values of each chance are important
//*
//***************************************************************************

//===========================================================================
function RandomDistReset takes nothing returns nothing
    set bj_randDistCount = 0
endfunction
