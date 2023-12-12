//============================================================================
// Native types. All native functions take extended handle types when
// possible to help prevent passing bad values to native functions
//
type agent extends handle// all reference counted objects
type event extends agent    // a reference to an event registration
type player extends agent    // a single player reference
type widget extends agent    // an interactive game object with life
type unit extends widget// a single unit reference
type destructable extends widget
// 1
// 2
// 3
type item extends widget
type ability extends agent
type buff extends ability
type force extends agent
type group extends agent
type trigger extends agent
type triggercondition extends agent
type     triggeraction extends handle
type timer extends agent
type location extends agent
type region extends agent
type rect extends agent
type boolexpr extends agent
type sound extends agent
type conditionfunc extends boolexpr
type filterfunc extends boolexpr
type unitpool extends handle
type itempool extends handle
type race extends handle
type alliancetype extends handle
type racepreference extends handle
type gamestate extends handle
type igamestate extends gamestate
type fgamestate extends gamestate
type playerstate extends handle
type playerscore extends handle
type playergameresult extends handle
type unitstate extends handle
type aidifficulty extends handle
type eventid extends handle
type gameevent extends eventid
type playerevent extends eventid
type playerunitevent extends eventid
type unitevent extends eventid
type limitop extends eventid
type widgetevent extends eventid
type dialogevent extends eventid
type unittype extends handle
type projectiletype extends handle
type gamespeed extends handle
type gamedifficulty extends handle
type gametype extends handle
type mapflag extends handle
type mapvisibility extends handle
type mapsetting extends handle
type mapdensity extends handle
type mapcontrol extends handle
type minimapicon extends handle
type playerslotstate extends handle
type volumegroup extends handle
type camerafield extends handle
type camerasetup extends handle
type playercolor extends handle
type placement extends handle
type startlocprio extends handle
type raritycontrol extends handle
type blendmode extends handle
type texmapflags extends handle
type effect extends agent
type effecttype extends handle
type weathereffect extends handle
type terraindeformation extends handle
type fogstate extends handle
type fogmodifier extends agent
type dialog extends agent
type button extends agent
type quest extends agent
type questitem extends agent
type defeatcondition extends agent
type timerdialog extends agent
type leaderboard extends agent
type multiboard extends agent
type multiboarditem extends agent
type trackable extends agent
type gamecache extends agent
type version extends handle
type itemtype extends handle
type texttag extends handle
type attacktype extends handle
type damagetype extends handle
type weapontype extends handle
type soundtype extends handle
type lightning extends handle
type pathingtype extends handle
type mappedfield extends handle
type mappedtype extends handle
type attachmenttype extends mappedtype
type bonetype extends attachmenttype
type animtype extends mappedtype
type subanimtype extends animtype
type cursoranimtype extends mappedtype
type image extends handle
type ubersplat extends handle
type hashtable extends agent
type projectile extends agent
type doodad extends agent
type framehandle extends handle
type originframetype extends handle
type framepointtype extends handle
type textaligntype extends handle
type frameeventtype extends handle
type oskeytype extends handle
type mousebuttontype extends handle
type abilityintegerfield extends handle
type abilityrealfield extends handle
type abilitybooleanfield extends handle
type abilitystringfield extends handle
type abilityintegerlevelfield extends handle
type abilityreallevelfield extends handle
type abilitybooleanlevelfield extends handle
type abilitystringlevelfield extends handle
type abilityintegerlevelarrayfield extends handle
type abilityreallevelarrayfield extends handle
type abilitybooleanlevelarrayfield extends handle
type abilitystringlevelarrayfield extends handle
type buffstringfield extends handle
type unitintegerfield extends handle
type unitrealfield extends handle
type unitbooleanfield extends handle
type unitstringfield extends handle
type unitweaponintegerfield extends handle
type unitweaponrealfield extends handle
type unitweaponbooleanfield extends handle
type unitweaponstringfield extends handle
type itemintegerfield extends handle
type itemrealfield extends handle
type itembooleanfield extends handle
type itemstringfield extends handle
type movetype extends handle
type pathingaitype extends handle
type collisiontype extends handle
type targetflag extends handle
type armortype extends handle
type heroattribute extends handle
type defensetype extends handle
type regentype extends handle
type unitcategory extends handle
type pathingflag extends handle
type commandbuttoneffect extends handle
type timetype extends handle
type variabletype extends handle
type jassthread extends handle
type handlelist extends handle
type textfilehandle extends handle

constant native ConvertRace takes integer i returns race
constant native ConvertAllianceType takes integer i returns alliancetype
constant native ConvertRacePref takes integer i returns racepreference
constant native ConvertIGameState takes integer i returns igamestate
