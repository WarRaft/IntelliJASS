
// TODO: This all deprecated code that was made by using GUI in WorldEdit.
// This code should be re-wrote with using ZINC/vJass/Lua/Etc
globals
    trigger gg_trg_APITypecast= null
trigger gg_trg_Create_units= null
trigger gg_trg_Init_sounds= null
trigger gg_trg_Zepplin_Teleport= null
trigger gg_trg_Azeroth_Zepplin= null
trigger gg_trg_Lordaeron_Zepplin= null
trigger gg_trg_Stromgarde_Zepplin= null
trigger gg_trg_Kul_Tiras_Zepplin= null
trigger gg_trg_Kul_Tiras_Zepplin_Early= null
trigger gg_trg_Quelthalas_Zepplin= null
trigger gg_trg_Khaz_Modan_Zepplin= null
trigger gg_trg_Gilneas_Zepplin= null
trigger gg_trg_Dalaran_Zepplin= null
trigger gg_trg_Aerie_Peak_Zepplin= null
trigger gg_trg_Refuge_Zepplin= null
trigger gg_trg_Refuge_Zone_1= null
trigger gg_trg_Refuge_Zone_2= null
trigger gg_trg_Refuge_Zone_3= null
trigger gg_trg_Refuge_Zone_Warning= null
trigger gg_trg_Shipyard_Limiter_Alliance= null
trigger gg_trg_Shipyard_Limiter_Horde= null
trigger gg_trg_Alliance_Item_Point_Divider= null
trigger gg_trg_Allied_Victory_Two= null
trigger gg_trg_Upgrades= null
trigger gg_trg_Player_leaves= null
trigger gg_trg_Sandbox= null
trigger gg_trg_Camera= null
trigger gg_trg_Aura= null
trigger gg_trg_Resources= null
trigger gg_trg_Map_Initialization= null
trigger gg_trg_QuestText= null
trigger gg_trg_QuestText_____________________u= null
trigger gg_trg_Map_Begin= null
trigger gg_trg_Item_Shop_Floating_Text= null
trigger gg_trg_Game_Timer= null
trigger gg_trg_Music_Beginning= null
trigger gg_trg_Music_Power_of_the_Horde= null
trigger gg_trg_Music_Warcraft_2_Intro= null
trigger gg_trg_Music_Stop= null
trigger gg_trg_Item_Tooltip= null
trigger gg_trg_Kick_Vote_Initiate= null
trigger gg_trg_Kick_Vote_Process= null
trigger gg_trg_Kick_Vote_End= null
trigger gg_trg_Hero_Revival= null
trigger gg_trg_Hero_Revival_Reset= null
trigger gg_trg_Hero_Experience= null
trigger gg_trg_Sunwell_Guardian_Top= null
trigger gg_trg_Sunwell_Guardian_Bot= null
trigger gg_trg_Sunwell_Guardian_Top_Death= null
trigger gg_trg_Sunwell_Guardian_Bot_Death= null
trigger gg_trg_Gatling_Engine_Death= null
trigger gg_trg_Battle_Engine= null
trigger gg_trg_Burning_Blade_Color= null
trigger gg_trg_Mount_Dismount_Holy_Light= null
trigger gg_trg_Citadel_Guard_Embued_Shields_Upgrade= null
trigger gg_trg_Citadel_Guard_Embued_Shields_Training= null
trigger gg_trg_Map_Edge= null
trigger gg_trg_Team_Killing_Alliance= null
trigger gg_trg_Team_Killing_Horde= null
trigger gg_trg_Thandol_Span_West_to_East= null
trigger gg_trg_Thandol_Span_East_to_West= null
trigger gg_trg_Sandbox2= null
trigger gg_trg_Sandbox_Creeps= null
trigger gg_trg_Sandbox_Refresh= null
trigger gg_trg_Player_unused= null
trigger gg_trg_Gold_Bonus_1= null
trigger gg_trg_Gold_Bonus_2= null
trigger gg_trg_Gold_Bonus_3= null
trigger gg_trg_Gold_Bonus_4= null
trigger gg_trg_Gold_Bonus_5= null
trigger gg_trg_Gold_Bonus_6= null
trigger gg_trg_Gold_Bonus_7= null
trigger gg_trg_Gold_Bonus_8= null
trigger gg_trg_Gold_Bonus_9= null
trigger gg_trg_Stop_Abuse_On= null
trigger gg_trg_Magic_Resistance= null
trigger gg_trg_Stength_of_Stromgarde= null
trigger gg_trg_Blistering_Blade_Finish= null
trigger gg_trg_Blistering_Blade_Attack= null
trigger gg_trg_Fury_Level= null
trigger gg_trg_Thunder_Shield= null
trigger gg_trg_Thunder_Shield_Start= null
trigger gg_trg_Holy_Bulwark_Starts= null
trigger gg_trg_Holy_Bulwark= null
trigger gg_trg_Holy_Bulwark_Ends= null
trigger gg_trg_Judgement= null
trigger gg_trg_Starfall_Damage= null
trigger gg_trg_Tornado= null
trigger gg_trg_Dragonhide_Armor= null
trigger gg_trg_Duel_Target_Damage= null
trigger gg_trg_Duel_Mishan_Damage= null
trigger gg_trg_Duel_Finish= null
trigger gg_trg_Mishan_Attack_Start= null
trigger gg_trg_Mishan_Stop_Abuse= null
trigger gg_trg_Net= null
trigger gg_trg_Tranquility_Level= null
trigger gg_trg_Stellar_Recall_Mimic_Move= null
trigger gg_trg_Stellar_Recall_Move= null
trigger gg_trg_Mana_Shield= null
trigger gg_trg_Inferno_Level= null
trigger gg_trg_Pyre_Damage= null
trigger gg_trg_Pyre_Reset= null
trigger gg_trg_On_the_House_Learn= null
trigger gg_trg_On_the_House= null
trigger gg_trg_On_the_House_Damage= null
trigger gg_trg_Avatar_Sound= null
trigger gg_trg_Avatar_Activate= null
trigger gg_trg_Haste= null
trigger gg_trg_Gelbin_Spawn= null
trigger gg_trg_Repair_Bots_Mana_Regen= null
trigger gg_trg_Megaton_Bomb_Afterburner= null
trigger gg_trg_Mass_thunderbolt= null
trigger gg_trg_Split_Shot_On= null
trigger gg_trg_Wind_Shot_Move= null
trigger gg_trg_Hail_of_Arrows_Deactivate= null
trigger gg_trg_Hail_of_Arrows_Graphic= null
trigger gg_trg_Hail_of_Arrows_Damage= null
trigger gg_trg_Trueshot= null
trigger gg_trg_Warmth= null
trigger gg_trg_Evade= null
trigger gg_trg_Arrow_Storm= null
trigger gg_trg_Arrow_Storm_Cancel= null
trigger gg_trg_Split_Shot_Off= null
trigger gg_trg_Split_Shot_Revive= null
trigger gg_trg_Split_Shot_Mana_Low= null
trigger gg_trg_Split_Shot_Mana_Increase= null
trigger gg_trg_Flamestrike_Damage_from_intellect= null
trigger gg_trg_Fireball_Damage_from_intellect= null
trigger gg_trg_Sanctuary= null
trigger gg_trg_Sanctuary_Heal= null
trigger gg_trg_Battle_Primed_Start= null
trigger gg_trg_Battle_Primed_End= null
trigger gg_trg_Explosive_Barrel_Move= null
trigger gg_trg_Staggering_Move= null
trigger gg_trg_Corpse_Explosion_Begin= null
trigger gg_trg_Corpse_Explosion_Reset= null
trigger gg_trg_Vengeance= null
trigger gg_trg_Holy_Strike= null
trigger gg_trg_Righteous_Fury_Attack= null
trigger gg_trg_Righteous_Fury_Finish_2= null
trigger gg_trg_Righteous_Fury_Finish_1= null
trigger gg_trg_Righteous_Fury_Finish_3= null
trigger gg_trg_Righteous_Fury_Finish_4= null
trigger gg_trg_Invulerability_Remove= null
trigger gg_trg_Navigation_Bonus= null
trigger gg_trg_Bombardment_On= null
trigger gg_trg_Smite= null
trigger gg_trg_Alliance_Hero_Selection= null
trigger gg_trg_Curdran_abils= null
trigger gg_trg_Blue_Hero_Selection= null
trigger gg_trg_Blue_Hero_Begin= null
trigger gg_trg_Blue_Hero_Cancel= null
trigger gg_trg_Mara_Learns= null
trigger gg_trg_Mara_Starts= null
trigger gg_trg_Llane_Starts= null
trigger gg_trg_Khadgar_Starts= null
trigger gg_trg_Lothar_Starts= null
trigger gg_trg_Anduin_abils= null
trigger gg_trg_Llane_abils= null
trigger gg_trg_Mara_abils= null
trigger gg_trg_Khadgar_abils= null
trigger gg_trg_Teal_Hero_Selection= null
trigger gg_trg_Teal_Hero_Begin= null
trigger gg_trg_Teal_Hero_Cancel= null
trigger gg_trg_Mishan_Starts= null
trigger gg_trg_Duke_Starts= null
trigger gg_trg_Daelin_Starts= null
trigger gg_trg_Daelin_Learns= null
trigger gg_trg_Derek_Starts= null
trigger gg_trg_Mishan_abils= null
trigger gg_trg_Duke_abils= null
trigger gg_trg_Daelin_abils= null
trigger gg_trg_Derek_abils= null
trigger gg_trg_Purple_Hero_Selection= null
trigger gg_trg_Purple_Hero_Begin= null
trigger gg_trg_Purple_Hero_Cancel= null
trigger gg_trg_Antonidas_Starts= null
trigger gg_trg_Aegwynn_Starts= null
trigger gg_trg_Rhonin_Starts= null
trigger gg_trg_Rhonin_Learns= null
trigger gg_trg_Kael_Starts= null
trigger gg_trg_Antonidas= null
trigger gg_trg_Aegwynn= null
trigger gg_trg_Rhonin= null
trigger gg_trg_Orange_Hero_Selection= null
trigger gg_trg_Orange_Hero_Begin= null
trigger gg_trg_Orange_Hero_Cancel= null
trigger gg_trg_Muradin_Starts= null
trigger gg_trg_Magni_Starts= null
trigger gg_trg_Brann_Starts= null
trigger gg_trg_Geblin_Starts= null
trigger gg_trg_Green_Hero_Selection= null
trigger gg_trg_Green_Hero_Begin= null
trigger gg_trg_Green_Hero_Cancel= null
trigger gg_trg_Lorthemar_Starts= null
trigger gg_trg_Sylvanas_Starts= null
trigger gg_trg_Anasterian_Starts= null
trigger gg_trg_Alleria_Starts= null
trigger gg_trg_Pink_Hero_Selection= null
trigger gg_trg_Pink_Hero_Begin= null
trigger gg_trg_Pink_Hero_Cancel= null
trigger gg_trg_Gavinrad_Starts= null
trigger gg_trg_Darius_Starts= null
trigger gg_trg_Arugal_Starts= null
trigger gg_trg_Greymane_Starts= null
trigger gg_trg_Gray_Hero_Selection= null
trigger gg_trg_Gray_Hero_Begin= null
trigger gg_trg_Gray_Hero_Cancel= null
trigger gg_trg_Turalyon_Starts= null
trigger gg_trg_Uther_Starts= null
trigger gg_trg_Tirion_Starts= null
trigger gg_trg_Alonsus_Starts= null
trigger gg_trg_Horde_Victory= null
trigger gg_trg_Ship_Limiter_Legion= null
trigger gg_trg_Dark_Green_Altar_Death= null
trigger gg_trg_Brown_Altar_Death= null
trigger gg_trg_Horde_Altar= null
trigger gg_trg_Horde_Altar_Select= null
trigger gg_trg_Yellow_Altar_Death= null
trigger gg_trg_Light_Blue_Altar_Death= null
trigger gg_trg_Horde_Item_Point_Divider= null
trigger gg_trg_Blackrock_Warning= null
trigger gg_trg_Dark_Portal_Vulnerable= null
trigger gg_trg_Dark_Portal_Warning= null
trigger gg_trg_Yellow_Hero_Selection= null
trigger gg_trg_Yellow_Hero_Begin= null
trigger gg_trg_Yellow_Hero_Cancel= null
trigger gg_trg_Altar_Replace_Light_Blue= null
trigger gg_trg_Altar_Replace_Dark_Green= null
trigger gg_trg_Altar_Replace_Brown= null
trigger gg_trg_Teron_Starts= null
trigger gg_trg_Teron_Learns= null
trigger gg_trg_Zuluhed_Starts= null
trigger gg_trg_Kilrogg_Starts= null
trigger gg_trg_Griselda_Starts= null
trigger gg_trg_Griselda_Learns= null
trigger gg_trg_Guldan_Starts= null
trigger gg_trg_Ratso_Starts= null
trigger gg_trg_Azgalor_Starts= null
trigger gg_trg_Azgalor_Learns= null
trigger gg_trg_Medivh_Starts= null
trigger gg_trg_Medivh_Learns= null
trigger gg_trg_Garona_Starts= null
trigger gg_trg_Zuljin_Starts= null
trigger gg_trg_Archimonde_Starts= null
trigger gg_trg_Chogall_Starts= null
trigger gg_trg_Chogall_Level= null
trigger gg_trg_Blackhand_Starts= null
trigger gg_trg_Grom_Starts= null
trigger gg_trg_Kargath_Starts= null
trigger gg_trg_Nerzhul_Starts= null
trigger gg_trg_Mannoroth_Starts= null
trigger gg_trg_Dentarg_Starts= null
trigger gg_trg_Tichondrius_Starts= null
trigger gg_trg_Rend_Starts= null
trigger gg_trg_Fenris_Starts= null
trigger gg_trg_Maim_Starts= null
trigger gg_trg_Horde_Hero_Selection= null
trigger gg_trg_Hero_orc_limit= null
trigger gg_trg_Hero_orc_cancel= null
trigger gg_trg_Garona_Attack_Start= null
trigger gg_trg_Dark_Touch= null
trigger gg_trg_Slice_and_Dice= null
trigger gg_trg_SliceAndDiceGromAttack= null
trigger gg_trg_Hellfire_Blast= null
trigger gg_trg_Dragon_Aspect_Damage= null
trigger gg_trg_Dragon_Mastery= null
trigger gg_trg_Griselda_Heal= null
trigger gg_trg_Griselda_Summons= null
trigger gg_trg_Griselda_Dies= null
trigger gg_trg_Griselda_Damage= null
trigger gg_trg_Blackhands_Orders= null
trigger gg_trg_Blackhands_Orders_Death= null
trigger gg_trg_Bladestorm_Removal= null
trigger gg_trg_Bladestorm_Damage_Reduce= null
trigger gg_trg_Bladestorm_Damage= null
trigger gg_trg_Automated_Machinery_Activate= null
trigger gg_trg_Steam_Contraption_On= null
trigger gg_trg_Steam_Contraption_Off= null
trigger gg_trg_Automated_Machinery= null
trigger gg_trg_Tinker_Dies= null
trigger gg_trg_Howl_of_Terror_Move= null
trigger gg_trg_Scorched_Earth= null
trigger gg_trg_Hellish_Shroud_Damage= null
trigger gg_trg_Hellish_Shroud_Explode= null
trigger gg_trg_Avatar_of_Sargeras= null
trigger gg_trg_Quake_of_Doom_Interrupted= null
trigger gg_trg_Disguise_End_Attack= null
trigger gg_trg_Disguise_End= null
trigger gg_trg_Disguise_Revive= null
trigger gg_trg_Fan_of_Knives_Learn= null
trigger gg_trg_Fan_of_Knives_Reset= null
trigger gg_trg_Nether_Portal_Teleport= null
trigger gg_trg_Self_Mutilate_Drop= null
trigger gg_trg_Life_Rip_Move= null
trigger gg_trg_Rain_of_Chaos= null
trigger gg_trg_Valor= null
trigger gg_trg_Valor_Bonus= null
trigger gg_trg_Gorehowl_Slow= null
trigger gg_trg_Corrupted_Blood_Ends= null
trigger gg_trg_Corrupted_Blood= null
trigger gg_trg_Slash_Move= null
trigger gg_trg_Mannoroth_Orders= null
trigger gg_trg_Death_Pact= null
trigger gg_trg_Trample_Interrupted= null
trigger gg_trg_Trample_Move= null
trigger gg_trg_Trample_AOE_Attack= null
trigger gg_trg_Black_Aura= null
trigger gg_trg_Nether_Spirits_Level= null
trigger gg_trg_Shadow_of_the_Fallen_Begin= null
trigger gg_trg_Shadow_of_the_Fallen= null
trigger gg_trg_Hellish_Projectile_Level= null
trigger gg_trg_Trophies_of_the_Fallen_Turn_on= null
trigger gg_trg_Trophies_and_Libation_and_Teron_Reset= null
trigger gg_trg_Libation_of_Blood_Turn_on= null
trigger gg_trg_The_Darkener_Damage_Reduce= null
trigger gg_trg_Teron_Aura= null
trigger gg_trg_Undying_Strength= null
trigger gg_trg_Intoxicating_Pain= null
trigger gg_trg_Intoxicating_Pain_Start= null
trigger gg_trg_Inner_Rage= null
trigger gg_trg_Spirit_Wolf_Stomp= null
trigger gg_trg_Spirit_Wolf_Death= null
trigger gg_trg_Last_Rider_Death= null
trigger gg_trg_Retaliate_Slaughter_Armor= null
trigger gg_trg_Volcano= null
trigger gg_trg_Volcano_Stop= null
trigger gg_trg_Shade= null
trigger gg_trg_Shade_Text= null
trigger gg_trg_Shade_Death= null
trigger gg_trg_Shade_Start= null
trigger gg_trg_Shade_End= null
trigger gg_trg_Dark_Touch_On= null
trigger gg_trg_Dark_Touch_Off= null
trigger gg_trg_Northshire= null
trigger gg_trg_TrollGoblinOgre= null
trigger gg_trg_Throne_Reduce= null
trigger gg_trg_Azeroth_Farm_Fire= null
trigger gg_trg_Hillsbrad= null
trigger gg_trg_Azeroth_Tower_Fire_Upper= null
trigger gg_trg_Azeroth_Tower_Fire_Lower= null
trigger gg_trg_Azeroth_Refuge= null
trigger gg_trg_Iron_Forge_Fire_Lower= null
trigger gg_trg_Iron_Forge_Fire_Upper= null
trigger gg_trg_Iron_Forge_Barrel_Fire= null
trigger gg_trg_Dwarf_Refuge= null
trigger gg_trg_Aerie_Peak= null
trigger gg_trg_Kul_Tiras_Refuge= null
trigger gg_trg_Kul_Tiras_Farm_Fire= null
trigger gg_trg_Kul_Tiras_Fountain_Destroyed= null
trigger gg_trg_Kul_Tiras_Tower_East= null
trigger gg_trg_Kul_Tiras_Tower_West= null
trigger gg_trg_Stromgarde_Refuge= null
trigger gg_trg_Stromgarde_Farm_Fire= null
trigger gg_trg_Stromgarde_Tower_West= null
trigger gg_trg_Stromgarde_Tower_East= null
trigger gg_trg_Alterac_Event= null
trigger gg_trg_Alterac_Avenged= null
trigger gg_trg_Gilneas_Refuge= null
trigger gg_trg_Gilneas_Upper_Tower_Fire= null
trigger gg_trg_Gilneas_Lower_Tower_Fre= null
trigger gg_trg_Gilneas_Farm_Fire= null
trigger gg_trg_Sunwell_Vulnerable= null
trigger gg_trg_Elf_Refuge= null
trigger gg_trg_Elf_Farm_Fire= null
trigger gg_trg_Dalaran_Refuge= null
trigger gg_trg_Lordaeron_Refuge= null
trigger gg_trg_Lordaeron_Upper_Tower_Fire= null
trigger gg_trg_Lordaeron_Lower_Tower_Fire= null
trigger gg_trg_Lordaeron_Fountain_Destroyed= null
trigger gg_trg_Lord_Farm_Fire= null
trigger gg_trg_Refuge_Buildings_1= null
trigger gg_trg_Refuge_Buildings_2= null
trigger gg_trg_Dalaran_Shield= null
trigger gg_trg_Dalaran_Shield_II= null
trigger gg_trg_Dalaran_Shield_Dies= null
trigger gg_trg_Dalaran_Shield_II_Dies= null
trigger gg_trg_Azeroth_Main_Gate= null
trigger gg_trg_Azeroth_Main_Gate_Life_Upper= null
trigger gg_trg_Azeroth_Main_Gate_Lever_Death= null
trigger gg_trg_Azeroth_Main_Gate_Life_Lower= null
trigger gg_trg_Azeroth_North_Gate= null
trigger gg_trg_Azeroth_North_Gate_Life= null
trigger gg_trg_Azeroth_Open_South_Gate= null
trigger gg_trg_Azeroth_South_Gate_Life= null
trigger gg_trg_Azeroth_Open_Throne_Room= null
trigger gg_trg_Azeroth_Throne_Gate_Life= null
trigger gg_trg_Northshire_Gate_Life= null
trigger gg_trg_Northshire_Open_Gate= null
trigger gg_trg_Stromgarde_Open_Main_Gate= null
trigger gg_trg_Stromgarde_Main_Gate_Life_First= null
trigger gg_trg_Stromgarde_Main_Gate_Life_Second= null
trigger gg_trg_Stromgarde_Open_West_Gate= null
trigger gg_trg_Stromgarde_West_Gate_Life= null
trigger gg_trg_Stromgarde_Open_East_Gate= null
trigger gg_trg_Stromgarde_East_Gate_Life= null
trigger gg_trg_Stromgarde_Open_Throne_Room= null
trigger gg_trg_Stromgarde_Throne_Gate_Life= null
trigger gg_trg_Quelthalas_Open_Gate= null
trigger gg_trg_Quelthalas_Gate_Life= null
trigger gg_trg_Kul_Tiras_Open_Gate= null
trigger gg_trg_Kul_Tiras_Gate_Life= null
trigger gg_trg_Dalaran_Open_Gate= null
trigger gg_trg_Dalaran_Gate_Life= null
trigger gg_trg_Dalaran_Force_Wall= null
trigger gg_trg_Gilneas_Final_Gate_Open= null
trigger gg_trg_Gilneas_Final_Gate_Life= null
trigger gg_trg_Gilneas_South_Gate_Open= null
trigger gg_trg_Gilneas_South_Gate_Life= null
trigger gg_trg_Gilneas_East_Gate_Open= null
trigger gg_trg_Gilneas_East_Gate_Life= null
trigger gg_trg_Lordaeron_Open_First_Gate= null
trigger gg_trg_Lordaeron_First_Gate_Life= null
trigger gg_trg_Lordaeron_Open_South_Gate= null
trigger gg_trg_Lordaeron_South_Gate_Life= null
trigger gg_trg_Lordaeron_South_Gate_Lever_Death= null
trigger gg_trg_Lordaeron_North_Gate_Lever_Death= null
trigger gg_trg_Lordaeron_Open_North_Gate= null
trigger gg_trg_Lordaeron_North_Gate_Life= null
trigger gg_trg_Item_Activate= null
trigger gg_trg_Item_Aquired2= null
trigger gg_trg_Item_Aquired= null
trigger gg_trg_Test= null
trigger gg_trg_Hero_Armor_On= null
trigger gg_trg_Item_Orb_On= null
trigger gg_trg_Glacial_Shield_On= null
trigger gg_trg_Glacial_Shield= null
trigger gg_trg_Deaths_Edge_On= null
trigger gg_trg_Deaths_Edge= null
trigger gg_trg_Shields_Move= null
trigger gg_trg_Attack_Damage= null
trigger gg_trg_Unit_on_damage= null
trigger gg_trg_Piercing_Blade= null
trigger gg_trg_HelpStart= null
trigger gg_trg_Debug= null
trigger gg_trg_LibHC= null
endglobals
//! import jass "./TBR/2-Create units.j"
//! import jass "./TBR/1-APITypecast.j"
//! import jass "./TBR/01-Garona_Attack_Start.j"
//! import jass "./TBR/01-Horde_Victory.j"
//! import jass "./TBR/01-Item_Activate.j"
//! import jass "./TBR/01-Northshire.j"
//! import jass "./TBR/01-Yellow_Hero_Selection.j"
//! import jass "./TBR/01-Zepplin_Teleport.j"
//! import jass "./TBR/02-Azeroth_Main_Gate.j"
//! import jass "./TBR/02-Azeroth_Zepplin.j"
//! import jass "./TBR/02-Dark_Touch.j"
//! import jass "./TBR/02-Item_Aquired2.j"
//! import jass "./TBR/2-Piercing_Blade.j"
//! import jass "./TBR/02-Ship_Limiter_Legion.j"
//! import jass "./TBR/02-TrollGoblinOgre.j"
//! import jass "./TBR/02-Yellow_Hero_Begin.j"
//! import jass "./TBR/03-Azeroth_Main_Gate_Life_Upper.j"
//! import jass "./TBR/03-Dark_Green_Altar_Death.j"
//! import jass "./TBR/3-Init sounds.j"
//! import jass "./TBR/03-Lordaeron_Zepplin.j"
//! import jass "./TBR/03-Slice_and_Dice.j"
//! import jass "./TBR/03-Throne_Reduce.j"
//! import jass "./TBR/03-Yellow_Hero_Cancel.j"
//! import jass "./TBR/04-Altar_Replace_Light_Blue.j"
//! import jass "./TBR/04-Azeroth_Farm_Fire.j"
//! import jass "./TBR/04-Azeroth_Main_Gate_Lever_Death.j"
//! import jass "./TBR/04-Brown_Altar_Death.j"
//! import jass "./TBR/04-SliceAndDiceGromAttack.j"
//! import jass "./TBR/04-Stromgarde_Zepplin.j"
//! import jass "./TBR/05-Altar_Replace_Dark_Green.j"
//! import jass "./TBR/05-Azeroth_Main_Gate_Life_Lower.j"
//! import jass "./TBR/05-Hellfire_Blast.j"
//! import jass "./TBR/05-Hero_Armor_On.j"
//! import jass "./TBR/05-Hillsbrad.j"
//! import jass "./TBR/05-Horde_Altar.j"
//! import jass "./TBR/05-Kul_Tiras_Zepplin.j"
//! import jass "./TBR/06-Altar_Replace_Brown.j"
//! import jass "./TBR/06-Azeroth_North_Gate.j"
//! import jass "./TBR/06-Azeroth_Tower_Fire_Upper.j"
//! import jass "./TBR/06-Dragon_Aspect_Damage.j"
//! import jass "./TBR/06-Horde_Altar_Select.j"
//! import jass "./TBR/06-Item_Orb_On.j"
//! import jass "./TBR/06-Kul_Tiras_Zepplin_Early.j"
//! import jass "./TBR/006-Magic_Resistance.j"
//! import jass "./TBR/06-Resources.j"
//! import jass "./TBR/07-Azeroth_North_Gate_Life.j"
//! import jass "./TBR/07-Azeroth_Tower_Fire_Lower.j"
//! import jass "./TBR/07-Dragon_Mastery.j"
//! import jass "./TBR/07-Glacial_Shield_On.j"
//! import jass "./TBR/07-Map_Initialization.j"
//! import jass "./TBR/07-Quelthalas_Zepplin.j"
//! import jass "./TBR/07-Teron_Starts.j"
//! import jass "./TBR/07-Yellow_Altar_Death.j"
//! import jass "./TBR/08-Azeroth_Open_South_Gate.j"
//! import jass "./TBR/08-Azeroth_Refuge.j"
//! import jass "./TBR/08-Griselda_Heal.j"
//! import jass "./TBR/08-Khaz_Modan_Zepplin.j"
//! import jass "./TBR/08-Light_Blue_Altar_Death.j"
//! import jass "./TBR/008-Stength_of_Stromgarde.j"
//! import jass "./TBR/08-Teron_Learns.j"
//! import jass "./TBR/09-Azeroth_South_Gate_Life.j"
//! import jass "./TBR/09-Deaths_Edge_On.j"
//! import jass "./TBR/09-Gilneas_Zepplin.j"
//! import jass "./TBR/09-Griselda_Summons.j"
//! import jass "./TBR/09-Horde_Item_Point_Divider.j"
//! import jass "./TBR/09-Iron_Forge_Fire_Lower.j"
//! import jass "./TBR/09-Zuluhed_Starts.j"
//! import jass "./TBR/10-Azeroth_Open_Throne_Room.j"
//! import jass "./TBR/10-Blackrock_Warning.j"
//! import jass "./TBR/10-Dalaran_Zepplin.j"
//! import jass "./TBR/10-Griselda_Dies.j"
//! import jass "./TBR/10-Iron_Forge_Fire_Upper.j"
//! import jass "./TBR/10-Kilrogg_Starts.j"
//! import jass "./TBR/10-Map_Begin.j"
//! import jass "./TBR/11-Aerie_Peak_Zepplin.j"
//! import jass "./TBR/11-Azeroth_Throne_Gate_Life.j"
//! import jass "./TBR/11-Dark_Portal_Vulnerable.j"
//! import jass "./TBR/11-Griselda_Damage.j"
//! import jass "./TBR/11-Griselda_Starts.j"
//! import jass "./TBR/11-Iron_Forge_Barrel_Fire.j"
//! import jass "./TBR/11-Item_Shop_Floating_Text.j"
//! import jass "./TBR/11-Shields_Move.j"
//! import jass "./TBR/12-Attack_Damage.j"
//! import jass "./TBR/12-Blackhands_Orders.j"
//! import jass "./TBR/12-Dark_Portal_Warning.j"
//! import jass "./TBR/12-Dwarf_Refuge.j"
//! import jass "./TBR/12-Game_Timer.j"
//! import jass "./TBR/12-Griselda_Learns.j"
//! import jass "./TBR/12-Northshire_Gate_Life.j"
//! import jass "./TBR/12-Refuge_Zepplin.j"
//! import jass "./TBR/13-Aerie_Peak.j"
//! import jass "./TBR/13-Blackhands_Orders_Death.j"
//! import jass "./TBR/013-Blistering_Blade_Finish.j"
//! import jass "./TBR/13-Guldan_Starts.j"
//! import jass "./TBR/13-Music_Beginning.j"
//! import jass "./TBR/13-Northshire_Open_Gate.j"
//! import jass "./TBR/13-Refuge_Zone_1.j"
//! import jass "./TBR/14-Bladestorm_Removal.j"
//! import jass "./TBR/014-Blistering_Blade_Attack.j"
//! import jass "./TBR/14-Kul_Tiras_Refuge.j"
//! import jass "./TBR/14-Music_Power_of_the_Horde.j"
//! import jass "./TBR/14-Ratso_Starts.j"
//! import jass "./TBR/14-Refuge_Zone_2.j"
//! import jass "./TBR/15-Azgalor_Starts.j"
//! import jass "./TBR/15-Bladestorm_Damage_Reduce.j"
//! import jass "./TBR/15-Blue_Hero_Selection.j"
//! import jass "./TBR/015-Fury_Level.j"
//! import jass "./TBR/15-Kul_Tiras_Farm_Fire.j"
//! import jass "./TBR/15-Music_Warcraft_2_Intro.j"
//! import jass "./TBR/15-Refuge_Zone_3.j"
//! import jass "./TBR/15-Stromgarde_Open_Main_Gate.j"
//! import jass "./TBR/16-Azgalor_Learns.j"
//! import jass "./TBR/16-Bladestorm_Damage.j"
//! import jass "./TBR/16-Blue_Hero_Begin.j"
//! import jass "./TBR/16-Kul_Tiras_Fountain_Destroyed.j"
//! import jass "./TBR/16-Music_Stop.j"
//! import jass "./TBR/16-Refuge_Zone_Warning.j"
//! import jass "./TBR/16-Stromgarde_Main_Gate_Life_First.j"
//! import jass "./TBR/17-Automated_Machinery_Activate.j"
//! import jass "./TBR/17-Blue_Hero_Cancel.j"
//! import jass "./TBR/17-Item_Tooltip.j"
//! import jass "./TBR/17-Kul_Tiras_Tower_East.j"
//! import jass "./TBR/17-Medivh_Starts.j"
//! import jass "./TBR/17-Shipyard_Limiter_Alliance.j"
//! import jass "./TBR/17-Stromgarde_Main_Gate_Life_Second.j"
//! import jass "./TBR/017-Thunder_Shield.j"
//! import jass "./TBR/18-Kick_Vote_Initiate.j"
//! import jass "./TBR/18-Kul_Tiras_Tower_West.j"
//! import jass "./TBR/18-Mara_Learns.j"
//! import jass "./TBR/18-Medivh_Learns.j"
//! import jass "./TBR/18-Shipyard_Limiter_Horde.j"
//! import jass "./TBR/18-Steam_Contraption_On.j"
//! import jass "./TBR/18-Stromgarde_Open_West_Gate.j"
//! import jass "./TBR/018-Thunder_Shield_Start.j"
//! import jass "./TBR/19-Alliance_Item_Point_Divider.j"
//! import jass "./TBR/19-Garona_Starts.j"
//! import jass "./TBR/19-Kick_Vote_Process.j"
//! import jass "./TBR/19-Mara_Starts.j"
//! import jass "./TBR/19-Steam_Contraption_Off.j"
//! import jass "./TBR/19-Stromgarde_Refuge.j"
//! import jass "./TBR/19-Stromgarde_West_Gate_Life.j"
//! import jass "./TBR/20-Allied_Victory_Two.j"
//! import jass "./TBR/20-Automated_Machinery.j"
//! import jass "./TBR/20-Kick_Vote_End.j"
//! import jass "./TBR/20-Llane_Starts.j"
//! import jass "./TBR/20-Stromgarde_Farm_Fire.j"
//! import jass "./TBR/20-Stromgarde_Open_East_Gate.j"
//! import jass "./TBR/20-Zuljin_Starts.j"
//! import jass "./TBR/21-Archimonde_Starts.j"
//! import jass "./TBR/21-Hero_Revival.j"
//! import jass "./TBR/21-Khadgar_Starts.j"
//! import jass "./TBR/21-Stromgarde_East_Gate_Life.j"
//! import jass "./TBR/21-Stromgarde_Tower_West.j"
//! import jass "./TBR/21-Tinker_Dies.j"
//! import jass "./TBR/22-Chogall_Starts.j"
//! import jass "./TBR/22-Hero_Revival_Reset.j"
//! import jass "./TBR/22-Howl_of_Terror_Move.j"
//! import jass "./TBR/22-Lothar_Starts.j"
//! import jass "./TBR/22-Stromgarde_Open_Throne_Room.j"
//! import jass "./TBR/22-Stromgarde_Tower_East.j"
//! import jass "./TBR/23-Alterac_Event.j"
//! import jass "./TBR/23-Chogall_Level.j"
//! import jass "./TBR/23-Hero_Experience.j"
//! import jass "./TBR/23-Scorched_Earth.j"
//! import jass "./TBR/23-Stromgarde_Throne_Gate_Life.j"
//! import jass "./TBR/24-Alterac_Avenged.j"
//! import jass "./TBR/24-Blackhand_Starts.j"
//! import jass "./TBR/24-Hellish_Shroud_Damage.j"
//! import jass "./TBR/24-Sunwell_Guardian_Top.j"
//! import jass "./TBR/25-Gilneas_Refuge.j"
//! import jass "./TBR/25-Grom_Starts.j"
//! import jass "./TBR/25-Hellish_Shroud_Explode.j"
//! import jass "./TBR/025-Holy_Bulwark_Starts.j"
//! import jass "./TBR/25-Quelthalas_Open_Gate.j"
//! import jass "./TBR/25-Sunwell_Guardian_Bot.j"
//! import jass "./TBR/26-Avatar_of_Sargeras.j"
//! import jass "./TBR/26-Gilneas_Upper_Tower_Fire.j"
//! import jass "./TBR/026-Holy_Bulwark.j"
//! import jass "./TBR/26-Kargath_Starts.j"
//! import jass "./TBR/26-Quelthalas_Gate_Life.j"
//! import jass "./TBR/26-Sunwell_Guardian_Top_Death.j"
//! import jass "./TBR/27-Gilneas_Lower_Tower_Fre.j"
//! import jass "./TBR/027-Holy_Bulwark_Ends.j"
//! import jass "./TBR/27-Nerzhul_Starts.j"
//! import jass "./TBR/27-Quake_of_Doom_Interrupted.j"
//! import jass "./TBR/27-Sunwell_Guardian_Bot_Death.j"
//! import jass "./TBR/28-Disguise_End_Attack.j"
//! import jass "./TBR/28-Gatling_Engine_Death.j"
//! import jass "./TBR/28-Gilneas_Farm_Fire.j"
//! import jass "./TBR/028-Judgement.j"
//! import jass "./TBR/28-Kul_Tiras_Open_Gate.j"
//! import jass "./TBR/28-Mannoroth_Starts.j"
//! import jass "./TBR/28-Teal_Hero_Selection.j"
//! import jass "./TBR/29-Battle_Engine.j"
//! import jass "./TBR/29-Dentarg_Starts.j"
//! import jass "./TBR/29-Disguise_End.j"
//! import jass "./TBR/29-Kul_Tiras_Gate_Life.j"
//! import jass "./TBR/29-Sunwell_Vulnerable.j"
//! import jass "./TBR/29-Teal_Hero_Begin.j"
//! import jass "./TBR/30-Burning_Blade_Color.j"
//! import jass "./TBR/30-Disguise_Revive.j"
//! import jass "./TBR/30-Elf_Refuge.j"
//! import jass "./TBR/030-Starfall_Damage.j"
//! import jass "./TBR/30-Teal_Hero_Cancel.j"
//! import jass "./TBR/30-Tichondrius_Starts.j"
//! import jass "./TBR/31-Dalaran_Open_Gate.j"
//! import jass "./TBR/31-Elf_Farm_Fire.j"
//! import jass "./TBR/31-Fan_of_Knives_Learn.j"
//! import jass "./TBR/31-Mishan_Starts.j"
//! import jass "./TBR/31-Mount_Dismount_Holy_Light.j"
//! import jass "./TBR/31-Rend_Starts.j"
//! import jass "./TBR/031-Tornado.j"
//! import jass "./TBR/32-Citadel_Guard_Embued_Shields_Upgrade.j"
//! import jass "./TBR/32-Dalaran_Gate_Life.j"
//! import jass "./TBR/32-Dalaran_Refuge.j"
//! import jass "./TBR/32-Duke_Starts.j"
//! import jass "./TBR/32-Fan_of_Knives_Reset.j"
//! import jass "./TBR/32-Fenris_Starts.j"
//! import jass "./TBR/33-Citadel_Guard_Embued_Shields_Training.j"
//! import jass "./TBR/33-Daelin_Starts.j"
//! import jass "./TBR/33-Dalaran_Force_Wall.j"
//! import jass "./TBR/033-Dragonhide_Armor.j"
//! import jass "./TBR/33-Lordaeron_Refuge.j"
//! import jass "./TBR/33-Maim_Starts.j"
//! import jass "./TBR/33-Nether_Portal_Teleport.j"
//! import jass "./TBR/34-Daelin_Learns.j"
//! import jass "./TBR/34-Lordaeron_Upper_Tower_Fire.j"
//! import jass "./TBR/34-Map_Edge.j"
//! import jass "./TBR/34-Self_Mutilate_Drop.j"
//! import jass "./TBR/35-Derek_Starts.j"
//! import jass "./TBR/35-Gilneas_Final_Gate_Open.j"
//! import jass "./TBR/35-Life_Rip_Move.j"
//! import jass "./TBR/35-Lordaeron_Lower_Tower_Fire.j"
//! import jass "./TBR/35-Team_Killing_Alliance.j"
//! import jass "./TBR/36-Gilneas_Final_Gate_Life.j"
//! import jass "./TBR/36-Lordaeron_Fountain_Destroyed.j"
//! import jass "./TBR/36-Rain_of_Chaos.j"
//! import jass "./TBR/36-Team_Killing_Horde.j"
//! import jass "./TBR/37-Gilneas_South_Gate_Open.j"
//! import jass "./TBR/37-Lord_Farm_Fire.j"
//! import jass "./TBR/37-Thandol_Span_West_to_East.j"
//! import jass "./TBR/37-Valor.j"
//! import jass "./TBR/38-Gilneas_South_Gate_Life.j"
//! import jass "./TBR/38-Refuge_Buildings_1.j"
//! import jass "./TBR/38-Thandol_Span_East_to_West.j"
//! import jass "./TBR/38-Valor_Bonus.j"
//! import jass "./TBR/039-Duel_Target_Damage.j"
//! import jass "./TBR/39-Gilneas_East_Gate_Open.j"
//! import jass "./TBR/39-Gorehowl_Slow.j"
//! import jass "./TBR/39-Refuge_Buildings_2.j"
//! import jass "./TBR/39-Sandbox2.j"
//! import jass "./TBR/40-Corrupted_Blood_Ends.j"
//! import jass "./TBR/40-Dalaran_Shield.j"
//! import jass "./TBR/040-Duel_Mishan_Damage.j"
//! import jass "./TBR/40-Gilneas_East_Gate_Life.j"
//! import jass "./TBR/40-Sandbox_Creeps.j"
//! import jass "./TBR/41-Corrupted_Blood.j"
//! import jass "./TBR/41-Dalaran_Shield_II.j"
//! import jass "./TBR/041-Duel_Finish.j"
//! import jass "./TBR/41-Purple_Hero_Selection.j"
//! import jass "./TBR/41-Sandbox_Refresh.j"
//! import jass "./TBR/42-Dalaran_Shield_Dies.j"
//! import jass "./TBR/42-Lordaeron_Open_First_Gate.j"
//! import jass "./TBR/042-Mishan_Attack_Start.j"
//! import jass "./TBR/42-Player_unused.j"
//! import jass "./TBR/42-Purple_Hero_Begin.j"
//! import jass "./TBR/42-Slash_Move.j"
//! import jass "./TBR/43-Dalaran_Shield_II_Dies.j"
//! import jass "./TBR/43-Gold_Bonus_1.j"
//! import jass "./TBR/43-Lordaeron_First_Gate_Life.j"
//! import jass "./TBR/43-Mannoroth_Orders.j"
//! import jass "./TBR/043-Mishan_Stop_Abuse.j"
//! import jass "./TBR/43-Purple_Hero_Cancel.j"
//! import jass "./TBR/44-Antonidas_Starts.j"
//! import jass "./TBR/44-Death_Pact.j"
//! import jass "./TBR/44-Gold_Bonus_2.j"
//! import jass "./TBR/44-Lordaeron_Open_South_Gate.j"
//! import jass "./TBR/45-Aegwynn_Starts.j"
//! import jass "./TBR/45-Gold_Bonus_3.j"
//! import jass "./TBR/45-Lordaeron_South_Gate_Life.j"
//! import jass "./TBR/045-Net.j"
//! import jass "./TBR/45-Trample_Interrupted.j"
//! import jass "./TBR/46-Gold_Bonus_4.j"
//! import jass "./TBR/46-Lordaeron_South_Gate_Lever_Death.j"
//! import jass "./TBR/46-Rhonin_Starts.j"
//! import jass "./TBR/46-Trample_Move.j"
//! import jass "./TBR/47-Gold_Bonus_5.j"
//! import jass "./TBR/47-Lordaeron_North_Gate_Lever_Death.j"
//! import jass "./TBR/47-Rhonin_Learns.j"
//! import jass "./TBR/47-Trample_AOE_Attack.j"
//! import jass "./TBR/48-Black_Aura.j"
//! import jass "./TBR/48-Gold_Bonus_6.j"
//! import jass "./TBR/48-Kael_Starts.j"
//! import jass "./TBR/48-Lordaeron_Open_North_Gate.j"
//! import jass "./TBR/49-Gold_Bonus_7.j"
//! import jass "./TBR/49-Lordaeron_North_Gate_Life.j"
//! import jass "./TBR/49-Nether_Spirits_Level.j"
//! import jass "./TBR/50-Gold_Bonus_8.j"
//! import jass "./TBR/50-Shadow_of_the_Fallen_Begin.j"
//! import jass "./TBR/51-Gold_Bonus_9.j"
//! import jass "./TBR/51-Shadow_of_the_Fallen.j"
//! import jass "./TBR/051-Tranquility_Level.j"
//! import jass "./TBR/52-Hellish_Projectile_Level.j"
//! import jass "./TBR/52-Stop_Abuse_On.j"
//! import jass "./TBR/53-Orange_Hero_Selection.j"
//! import jass "./TBR/053-Stellar_Recall_Mimic_Move.j"
//! import jass "./TBR/53-Trophies_of_the_Fallen_Turn_on.j"
//! import jass "./TBR/54-Orange_Hero_Begin.j"
//! import jass "./TBR/054-Stellar_Recall_Move.j"
//! import jass "./TBR/54-Trophies_and_Libation_and_Teron_Reset.j"
//! import jass "./TBR/55-Libation_of_Blood_Turn_on.j"
//! import jass "./TBR/55-Orange_Hero_Cancel.j"
//! import jass "./TBR/056-Mana_Shield.j"
//! import jass "./TBR/56-Muradin_Starts.j"
//! import jass "./TBR/56-The_Darkener_Damage_Reduce.j"
//! import jass "./TBR/58-Brann_Starts.j"
//! import jass "./TBR/058-Inferno_Level.j"
//! import jass "./TBR/58-Undying_Strength.j"
//! import jass "./TBR/59-Geblin_Starts.j"
//! import jass "./TBR/59-Intoxicating_Pain.j"
//! import jass "./TBR/059-Pyre_Damage.j"
//! import jass "./TBR/60-Intoxicating_Pain_Start.j"
//! import jass "./TBR/060-Pyre_Reset.j"
//! import jass "./TBR/61-Green_Hero_Selection.j"
//! import jass "./TBR/61-Inner_Rage.j"
//! import jass "./TBR/62-Green_Hero_Begin.j"
//! import jass "./TBR/62-Spirit_Wolf_Stomp.j"
//! import jass "./TBR/63-Green_Hero_Cancel.j"
//! import jass "./TBR/63-Spirit_Wolf_Death.j"
//! import jass "./TBR/64-Last_Rider_Death.j"
//! import jass "./TBR/64-Lorthemar_Starts.j"
//! import jass "./TBR/65-Retaliate_Slaughter_Armor.j"
//! import jass "./TBR/65-Sylvanas_Starts.j"
//! import jass "./TBR/66-Anasterian_Starts.j"
//! import jass "./TBR/066-On_the_House_Learn.j"
//! import jass "./TBR/66-Volcano.j"
//! import jass "./TBR/67-Alleria_Starts.j"
//! import jass "./TBR/067-On_the_House.j"
//! import jass "./TBR/67-Volcano_Stop.j"
//! import jass "./TBR/068-On_the_House_Damage.j"
//! import jass "./TBR/68-Shade.j"
//! import jass "./TBR/069-Avatar_Sound.j"
//! import jass "./TBR/69-Pink_Hero_Selection.j"
//! import jass "./TBR/69-Shade_Text.j"
//! import jass "./TBR/070-Avatar_Activate.j"
//! import jass "./TBR/70-Pink_Hero_Begin.j"
//! import jass "./TBR/70-Shade_Death.j"
//! import jass "./TBR/71-Pink_Hero_Cancel.j"
//! import jass "./TBR/71-Shade_Start.j"
//! import jass "./TBR/72-Gavinrad_Starts.j"
//! import jass "./TBR/072-Haste.j"
//! import jass "./TBR/72-Shade_End.j"
//! import jass "./TBR/73-Darius_Starts.j"
//! import jass "./TBR/73-Dark_Touch_On.j"
//! import jass "./TBR/74-Arugal_Starts.j"
//! import jass "./TBR/74-Dark_Touch_Off.j"
//! import jass "./TBR/074-Gelbin_Spawn.j"
//! import jass "./TBR/75-Greymane_Starts.j"
//! import jass "./TBR/075-Repair_Bots_Mana_Regen.j"
//! import jass "./TBR/076-Megaton_Bomb_Afterburner.j"
//! import jass "./TBR/77-Gray_Hero_Selection.j"
//! import jass "./TBR/78-Gray_Hero_Begin.j"
//! import jass "./TBR/79-Gray_Hero_Cancel.j"
//! import jass "./TBR/080-Split_Shot_On.j"
//! import jass "./TBR/80-Turalyon_Starts.j"
//! import jass "./TBR/81-Uther_Starts.j"
//! import jass "./TBR/081-Wind_Shot_Move.j"
//! import jass "./TBR/082-Hail_of_Arrows_Deactivate.j"
//! import jass "./TBR/82-Tirion_Starts.j"
//! import jass "./TBR/83-Alonsus_Starts.j"
//! import jass "./TBR/083-Hail_of_Arrows_Graphic.j"
//! import jass "./TBR/084-Hail_of_Arrows_Damage.j"
//! import jass "./TBR/085-Trueshot.j"
//! import jass "./TBR/086-Warmth.j"
//! import jass "./TBR/087-Evade.j"
//! import jass "./TBR/088-Arrow_Storm.j"
//! import jass "./TBR/089-Arrow_Storm_Cancel.j"
//! import jass "./TBR/090-Split_Shot_Off.j"
//! import jass "./TBR/091-Split_Shot_Revive.j"
//! import jass "./TBR/092-Split_Shot_Mana_Low.j"
//! import jass "./TBR/093-Split_Shot_Mana_Increase.j"
//! import jass "./TBR/094-Flamestrike Damage from intellect.j"
//! import jass "./TBR/095-Fireball Damage from intellect.j"
//! import jass "./TBR/100-Sanctuary.j"
//! import jass "./TBR/101-Sanctuary_Heal.j"
//! import jass "./TBR/102-Battle_Primed_Start.j"
//! import jass "./TBR/103-Battle_Primed_End.j"
//! import jass "./TBR/104-Explosive_Barrel_Move.j"
//! import jass "./TBR/105-Staggering_Move.j"
//! import jass "./TBR/106-Corpse_Explosion_Begin.j"
//! import jass "./TBR/107-Corpse_Explosion_Reset.j"
//! import jass "./TBR/113-Holy_Strike.j"
//! import jass "./TBR/114-Righteous_Fury_Attack.j"
//! import jass "./TBR/115-Righteous_Fury_Finish_2.j"
//! import jass "./TBR/116-Righteous_Fury_Finish_1.j"
//! import jass "./TBR/117-Righteous_Fury_Finish_3.j"
//! import jass "./TBR/118-Righteous_Fury_Finish_4.j"
//! import jass "./TBR/119-Invulerability_Remove.j"
//! import jass "./TBR/120-Navigation_Bonus.j"
//! import jass "./TBR/121-Bombardment_On.j"
//! import jass "./TBR/122-Smite.j"
// TODO: Add here QuestText trigger, right now it isn't converted to JASS code

//! Only imports should be here
//! import "./alliance-hero-select.zn"
//! import "./aura.zn"
//! import "./camera.zn"
//! import "./CothUtilities.zn"
//! import "./Abilities/Items/death-edge.zn"
//! import "./Abilities/Items/glacial.zn"
//! import "./help.zn"
//! import "./horde-hero-selection.zn"
//! import "./itemaquired.zn"
//! import "./mass-thunderbolt.zn"
//! import "./max-upgrades.zn"
//! import "./player-leaves.zn"
//! import "./Sandbox.zn"
//! import "./teron-aura.zn"
//! import "./unit-damaged-events.zn"
//! import "./vengeance.zn"
//! import "./Abilities/Heroes/Stromgarde/curdran.zn"
//! import "./Abilities/Heroes/Stromgarde/galen.zn"
//! import "./Abilities/Heroes/Stromgarde/thoras.zn"
//! import "./global-events.zn"
//! import "./Abilities/Heroes/rejuventation.zn"
//! import "./Abilities/Heroes/Stromgarde/Danath.zn"
//! import "./Abilities/Heroes/Azeroth/Llane.zn"