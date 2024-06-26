package raft.war.binary.parser.data

val DoodadMetaData : HashMap<String, MetaData> = hashMapOf(
	"danf" to MetaData("animInFog", "Animate in Fog", "bool", 0),
	"dcat" to MetaData("category", "Category", "doodadCategory", 0),
	"dcpr" to MetaData("canPlaceRandScale", "Can Place Random Scale", "bool", 0),
	"ddes" to MetaData("defScale", "Default Scale", "unreal", 0),
	"dfil" to MetaData("file", "Model File", "model", 0),
	"dflt" to MetaData("floats", "Floats", "bool", 0),
	"dfxr" to MetaData("fixedRot", "Fixed Rotation", "unreal", 0),
	"dimc" to MetaData("ignoreModelClick", "Ignore Model Clicks", "bool", 0),
	"dmap" to MetaData("maxPitch", "Maximum Pitch Angle (degrees)", "unreal", 0),
	"dmar" to MetaData("maxRoll", "Max Roll Angle (degrees)", "unreal", 0),
	"dmas" to MetaData("maxScale", "Maximum Scale", "unreal", 0),
	"dmis" to MetaData("minScale", "Minimum Scale", "unreal", 0),
	"dmmb" to MetaData("MMBlue", "Minimap Color 3 (Blue)", "int", 0),
	"dmmg" to MetaData("MMGreen", "Minimap Color 2 (Green)", "int", 0),
	"dmmr" to MetaData("MMRed", "Minimap Color 1 (Red)", "int", 0),
	"dnam" to MetaData("Name", "Name", "string", 0),
	"donc" to MetaData("onCliffs", "Placeable on Cliffs", "bool", 0),
	"donw" to MetaData("onWater", "Placeable on Water", "bool", 0),
	"dptx" to MetaData("pathTex", "Pathing Texture", "pathingTexture", 0),
	"dsel" to MetaData("selSize", "Selection Size", "unreal", 0),
	"dshd" to MetaData("shadow", "Has a Shadow", "bool", 0),
	"dshf" to MetaData("showInFog", "Show in Fog", "bool", 0),
	"dsmm" to MetaData("showInMM", "Minimap - Show", "bool", 0),
	"dsnd" to MetaData("soundLoop", "Looping Sound", "soundLabel", 0),
	"dtil" to MetaData("tilesets", "Tilesets", "tilesetList", 0),
	"dtsp" to MetaData("tilesetSpecific", "Has Tileset Specific Data", "bool", 0),
	"duch" to MetaData("useClickHelper", "Use Click Helper", "bool", 0),
	"dumc" to MetaData("useMMColor", "Minimap - Use Custom Color", "bool", 0),
	"dusr" to MetaData("UserList", "On User-Specified List", "bool", 0),
	"dvar" to MetaData("numVar", "Variations", "int", 0),
	"dvb1" to MetaData("vertB", "Tinting Color 3 (Blue)", "int", 10),
	"dvg1" to MetaData("vertG", "Tinting Color 2 (Green)", "int", 10),
	"dvis" to MetaData("visRadius", "Visibility Radius", "unreal", 0),
	"dvr1" to MetaData("vertR", "Tinting Color 1 (Red)", "int", 10),
	"dwlk" to MetaData("walkable", "Walkable", "bool", 0),
)