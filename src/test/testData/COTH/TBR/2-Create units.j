globals
group udg_AnchorGroup = CreateGroup()
real array udg_AzerothMainbreak
real array udg_AzerothNorthBreak
real array udg_AzerothSouthBreak
real array udg_AzerothThroneBreak
real array udg_NorthshireBreak
real array udg_StromgardeMainBreakFirst
real array udg_StromgardeWestBreak
real array udg_StromgardeEastBreak
real array udg_StromgardeThroneBreak
real array udg_QuelthalasBreak
real array udg_DalaranBreak
real array udg_LordaeronFirstBreak
real array udg_LordaeronSecondBreak
real array udg_LordaeronFinalBreak
real array udg_KulTirasBreak
real array udg_GilneasFinalBreak
real array udg_GilneasSouthBreak
real array udg_GilneasEastBreak
force debugForce = CreateForce()
integer udg_HordeGoldDivider=0
integer udg_LegionGoldDivider=0
integer udg_AllianceGoldDivider1=0
integer udg_AllianceGoldDivider2=0
force udg_Alliance=CreateForce()
force udg_Horde=CreateForce()
unit udg_Greymane=null
location udg_GatlingEngine=null
location udg_Manabomb=null
location udg_Mount=null
location udg_Dismount=null
location udg_TempPoint=null
group udg_Temp_UnitGroup=CreateGroup()
location udg_NetherPortalPoint=null
real udg_HordeHero=0
real udg_PurificationLevel=0
integer udg_Berserk=0
real udg_SelfMutilate=0
real array udg_AzerothMainbreakLower
location udg_ScytheTarget=null
real udg_ScytheMove=0
unit udg_LifeRipTarget=null
real udg_LifeRipMove=0
integer udg_ThandolSpan=0
integer udg_Skyree=0
real udg_Devourlife=0
group udg_TrampleSlideGroup=null
location udg_TempPoint2=null
location udg_TempPoint3=null
group udg_SliceandDiceGroup=null
real udg_Sunwell=0
integer udg_TempInteger=0
real udg_BlisteringBlade=0
unit udg_DespPrevTarget=null
integer udg_DespCounter=0
real udg_Galen=0
location udg_HammerPoint=null
unit udg_HammerTarget=null
location udg_BroadsideTarget=null
location udg_BroadsideCasterPoint=null
unit udg_BroadsideCaster=null
unit udg_MarkedTarget=null
unit udg_HolyStrikeCaster=null
real udg_HolyStrikeCount=0
group udg_HolyStrikeGroup=null
location udg_Fire_Wall_Location=null
real udg_Fire_Wall_Duration=0
real udg_Fire_Wall_Distance=0
location udg_Fire_Wall_Loop_Location=null
location udg_Fire_Wall_Loop_Location_2=null
location udg_TargetLoc=null
real udg_InfernoLevel=0
real udg_NovaMana=0
unit udg_PyreTarget=null
location udg_HolyStrikePoint=null
location udg_Exorcism=null
location udg_ShadowPoint=null
group udg_ShadowGroup=null
real udg_SkullCount=0
real udg_ShadowCount=0
location udg_FlarePoint=null
group udg_BattleShoutGroup=null
timer udg_DisguiseTimer=null
unit udg_CorruptionTarget=null
location udg_AnchorCaster=null
location udg_AnchorPoint=null
player udg_GaronaOwner=null
unit udg_QuakeWard=null
unit udg_Foundry=null
integer udg_Fury=0
unit udg_InnerRageTarget=null
real udg_InnerRage=0
string udg_BlueName
string udg_RedName
string udg_TealName
string udg_PurpleName
string udg_YellowName
string udg_OrangeName
string udg_GreenName
string udg_PinkName
string udg_GrayName
string udg_LightBlueName
string udg_DarkGreenName
string udg_BrownName
group udg_DarkTouchGroup=null
location udg_DarkTouch=null
real udg_InfernoDamage=0
real array udg_StromgardeMainBreakSecond
real udg_Retaliate=0
location udg_TempLoc=null
unit udg_Temp_Unit=null
location udg_VolcanoPoint=null
real udg_DamageCount=0
integer udg_Dark=0
real udg_GaronaDamage=0
real udg_Shade=0
real udg_ShadeText=0
integer udg_OrbInt=0
unit array udg_AttackingUnit
unit array udg_AttackedUnit
real udg_DarkTouchOff=0
real udg_SliceandDiceOff=0
real udg_OrbCounterHorde=0
real udg_OrbCounterAlliance=0
group udg_HowlGroup=null
real udg_HowlMove=0
real udg_HowlDistance=0
real udg_HellishShroud=0
group udg_HellishShroudGroup=null
integer udg_DarkTouchOn=0
texttag udg_HellishShroudText=null
group udg_TrampleAlreadySlide=null
group udg_ScytheGroup=null
timer array udg_Timer
real udg_ThroneCount=0
unit udg_Peon=null
real udg_Refuge1=0
real udg_Refuge2=0
real udg_Sandbox=0
real udg_AutomatedMachinery=0
integer udg_SteamContraption=0
location udg_GrandFinaleTarget=null
unit udg_GrandFinaleCaster=null
unit udg_Gyrocopter=null
real udg_ManaShield=0
real udg_ManaShieldDamage=0
integer udg_ItemCost=0
integer udg_Flute=0
real udg_ItemCounter=0
unit udg_CarveTarget=null
integer udg_CarveDamage=0
group udg_CorpseArea=null
location udg_CastPos=null
location udg_CorpsePos2=null
location udg_CorpsePos=null
unit udg_Corpse=null
effect udg_SE=null
group udg_SoulDrain=null
effect udg_SD=null
effect udg_TR=null
group udg_TheReturned=null
location udg_ReturnedPoint=null
group udg_ReturnCorpses=null
integer udg_GaronaSkill=0
integer udg_EvasionCounter=0
real udg_Smite=0
location udg_LightPoint=null
integer udg_InventoryFull=0
group udg_DamageArea=null
group udg_FireNovaGroup=null
group udg_Heroes=null
real udg_WaycrestDamage=0
real udg_WaycrestSpellDamage=0
real udg_DuelCounter=0
real udg_DuelDamage=0
unit udg_DuelTarget=null
group udg_BashGroup=null
unit array udg_BashUnit
integer udg_BashIndex=0
real array udg_BashWait
timer udg_BashTimer=null
integer udg_BashLoopIndex=0
real udg_BashWaitNew=0
unit udg_StabTarget=null
location udg_CelestialPoint=null
location udg_AstralPoint=null
location udg_StellarPoint=null
effect udg_StellarStar1=null
effect udg_StellarStar2=null
effect udg_StellarStar3=null
group udg_StellarGroup=null
real udg_StellarDistance=0
effect udg_StellarStar4=null
real udg_TempReal=0
integer udg_Mimic=0
location udg_AegwynnCasterPoint=null
unit udg_AegwynnCaster=null
effect udg_StellarStar5=null
effect udg_StellarStar6=null
effect udg_StellarStar7=null
effect udg_StellarStar8=null
effect udg_StellarStar12=null
effect udg_StellarStar11=null
effect udg_StellarStar10=null
effect udg_StellarStar9=null
integer udg_GlacialIndex=0
real array udg_GlacialWait
unit array udg_GlacialUnit
timer udg_GlacialTimer=null
real udg_GlacialWaitNew=0
integer udg_GlacialLoopIndex=0
integer udg_DeathsIndex=0
integer udg_DeathsLoopIndex=0
timer udg_DeathsTimer=null
unit array udg_DeathsUnit
real array udg_DeathsWait
real udg_DeathsWaitNew=0
group udg_Fire_Wall_Group=null
integer udg_StopIndex=0
real array udg_StopWait
unit array udg_StopUnit
group udg_StopGroup=null
timer udg_StopTimer=null
real udg_StopWaitNew=0
integer udg_StopLoopIndex=0
real udg_OrbWaitNew=0
integer udg_OrbLoopIndex=0
integer udg_OrbIndex=0
real array udg_OrbWait
timer udg_OrbTimer=null
unit array udg_OrbAttackedUnit
unit array udg_OrbAttackingUnit
group udg_StellarGroup2=null
location udg_StellarPoint2=null
real udg_StellarDistance2=0
location udg_ScattershotPoint=null
location udg_ScattershotTarget=null
location udg_BurningCocktailPoint=null
location udg_BurningCocktailTarget=null
real udg_BurningReal=0
effect udg_BurningCocktailSE=null
location udg_WaveCaster=null
location udg_WaveTarget=null
real udg_AlonsusHealth=0
real udg_PrayerHealth=0
unit udg_CondemnTarget=null
real udg_HolyShield=0
real udg_HolyShieldDamage=0
integer udg_FuryOn=0
timer udg_WarmthTimer=null
integer udg_Warmth=0
lightning udg_FingerofDeath=null
unit udg_SanctuaryTarget=null
real udg_RighteousFury=0
real udg_RighteousFuryEnd=0
integer udg_JudgementInt=0
integer udg_HolyBulkwark=0
timer udg_HolyBulkwarkTimer=null
unit udg_DivineShieldTarget=null
location udg_HailTarget=null
integer udg_Arrow_CountMaxSize=0
unit array udg_Arrow_Caster
location udg_Arrow_CasterLoc=null
location udg_Arrow_TargetPoint=null
real udg_Arrow_Angle=0
group udg_Arrow_StartGroup=null
real array udg_Arrow_Distance
real array udg_Arrow_DistanceTravel
integer array udg_Arrow_StunDuration
real array udg_Arrow_DistanceCount
integer udg_Arrow_CusValue=0
location udg_Arrow_DummyLoc=null
location udg_Arrow_Movement=null
group udg_Arrow_UnitGroup=null
group udg_Arrow_RandomUnit=null
integer udg_HailCounter=0
integer udg_Arrow_Counts=0
integer udg_JudgementDistance=0
integer udg_OntheHouseint=0
location udg_ThunderClapPoint1=null
location udg_ThunderClapPoint2=null
location udg_ThunderClapPoint3=null
group udg_ThunderGroup=null
unit array udg_YellowAltar
unit array udg_LightBlueAltar
unit array udg_DarkGreenAltar
unit array udg_BrownAltar
timer udg_CorruptedBloodTimer=null
location array udg_ArrowStormTarget
location array udg_ArrowStormPoint
real udg_GlaiveReal=0
location udg_GlaiveTarget=null
group udg_UnityGroup=null
integer udg_ArrowStormInt=0
location udg_WaycrestTarget=null
force udg_HordeItem=null
location udg_SoulDrainCaster=null
location udg_SoulDrainTarget=null
unit udg_SoulDrainUnit=null
location udg_SearingLightCaster=null
location udg_SearingLightTarget=null
location udg_MegawattCaster=null
location udg_MegawattTarget=null
location udg_HeroicStrikeTarget=null
timer udg_DeathsTimerDamage=null
unit array udg_DeathsUnitDamage
real array udg_DeathsWaitDamage
real udg_DeathsWaitDamageNew=0
integer udg_DeathInt=0
integer udg_DeathsLoopIndexDamage=0
integer udg_DeathsIndexDamage=0
unit array udg_DeathsCasterDamage
group udg_DeathGroup=null
integer udg_SplitShot=0
unit udg_Bodyguard1=null
unit udg_Bodyguard2=null
real udg_GriseldaDamage=0
integer udg_HellishSkulls=0
unit udg_TurokSpirit=null
effect udg_EssenceSE=null
integer udg_Essence=0
group udg_EssenceGroup=null
integer udg_TurokCount=0
integer udg_ValorStrength=0
location udg_StormHammerCaster=null
location udg_StormHammerTarget=null
integer udg_BodyGuardCount=0
integer udg_DragonAspectCounter=0
group udg_DragonAspectGroup=null
group udg_DragonMasterGroup=null
location udg_TempPoint4=null
location udg_TempPoint5=null
integer udg_HellfireCount=0
integer udg_StarFallCount=0
unit udg_TrampleTarget=null
real udg_DivineStrength=0
unit udg_DivineStrengthTarget=null
boolean udg_HolyBulkwarkOn=false
texttag udg_MaraShieldText=null
texttag udg_RhoninShieldText=null
integer udg_ManaShieldCounter=0
timer udg_ManaShieldTimer=null
boolean udg_HellishShroudOn=false
real udg_HellishShroudDamage=0
real udg_HellishShroudDamageTaken=0
real udg_SoulExtraction=0
real udg_SoulReal=0
unit udg_LastRider=null
integer udg_WarpathCounter=0
unit udg_SoulTarget=null
integer udg_ArmorIndex=0
integer udg_ArmorLoopIndex=0
timer udg_ArmorTimer=null
unit array udg_ArmorUnit
real array udg_ArmorWait
real udg_ArmorWaitNew=0
integer udg_ShieldwallIndex=0
integer udg_ShieldwallLoopIndex=0
timer udg_ShieldwallTimer=null
unit array udg_ShieldwallUnit
real array udg_ShieldwallWait
real udg_ShieldwallWaitNew=0
unit udg_Kurdran=null
boolean udg_SkyreeOnOff=false
integer udg_MaimCounter=0
force udg_MusicGroup=null
integer udg_EssenceCounter=0
location udg_MultibarrelPoint=null
location udg_MultibarrelTarget=null
unit udg_StaggeringTarget=null
real udg_StaggeringReal=0
group udg_BarrelGroup=null
real udg_BarrelDistance=0
location udg_BarrelPoint=null
real udg_BarrelReal=0
timer udg_BattlePrimedTimer=null
timer udg_VoteKickTimer=null
real udg_VoteKickReal=0
force udg_KickVoteCallers=null
player udg_VoteKickPlayer=null
integer udg_AllianceKickConfirm=0
integer udg_HordeKickConfirm=0
real udg_VoteKickThreshold=0
force udg_Voters=null
integer udg_GoldBonusAlliance=0
integer udg_GoldBonusHorde=0
real udg_BlackhandHealth=0
integer udg_WisdomCarverDamage=0
integer udg_OnTheHouse=0
group udg_RejuvGroup=null
effect array udg_RE
integer array udg_RejuvInt
effect array udg_RE2
group udg_FingerofDeathGroup=null
integer array udg_ArmorArray
real array udg_ReviveMana
endglobals

function initVariables takes nothing returns nothing
local integer i=0
    set i=0
    loop
    exitwhen(i>13)
    set udg_AzerothMainbreak[i]=0.00
    set i=i+1
    endloop
    set i=0
    loop
    exitwhen(i>13)
    set udg_AzerothNorthBreak[i]=0.00
    set i=i+1
    endloop
    set i=0
    loop
    exitwhen(i>13)
    set udg_AzerothSouthBreak[i]=0.00
    set i=i+1
    endloop
    set i=0
    loop
    exitwhen(i>13)
    set udg_AzerothThroneBreak[i]=0.00
    set i=i+1
    endloop
    set i=0
    loop
    exitwhen(i>13)
    set udg_NorthshireBreak[i]=0.00
    set i=i+1
    endloop
    set i=0
    loop
    exitwhen(i>13)
    set udg_StromgardeMainBreakFirst[i]=0.00
    set i=i+1
    endloop
    set i=0
    loop
    exitwhen(i>13)
    set udg_StromgardeWestBreak[i]=0.00
    set i=i+1
    endloop
    set i=0
    loop
    exitwhen(i>13)
    set udg_StromgardeEastBreak[i]=0.00
    set i=i+1
    endloop
    set i=0
    loop
    exitwhen(i>13)
    set udg_StromgardeThroneBreak[i]=0.00
    set i=i+1
    endloop
    set i=0
    loop
    exitwhen(i>13)
    set udg_QuelthalasBreak[i]=0.00
    set i=i+1
    endloop
    set i=0
    loop
    exitwhen(i>13)
    set udg_DalaranBreak[i]=0.00
    set i=i+1
    endloop
    set i=0
    loop
    exitwhen(i>13)
    set udg_LordaeronFirstBreak[i]=0.00
    set i=i+1
    endloop
    set i=0
    loop
    exitwhen(i>13)
    set udg_LordaeronSecondBreak[i]=0.00
    set i=i+1
    endloop
    set i=0
    loop
    exitwhen(i>13)
    set udg_LordaeronFinalBreak[i]=0.00
    set i=i+1
    endloop
    set i=0
    loop
    exitwhen(i>13)
    set udg_KulTirasBreak[i]=0.00
    set i=i+1
    endloop
    set i=0
    loop
    exitwhen(i>13)
    set udg_GilneasFinalBreak[i]=0.00
    set i=i+1
    endloop
    set i=0
    loop
    exitwhen(i>13)
    set udg_GilneasSouthBreak[i]=0.00
    set i=i+1
    endloop
    set i=0
    loop
    exitwhen(i>13)
    set udg_GilneasEastBreak[i]=0.00
    set i=i+1
    endloop
    set udg_HordeGoldDivider=0
    set udg_LegionGoldDivider=0
    set udg_AllianceGoldDivider1=0
    set udg_AllianceGoldDivider2=0
    set udg_Alliance=bj_FORCE_PLAYER[0]
    set udg_Horde=bj_FORCE_PLAYER[4]
    set udg_Temp_UnitGroup=CreateGroup()
    set udg_HordeHero=0.00
    set udg_PurificationLevel=0
    set udg_Berserk=0
    set udg_SelfMutilate=0
    set i=0
    loop
    exitwhen(i>13)
    set udg_AzerothMainbreakLower[i]=0.00
    set i=i+1
    endloop
    set udg_ScytheMove=0
    set udg_LifeRipMove=0
    set udg_Skyree=0
    set udg_Devourlife=0
    set udg_TrampleSlideGroup=CreateGroup()
    set udg_SliceandDiceGroup=CreateGroup()
    set udg_Sunwell=0.00
    set udg_TempInteger=0
    set udg_BlisteringBlade=0
    set udg_DespCounter=0
    set udg_Galen=0
    set udg_HolyStrikeCount=0
    set udg_HolyStrikeGroup=CreateGroup()
    set udg_Fire_Wall_Duration=0
    set udg_Fire_Wall_Distance=0
    set udg_InfernoLevel=0
    set udg_NovaMana=0
    set udg_ShadowGroup=CreateGroup()
    set udg_SkullCount=0
    set udg_ShadowCount=0
    set udg_BattleShoutGroup=CreateGroup()
    set udg_DisguiseTimer=CreateTimer()
    set udg_Fury=0
    set udg_InnerRage=0
    set udg_BlueName=""
    set udg_RedName=""
    set udg_TealName=""
    set udg_PurpleName=""
    set udg_YellowName=""
    set udg_OrangeName=""
    set udg_GreenName=""
    set udg_PinkName=""
    set udg_GrayName=""
    set udg_LightBlueName=""
    set udg_DarkGreenName=""
    set udg_BrownName=""
    set udg_DarkTouchGroup=CreateGroup()
    set udg_InfernoDamage=0
    set i=0
    loop
    exitwhen(i>13)
    set udg_StromgardeMainBreakSecond[i]=0.00
    set i=i+1
    endloop
    set udg_Retaliate=0
    set udg_DamageCount=0
    set udg_Dark=0
    set udg_GaronaDamage=0
    set udg_Shade=0
    set udg_ShadeText=0
    set udg_OrbInt=0
    set udg_DarkTouchOff=0
    set udg_SliceandDiceOff=0
    set udg_OrbCounterHorde=0
    set udg_OrbCounterAlliance=0
    set udg_HowlGroup=CreateGroup()
    set udg_HowlMove=0
    set udg_HowlDistance=0
    set udg_HellishShroud=0
    set udg_HellishShroudGroup=CreateGroup()
    set udg_DarkTouchOn=0
    set udg_TrampleAlreadySlide=CreateGroup()
    set udg_ScytheGroup=CreateGroup()
    set i=0
    loop
    exitwhen(i>15)
    set udg_Timer[i]=CreateTimer()
    set i=i+1
    endloop
    set udg_ThroneCount=0.00
    set udg_Refuge1=0
    set udg_Refuge2=0
    set udg_Sandbox=0
    set udg_AutomatedMachinery=0
    set udg_SteamContraption=0
    set udg_ManaShield=0
    set udg_ManaShieldDamage=0
    set udg_ItemCost=0
    set udg_Flute=0
    set udg_ItemCounter=0
    set udg_CarveDamage=0
    set udg_CorpseArea=CreateGroup()
    set udg_SoulDrain=CreateGroup()
    set udg_TheReturned=CreateGroup()
    set udg_ReturnCorpses=CreateGroup()
    set udg_GaronaSkill=0
    set udg_EvasionCounter=0
    set udg_Smite=0
    set udg_InventoryFull=0
    set udg_DamageArea=CreateGroup()
    set udg_FireNovaGroup=CreateGroup()
    set udg_Heroes=CreateGroup()
    set udg_WaycrestDamage=0
    set udg_WaycrestSpellDamage=0
    set udg_DuelCounter=0
    set udg_DuelDamage=0
    set udg_BashGroup=CreateGroup()
    set udg_BashIndex=0
    set i=0
    loop
    exitwhen(i>24)
    set udg_BashWait[i]=0
    set i=i+1
    endloop
    set udg_BashTimer=CreateTimer()
    set udg_BashLoopIndex=0
    set udg_BashWaitNew=0
    set udg_StellarGroup=CreateGroup()
    set udg_StellarDistance=0
    set udg_TempReal=0
    set udg_Mimic=0
    set udg_GlacialIndex=0
    set i=0
    loop
    exitwhen(i>24)
    set udg_GlacialWait[i]=0
    set i=i+1
    endloop
    set udg_GlacialTimer=CreateTimer()
    set udg_GlacialWaitNew=0
    set udg_GlacialLoopIndex=0
    set udg_DeathsIndex=0
    set udg_DeathsLoopIndex=0
    set udg_DeathsTimer=CreateTimer()
    set i=0
    loop
    exitwhen(i>24)
    set udg_DeathsWait[i]=0
    set i=i+1
    endloop
    set udg_DeathsWaitNew=0
    set udg_Fire_Wall_Group=CreateGroup()
    set udg_StopIndex=0
    set i=0
    loop
    exitwhen(i>24)
    set udg_StopWait[i]=0
    set i=i+1
    endloop
    set udg_StopGroup=CreateGroup()
    set udg_StopTimer=CreateTimer()
    set udg_StopWaitNew=0
    set udg_StopLoopIndex=0
    set udg_OrbWaitNew=0
    set udg_OrbLoopIndex=0
    set udg_OrbIndex=0
    set i=0
    loop
    exitwhen(i>72)
    set udg_OrbWait[i]=0
    set i=i+1
    endloop
    set udg_OrbTimer=CreateTimer()
    set udg_StellarGroup2=CreateGroup()
    set udg_StellarDistance2=0
    set udg_BurningReal=0
    set udg_AlonsusHealth=0
    set udg_PrayerHealth=0
    set udg_HolyShield=0
    set udg_HolyShieldDamage=0
    set udg_FuryOn=0
    set udg_WarmthTimer=CreateTimer()
    set udg_Warmth=0
    set udg_RighteousFury=0
    set udg_RighteousFuryEnd=0
    set udg_JudgementInt=0
    set udg_HolyBulkwark=0
    set udg_HolyBulkwarkTimer=CreateTimer()
    set udg_Arrow_CountMaxSize=0
    set udg_Arrow_Angle=0
    set udg_Arrow_StartGroup=CreateGroup()
    set i=0
    loop
    exitwhen(i>1)
    set udg_Arrow_Distance[i]=0
    set i=i+1
    endloop
    set i=0
    loop
    exitwhen(i>1)
    set udg_Arrow_DistanceTravel[i]=0
    set i=i+1
    endloop
    set i=0
    loop
    exitwhen(i>1)
    set udg_Arrow_StunDuration[i]=0
    set i=i+1
    endloop
    set i=0
    loop
    exitwhen(i>1)
    set udg_Arrow_DistanceCount[i]=0
    set i=i+1
    endloop
    set udg_Arrow_CusValue=0
    set udg_Arrow_UnitGroup=CreateGroup()
    set udg_Arrow_RandomUnit=CreateGroup()
    set udg_HailCounter=0
    set udg_Arrow_Counts=0
    set udg_JudgementDistance=0
    set udg_OntheHouseint=0
    set udg_ThunderGroup=CreateGroup()
    set udg_CorruptedBloodTimer=CreateTimer()
    set udg_GlaiveReal=0
    set udg_UnityGroup=CreateGroup()
    set udg_ArrowStormInt=0
    set udg_HordeItem=CreateForce()
    set udg_DeathsTimerDamage=CreateTimer()
    set i=0
    loop
    exitwhen(i>24)
    set udg_DeathsWaitDamage[i]=0
    set i=i+1
    endloop
    set udg_DeathsWaitDamageNew=0
    set udg_DeathInt=0
    set udg_DeathsLoopIndexDamage=0
    set udg_DeathsIndexDamage=0
    set udg_DeathGroup=CreateGroup()
    set udg_SplitShot=0
    set udg_GriseldaDamage=0
    set udg_HellishSkulls=0
    set udg_Essence=0
    set udg_EssenceGroup=CreateGroup()
    set udg_TurokCount=0
    set udg_ValorStrength=0
    set udg_BodyGuardCount=0
    set udg_DragonAspectCounter=0
    set udg_DragonAspectGroup=CreateGroup()
    set udg_DragonMasterGroup=CreateGroup()
    set udg_HellfireCount=0
    set udg_StarFallCount=0
    set udg_DivineStrength=0
    set udg_HolyBulkwarkOn=false
    set udg_ManaShieldCounter=0
    set udg_ManaShieldTimer=CreateTimer()
    set udg_HellishShroudOn=false
    set udg_HellishShroudDamage=0
    set udg_HellishShroudDamageTaken=0
    set udg_SoulExtraction=0
    set udg_SoulReal=0
    set udg_WarpathCounter=0
    set udg_ArmorIndex=0
    set udg_ArmorLoopIndex=0
    set udg_ArmorTimer=CreateTimer()
    set i=0
    loop
    exitwhen(i>24)
    set udg_ArmorWait[i]=0
    set i=i+1
    endloop
    set udg_ArmorWaitNew=0
    set udg_ShieldwallIndex=0
    set udg_ShieldwallLoopIndex=0
    set udg_ShieldwallTimer=CreateTimer()
    set i=0
    loop
    exitwhen(i>24)
    set udg_ShieldwallWait[i]=0
    set i=i+1
    endloop
    set udg_ShieldwallWaitNew=0
    set udg_SkyreeOnOff=false
    set udg_MaimCounter=0
    set udg_MusicGroup=CreateForce()
    set udg_EssenceCounter=0
    set udg_StaggeringReal=0
    set udg_BarrelGroup=CreateGroup()
    set udg_BarrelDistance=0
    set udg_BarrelReal=0
    set udg_BattlePrimedTimer=CreateTimer()
    set udg_VoteKickTimer=CreateTimer()
    set udg_VoteKickReal=0
    set udg_KickVoteCallers=CreateForce()
    set udg_AllianceKickConfirm=0
    set udg_HordeKickConfirm=0
    set udg_VoteKickThreshold=0
    set udg_Voters=CreateForce()
    set udg_GoldBonusAlliance=0
    set udg_GoldBonusHorde=0
    set udg_BlackhandHealth=0
    set udg_WisdomCarverDamage=0
    set udg_OnTheHouse=0
    set udg_RejuvGroup=CreateGroup()
    set i=0
    loop
    exitwhen(i>30)
    set udg_RejuvInt[i]=0
    set i=i+1
    endloop
    set udg_FingerofDeathGroup=CreateGroup()
    set i=0
    loop
    exitwhen(i>12)
    set udg_ArmorArray[i]=0
    set i=i+1
    endloop
    set i=0
    loop
    exitwhen(i>12)
    set udg_ReviveMana[i]=0
    set i=i+1
    endloop

endfunction

function Trig_Create_units_Actions takes nothing returns nothing

local unit u
local player p=Player(4)
call initVariables()
set u=CreateUnit(p, 'ndqt', 5893.9, - 13188.0, 190.509)
call SetUnitState(u, UNIT_STATE_MANA, 300)
set u=CreateUnit(p, 'nfgu', 5555.9, - 13219.6, 180.000)
set u=CreateUnit(p, 'nfel', 5075.1, - 12534.7, 268.679)
call SetUnitState(u, UNIT_STATE_MANA, 200)
set u=CreateUnit(p, 'nfel', 5291.3, - 12538.6, 249.177)
call SetUnitState(u, UNIT_STATE_MANA, 200)
set u=CreateUnit(p, 'ndqt', 5346.2, - 12343.9, 15.074)
call SetUnitState(u, UNIT_STATE_MANA, 300)
set u=CreateUnit(p, 'nfgu', 5526.4, - 12425.9, 22.391)
set u=CreateUnit(p, 'nfgu', 5855.0, - 12652.5, 41.002)
set u=CreateUnit(p, 'nfgu', 5358.2, - 12817.2, 181.038)
set u=CreateUnit(p, 'nfgu', 5145.9, - 12544.6, 358.989)
set u=CreateUnit(p, 'nfgu', 5336.6, - 12691.6, 179.698)
set u=CreateUnit(p, 'nfgu', 5649.9, - 12597.2, 308.791)
set u=CreateUnit(p, 'ndqt', 5837.8, - 12866.8, 242.673)
call SetUnitState(u, UNIT_STATE_MANA, 300)
set u=CreateUnit(p, 'nbal', 5442.0, - 12584.9, 358.912)
call SetUnitState(u, UNIT_STATE_MANA, 400)
set u=CreateUnit(p, 'nfel', 5714.4, - 13108.0, 180.000)
call SetUnitState(u, UNIT_STATE_MANA, 200)
set u=CreateUnit(p, 'nfgu', 5415.9, - 13118.8, 180.000)
set u=CreateUnit(p, 'nfel', 5732.7, - 12695.4, 180.000)
call SetUnitState(u, UNIT_STATE_MANA, 200)
set u=CreateUnit(p, 'nrvl', 5719.6, - 12908.5, 180.000)
call SetUnitState(u, UNIT_STATE_MANA, 285)
set u=CreateUnit(p, 'nfel', 5475.4, - 12772.9, 181.785)
call SetUnitState(u, UNIT_STATE_MANA, 200)
set u=CreateUnit(p, 'nfgu', 5529.7, - 12914.0, 180.000)
set u=CreateUnit(p, 'nndk', 5513.5, - 12740.9, 168.030)
call SetUnitState(u, UNIT_STATE_MANA, 200)
set u=CreateUnit(p, 'earc', - 15150.0, 14843.5, 219.117)
set u=CreateUnit(p, 'uaco', 12717.1, - 14653.6, 39.170)

set p=Player(9)
set u=CreateUnit(p, 'nfbr', 14032.9, - 11362.4, 261.410)
set u=CreateUnit(p, 'orai', 5378.5, - 14808.7, 214.874)
set u=CreateUnit(p, 'ohun', 5061.3, - 15457.9, 173.531)
set u=CreateUnit(p, 'odkt', 5477.0, - 14885.4, 40.000)
call SetUnitState(u, UNIT_STATE_MANA, 300)
set u=CreateUnit(p, 'ohun', 5124.1, - 15401.7, 138.822)
set u=CreateUnit(p, 'nw2w', 5469.8, - 15309.2, 45.000)
call SetUnitState(u, UNIT_STATE_MANA, 300)
set u=CreateUnit(p, 'ngir', 5311.5, - 15302.8, 124.081)
set u=CreateUnit(p, 'ngir', 5343.5, - 15397.4, 124.081)
set u=CreateUnit(p, 'odkt', 5434.8, - 15393.5, 40.000)
call SetUnitState(u, UNIT_STATE_MANA, 300)
set u=CreateUnit(p, 'ngir', 5413.7, - 15253.7, 143.845)
set u=CreateUnit(p, 'ohun', 5159.3, - 15299.0, 130.093)
set u=CreateUnit(p, 'nw2w', 5474.6, - 15122.6, 40.000)
call SetUnitState(u, UNIT_STATE_MANA, 300)
set u=CreateUnit(p, 'ngir', 5580.7, - 15122.2, 171.591)
set u=CreateUnit(p, 'ohun', 5222.0, - 15195.8, 156.395)
set u=CreateUnit(p, 'ohun', 5260.8, - 15110.2, 187.016)
set u=CreateUnit(p, 'nfbr', 13000.5, - 11662.7, 307.557)
set u=CreateUnit(p, 'nfbr', 13819.1, - 9885.3, 30.000)
set u=CreateUnit(p, 'nfbr', 13930.1, - 9817.2, 261.406)
set u=CreateUnit(p, 'opeo', 13101.1, - 10832.3, 306.671)
set u=CreateUnit(p, 'opeo', 13698.2, - 10341.7, 263.658)
set u=CreateUnit(p, 'odkt', 5575.1, - 15300.8, 40.000)
call SetUnitState(u, UNIT_STATE_MANA, 300)
set u=CreateUnit(p, 'orai', 5362.5, - 15171.1, 135.162)
set u=CreateUnit(p, 'ohun', 5255.1, - 14954.8, 163.471)
set u=CreateUnit(p, 'orai', 5232.7, - 15437.2, 161.832)
set u=CreateUnit(p, 'ngir', 5323.6, - 14991.3, 200.516)
set u=CreateUnit(p, 'earc', - 15157.1, 14858.9, 222.353)
set u=CreateUnit(p, 'orai', 5416.0, - 15029.6, 173.131)
set u=CreateUnit(p, 'nfbr', 12933.0, - 11602.2, 261.410)
set u=CreateUnit(p, 'ohun', 12529.5, - 10634.4, 334.233)
set u=CreateUnit(p, 'orai', 12734.9, - 10486.1, 221.012)
set u=CreateUnit(p, 'ngir', 12783.6, - 10704.0, 141.811)
set p=Player(10)
set u=CreateUnit(p, 'nrwm', 5561.7, - 13847.7, 117.403)
set u=CreateUnit(p, 'orai', 5604.0, - 13514.7, 155.000)
set u=CreateUnit(p, 'ogru', 5534.7, - 13407.0, 180.000)
set u=CreateUnit(p, 'ngir', 5671.6, - 13975.5, 148.303)
set u=CreateUnit(p, 'ngir', 5726.2, - 13893.3, 180.792)
set u=CreateUnit(p, 'odkt', 5691.0, - 14082.1, 180.000)
call SetUnitState(u, UNIT_STATE_MANA, 300)
set u=CreateUnit(p, 'nfbr', 11851.6, - 11748.9, 360.000)
set u=CreateUnit(p, 'ngir', 5683.7, - 13838.3, 202.219)
set u=CreateUnit(p, 'ngir', 5771.1, - 13778.4, 207.214)
set u=CreateUnit(p, 'nw2w', 5567.0, - 13979.9, 180.000)
call SetUnitState(u, UNIT_STATE_MANA, 300)
set u=CreateUnit(p, 'nw2w', 5770.1, - 13666.4, 155.000)
call SetUnitState(u, UNIT_STATE_MANA, 300)
set u=CreateUnit(p, 'ogru', 5306.1, - 14039.5, 180.000)
set u=CreateUnit(p, 'orai', 5358.2, - 13987.7, 180.000)
set u=CreateUnit(p, 'ogru', 5586.1, - 13772.4, 155.000)
set u=CreateUnit(p, 'odkt', 5414.6, - 13878.1, 180.000)
call SetUnitState(u, UNIT_STATE_MANA, 300)
set u=CreateUnit(p, 'orai', 5654.1, - 13718.4, 180.000)
set u=CreateUnit(p, 'orai', 5473.6, - 13736.4, 155.000)
set u=CreateUnit(p, 'ogru', 5565.1, - 13624.4, 180.000)
set u=CreateUnit(p, 'odkt', 5533.9, - 13876.7, 180.000)
call SetUnitState(u, UNIT_STATE_MANA, 300)
set u=CreateUnit(p, 'nfbr', 11756.1, - 11776.5, 262.867)
set u=CreateUnit(p, 'odkt', 5560.4, - 14033.8, 155.000)
call SetUnitState(u, UNIT_STATE_MANA, 300)
set u=CreateUnit(p, 'ogru', 5376.2, - 14141.4, 155.000)
set u=CreateUnit(p, 'opeo', 10046.5, - 15746.2, 320.206)
set u=CreateUnit(p, 'ngir', 10511.4, - 15275.1, 202.980)
set u=CreateUnit(p, 'ogru', 10266.3, - 15340.7, 352.057)
set u=CreateUnit(p, 'opeo', 11451.6, - 15468.6, 169.590)
set u=CreateUnit(p, 'ngir', 5734.4, - 13491.3, 148.303)
set u=CreateUnit(p, 'orai', 10347.6, - 15143.2, 350.958)
set u=CreateUnit(p, 'earc', - 15164.2, 14866.8, 224.427)
set u=CreateUnit(p, 'ogru', 5483.5, - 13975.4, 155.000)
set p=Player(11)
set u=CreateUnit(p, 'nrwm', 5326.9, - 14435.0, 190.260)
set u=CreateUnit(p, 'ngir', 5644.3, - 14541.5, 147.377)
set u=CreateUnit(p, 'ngir', 5637.1, - 14469.8, 147.377)
set u=CreateUnit(p, 'ngir', 5594.8, - 14137.4, 224.122)
set u=CreateUnit(p, 'orai', 5394.1, - 14443.6, 145.000)
set u=CreateUnit(p, 'ngir', 5572.6, - 14373.8, 194.279)
set u=CreateUnit(p, 'nw2w', 5539.4, - 14307.2, 145.000)
call SetUnitState(u, UNIT_STATE_MANA, 300)
set u=CreateUnit(p, 'ngir', 5550.1, - 14477.0, 174.494)
set u=CreateUnit(p, 'nw2w', 5523.8, - 14585.3, 125.000)
call SetUnitState(u, UNIT_STATE_MANA, 300)
set u=CreateUnit(p, 'ngir', 5541.2, - 14668.3, 147.377)
set u=CreateUnit(p, 'orai', 5414.5, - 14256.2, 125.000)
set u=CreateUnit(p, 'okod', 5248.7, - 14620.5, 198.635)
set u=CreateUnit(p, 'opeo', 9859.5, - 13359.1, 57.548)
set u=CreateUnit(p, 'opeo', 11149.3, - 12604.1, 270.536)
set u=CreateUnit(p, 'okod', 10872.3, - 12019.0, 253.380)
set u=CreateUnit(p, 'odkt', 5617.4, - 14289.7, 145.000)
call SetUnitState(u, UNIT_STATE_MANA, 300)
set u=CreateUnit(p, 'orai', 5295.0, - 14692.0, 145.000)
set u=CreateUnit(p, 'okod', 5279.4, - 14547.7, 183.807)
set u=CreateUnit(p, 'odkt', 5446.6, - 14665.6, 145.000)
call SetUnitState(u, UNIT_STATE_MANA, 300)
set u=CreateUnit(p, 'okod', 5303.5, - 14460.0, 205.319)
set u=CreateUnit(p, 'orai', 5391.4, - 14598.6, 145.000)
set u=CreateUnit(p, 'okod', 5245.3, - 14760.9, 188.877)
set u=CreateUnit(p, 'orai', 10651.9, - 12175.0, 324.667)
set u=CreateUnit(p, 'odkt', 5718.3, - 14394.6, 125.000)
call SetUnitState(u, UNIT_STATE_MANA, 300)
set u=CreateUnit(p, 'earc', - 15168.4, 14862.1, 224.356)
set u=CreateUnit(p, 'ngir', 10847.1, - 12320.4, 113.643)
set u=CreateUnit(p, 'okod', 5374.5, - 14348.7, 221.198)
set u=CreateUnit(p, 'okod', 5473.1, - 14380.7, 172.680)
set p=Player(PLAYER_NEUTRAL_AGGRESSIVE)
set u=CreateUnit(p, 'nnad', 10688.0, - 10240.0, 270.000)
set u=CreateUnit(p, 'nnad', 11328.0, - 14912.0, 270.000)
set u=CreateUnit(p, 'h00H', - 15040.0, 14528.0, 270.000)
set u=CreateUnit(p, 'nnad', 14144.0, - 10560.0, 270.000)
set u=CreateUnit(p, 'etol', - 15296.0, 14848.0, 270.000)
set p=Player(PLAYER_NEUTRAL_PASSIVE)
set u=CreateUnit(p, 'etoa', - 14976.0, 14848.0, 270.000)
call SetUnitColor(u, ConvertPlayerColor(10))
set u=CreateUnit(p, 'nnfm', - 3456.0, 13824.0, 270.000)
set u=CreateUnit(p, 'ndt1', - 12512.0, 4640.0, 270.000)
set u=CreateUnit(p, 'ndt1', - 8416.0, 8544.0, 270.000)
set u=CreateUnit(p, 'nnfm', - 5888.0, 13184.0, 270.000)
set u=CreateUnit(p, 'nnfm', - 3200.0, 13568.0, 270.000)
set u=CreateUnit(p, 'nnfm', - 2432.0, 15232.0, 270.000)
set u=CreateUnit(p, 'nnfm', - 3840.0, 15104.0, 270.000)
set u=CreateUnit(p, 'nnfm', - 3200.0, 14720.0, 270.000)
set u=CreateUnit(p, 'nnfm', - 2432.0, 12672.0, 270.000)
set u=CreateUnit(p, 'nnfm', - 3200.0, 13440.0, 270.000)
set u=CreateUnit(p, 'nnfm', - 5888.0, 13056.0, 270.000)
set u=CreateUnit(p, 'nnfm', - 2560.0, 12672.0, 270.000)
set u=CreateUnit(p, 'nnfm', - 6400.0, 13056.0, 270.000)
set u=CreateUnit(p, 'nnfm', - 6912.0, 13632.0, 270.000)
set u=CreateUnit(p, 'nnfm', - 6400.0, 14464.0, 270.000)
set u=CreateUnit(p, 'nnfm', - 4608.0, 15104.0, 270.000)
set u=CreateUnit(p, 'nnfm', - 8064.0, 8192.0, 270.000)
set u=CreateUnit(p, 'nnfm', - 8064.0, 8064.0, 270.000)
set u=CreateUnit(p, 'nnfm', - 12416.0, 5376.0, 270.000)
set u=CreateUnit(p, 'nnfm', - 11392.0, 5120.0, 270.000)
set u=CreateUnit(p, 'nnfm', - 11776.0, 4736.0, 270.000)
set u=CreateUnit(p, 'nnfm', - 11776.0, 4608.0, 270.000)
set u=CreateUnit(p, 'nnfm', - 12160.0, 3712.0, 270.000)
set u=CreateUnit(p, 'nnfm', - 11520.0, 3968.0, 270.000)
set u=CreateUnit(p, 'nnfm', - 11264.0, 4352.0, 270.000)
set u=CreateUnit(p, 'nnfm', - 11008.0, 4096.0, 270.000)
set u=CreateUnit(p, 'nnfm', - 10880.0, 4224.0, 270.000)
set u=CreateUnit(p, 'nnfm', - 10624.0, 5248.0, 270.000)
set u=CreateUnit(p, 'nnfm', - 8320.0, 7808.0, 270.000)
set u=CreateUnit(p, 'hwtw', 1408.0, 8640.0, 270.000)
call SetUnitColor(u, ConvertPlayerColor(5))
set u=CreateUnit(p, 'hwtw', 768.0, 8640.0, 270.000)
call SetUnitColor(u, ConvertPlayerColor(5))
set u=CreateUnit(p, 'nnfm', - 8576.0, 8320.0, 270.000)
set u=CreateUnit(p, 'nnfm', - 8448.0, 8256.0, 270.000)
set u=CreateUnit(p, 'nnfm', - 5888.0, 7552.0, 270.000)
set u=CreateUnit(p, 'nnfm', - 5760.0, 7552.0, 270.000)
set u=CreateUnit(p, 'nnfm', - 7296.0, 8960.0, 270.000)
set u=CreateUnit(p, 'nnfm', - 7680.0, 8448.0, 270.000)
set u=CreateUnit(p, 'nnfm', - 6144.0, 8064.0, 270.000)
set u=CreateUnit(p, 'nnfm', - 5632.0, 8192.0, 270.000)
set u=CreateUnit(p, 'nnfm', - 5632.0, 7680.0, 270.000)
set u=CreateUnit(p, 'nnfm', - 5632.0, 7168.0, 270.000)
set u=CreateUnit(p, 'nnfm', - 6016.0, 8960.0, 270.000)
set u=CreateUnit(p, 'nnfm', - 11776.0, 4480.0, 270.000)
set u=CreateUnit(p, 'nnfm', - 12608.0, 4608.0, 270.000)
set u=CreateUnit(p, 'ndt1', - 12704.0, 4960.0, 270.000)
set u=CreateUnit(p, 'ndt1', - 12640.0, 4960.0, 270.000)
set u=CreateUnit(p, 'ndt1', - 11744.0, 4960.0, 270.000)
set u=CreateUnit(p, 'ndt1', - 12512.0, 4576.0, 270.000)
set u=CreateUnit(p, 'ndt1', - 11616.0, 6240.0, 270.000)
set u=CreateUnit(p, 'ndt1', - 11616.0, 6304.0, 270.000)
set u=CreateUnit(p, 'ndt1', - 10848.0, 5856.0, 270.000)
set u=CreateUnit(p, 'ndt1', - 10848.0, 5920.0, 270.000)
set u=CreateUnit(p, 'ndt1', - 8032.0, 8928.0, 270.000)
set u=CreateUnit(p, 'ndt1', - 8096.0, 8928.0, 270.000)
set u=CreateUnit(p, 'ndt1', - 8096.0, 8992.0, 270.000)
set u=CreateUnit(p, 'ndt1', - 8480.0, 8352.0, 270.000)
set u=CreateUnit(p, 'ndt1', - 5984.0, 7968.0, 270.000)
set u=CreateUnit(p, 'ndt1', - 6048.0, 7968.0, 270.000)
set u=CreateUnit(p, 'ndt1', - 5856.0, 9184.0, 270.000)
set u=CreateUnit(p, 'ndt1', - 5920.0, 9184.0, 270.000)
set u=CreateUnit(p, 'ndt1', - 5728.0, 7200.0, 270.000)
set u=CreateUnit(p, 'ndt1', - 5728.0, 7136.0, 270.000)
set u=CreateUnit(p, 'ndt1', - 6048.0, 7200.0, 270.000)
set u=CreateUnit(p, 'ndt1', - 6048.0, 7136.0, 270.000)
set u=CreateUnit(p, 'ndt1', - 3232.0, 12896.0, 270.000)
set u=CreateUnit(p, 'ndt1', - 3232.0, 12960.0, 270.000)
set u=CreateUnit(p, 'ndt1', - 3168.0, 12896.0, 270.000)
set u=CreateUnit(p, 'ndt1', - 3360.0, 12832.0, 270.000)
set u=CreateUnit(p, 'ndt1', - 3296.0, 12832.0, 270.000)
set u=CreateUnit(p, 'ndt1', - 3296.0, 12768.0, 270.000)
set u=CreateUnit(p, 'ndt1', - 4064.0, 12832.0, 270.000)
set u=CreateUnit(p, 'ndt1', - 4128.0, 12832.0, 270.000)
set u=CreateUnit(p, 'ndt1', - 3168.0, 12960.0, 270.000)
set u=CreateUnit(p, 'ndt1', - 3936.0, 13984.0, 270.000)
set u=CreateUnit(p, 'ndt1', - 3936.0, 13920.0, 270.000)
set u=CreateUnit(p, 'ndt1', - 4000.0, 13920.0, 270.000)
set u=CreateUnit(p, 'ndt1', - 6880.0, 13536.0, 270.000)
set u=CreateUnit(p, 'ndt1', - 6944.0, 13536.0, 270.000)
set u=CreateUnit(p, 'ndt1', - 6944.0, 13728.0, 270.000)
set u=CreateUnit(p, 'ndt1', - 12640.0, 4704.0, 270.000)
set u=CreateUnit(p, 'ndt1', - 12704.0, 4704.0, 270.000)
set u=CreateUnit(p, 'ndt1', - 5856.0, 9248.0, 270.000)
set u=CreateUnit(p, 'ndt1', - 6880.0, 13728.0, 270.000)
set u=CreateUnit(p, 'nvlw', - 6124.1, 8530.8, 106.667)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'h002', 5104.0, - 13022.8, 25.000)
call SetUnitColor(u, ConvertPlayerColor(1))
set u=CreateUnit(p, 'h002', 5383.7, - 13346.2, 360.000)
call SetUnitColor(u, ConvertPlayerColor(1))
set u=CreateUnit(p, 'nhem', - 5516.1, 7385.9, 37.000)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nech', 3490.8, - 3895.6, 315.290)
set u=CreateUnit(p, 'h002', 5240.9, - 13015.9, 335.000)
call SetUnitColor(u, ConvertPlayerColor(1))
set u=CreateUnit(p, 'h00A', 4862.8, - 13133.5, 329.413)
call SetUnitColor(u, ConvertPlayerColor(1))
set u=CreateUnit(p, 'h002', 4986.1, - 12936.0, 25.000)
call SetUnitColor(u, ConvertPlayerColor(1))
set u=CreateUnit(p, 'h002', 5451.7, - 13349.2, 360.000)
call SetUnitColor(u, ConvertPlayerColor(1))
set u=CreateUnit(p, 'uabo', 4882.5, - 12792.4, 360.000)
call SetUnitColor(u, ConvertPlayerColor(1))
set u=CreateUnit(p, 'h00A', 4887.6, - 13810.0, 354.000)
call SetUnitColor(u, ConvertPlayerColor(1))
set u=CreateUnit(p, 'uabo', 5197.7, - 13270.6, 360.000)
call SetUnitColor(u, ConvertPlayerColor(1))
set u=CreateUnit(p, 'nvil', 5851.5, - 8293.7, 114.580)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvl2', 5263.3, - 8306.7, 275.854)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'uabo', 5377.5, - 13440.1, 360.000)
call SetUnitColor(u, ConvertPlayerColor(1))
set u=CreateUnit(p, 'nvl2', - 1535.0, 12001.2, 233.870)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlw', - 1404.6, 11725.5, 60.548)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvk2', 4403.7, 13746.8, 341.345)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nech', 5101.3, 15014.9, 93.277)
set u=CreateUnit(p, 'h002', 5157.2, - 13995.5, 360.000)
call SetUnitColor(u, ConvertPlayerColor(1))
set u=CreateUnit(p, 'h00A', 4999.5, - 13947.2, 354.000)
call SetUnitColor(u, ConvertPlayerColor(1))
set u=CreateUnit(p, 'nech', - 8157.3, - 5503.1, 195.277)
set u=CreateUnit(p, 'nvlk', 4457.2, 9576.0, 281.226)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvl2', - 6610.4, - 3825.8, 255.110)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvl2', 6086.8, - 7569.0, 333.149)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvl2', 5326.4, 9727.1, 265.860)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlw', - 6358.7, 10756.1, 139.058)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nech', - 8020.9, - 5506.5, 315.290)
set u=CreateUnit(p, 'nhef', 15201.7, 14174.7, 164.185)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nhef', 14528.5, 14298.8, 313.068)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nhem', 14663.2, 14298.2, 240.497)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'hrdh', - 12002.8, 12683.8, 220.000)
call SetUnitColor(u, ConvertPlayerColor(12))
set u=CreateUnit(p, 'nvlw', - 12189.8, 12983.5, 204.553)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvk2', - 5451.2, 9062.3, 143.630)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvil', 5675.0, 10623.1, 290.575)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlw', 6010.4, 10599.7, 54.109)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nech', 4989.4, 14955.9, 287.176)
set u=CreateUnit(p, 'nvl2', - 5919.6, - 3896.0, 126.105)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvl2', - 12277.9, 12956.1, 2.180)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvk2', 3578.1, - 4098.5, 21.613)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvil', - 12114.6, 12873.5, 264.750)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvl2', - 6563.7, 14971.8, 294.462)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlw', - 3147.6, 13021.5, 139.058)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvl2', - 3052.1, 13270.8, 151.300)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'uabo', 5184.1, - 13832.8, 360.000)
call SetUnitColor(u, ConvertPlayerColor(1))
set u=CreateUnit(p, 'nvk2', 5633.3, - 8076.1, 143.630)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'h002', 5300.1, - 13870.0, 360.000)
call SetUnitColor(u, ConvertPlayerColor(1))
set u=CreateUnit(p, 'h00A', 5073.5, - 13703.7, 354.000)
call SetUnitColor(u, ConvertPlayerColor(1))
set u=CreateUnit(p, 'nech', 3413.0, - 3920.8, 6.373)
set u=CreateUnit(p, 'nech', 3434.2, - 3817.5, 195.277)
set u=CreateUnit(p, 'nech', - 8084.8, - 5613.2, 6.373)
set u=CreateUnit(p, 'nvil', - 11703.0, 10184.5, 326.073)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvk2', - 11943.6, 10406.6, 217.184)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nshe', - 1627.1, 11795.8, 342.000)
set u=CreateUnit(p, 'nvl2', - 6178.9, 7946.3, 126.105)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlw', 7248.6, - 8247.6, 68.425)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvl2', 7532.5, - 8575.8, 308.352)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nshe', - 1725.3, 11751.0, 54.000)
set u=CreateUnit(p, 'h00A', 4880.0, - 13654.7, 307.572)
call SetUnitColor(u, ConvertPlayerColor(1))
set u=CreateUnit(p, 'nvl2', 2437.9, - 13877.9, 224.249)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'h002', 5241.7, - 13700.7, 340.000)
call SetUnitColor(u, ConvertPlayerColor(1))
set u=CreateUnit(p, 'uabo', 5383.4, - 13626.2, 335.000)
call SetUnitColor(u, ConvertPlayerColor(1))
set u=CreateUnit(p, 'h00A', 4851.9, - 14429.8, 15.000)
call SetUnitColor(u, ConvertPlayerColor(1))
set u=CreateUnit(p, 'h00A', 4926.9, - 14822.9, 15.000)
call SetUnitColor(u, ConvertPlayerColor(1))
set u=CreateUnit(p, 'h002', 4984.8, - 14762.6, 330.000)
call SetUnitColor(u, ConvertPlayerColor(1))
set u=CreateUnit(p, 'uabo', 4935.5, - 15073.6, 330.000)
call SetUnitColor(u, ConvertPlayerColor(1))
set u=CreateUnit(p, 'h002', 4990.0, - 14902.5, 330.000)
call SetUnitColor(u, ConvertPlayerColor(1))
set u=CreateUnit(p, 'nvlw', 7307.7, - 7959.7, 283.480)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvk2', - 3676.0, 12875.6, 292.090)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'h00A', 4655.6, - 15166.7, 354.000)
call SetUnitColor(u, ConvertPlayerColor(1))
set u=CreateUnit(p, 'nvl2', - 6934.3, - 2462.4, 255.110)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'uabo', 4796.5, - 15153.9, 330.000)
call SetUnitColor(u, ConvertPlayerColor(1))
set u=CreateUnit(p, 'h00A', 4956.0, - 14236.0, 345.000)
call SetUnitColor(u, ConvertPlayerColor(1))
set u=CreateUnit(p, 'necr', - 4191.7, 3163.9, 49.291)
set u=CreateUnit(p, 'nvil', - 6753.3, - 4369.9, 225.501)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvl2', 5121.3, 7309.3, 140.200)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlw', 7132.2, 6620.5, 331.061)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvl2', - 3853.7, 13942.8, 286.660)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlw', - 6288.1, 15207.1, 141.058)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'h00A', 4583.8, - 14944.9, 354.000)
call SetUnitColor(u, ConvertPlayerColor(1))
set u=CreateUnit(p, 'h002', 4967.8, - 15275.5, 330.000)
call SetUnitColor(u, ConvertPlayerColor(1))
set u=CreateUnit(p, 'nvlk', - 6192.3, 8620.0, 267.119)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvil', - 3357.7, 14409.8, 241.313)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvil', - 4558.8, 14869.8, 87.316)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvl2', - 6447.9, 13073.0, 152.921)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvil', - 5562.2, 9089.9, 341.004)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nhem', - 5848.8, 9237.3, 92.859)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvil', 6453.2, 6878.2, 154.165)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlw', - 5959.9, 7658.2, 107.556)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvl2', 6149.1, 6881.3, 233.873)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvl2', - 5979.6, 10326.9, 151.297)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvil', 8297.9, 9382.1, 213.581)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'h00A', 4717.6, - 14809.7, 15.000)
call SetUnitColor(u, ConvertPlayerColor(1))
set u=CreateUnit(p, 'nshe', 11710.6, 13872.4, 113.218)
set u=CreateUnit(p, 'nshe', 11706.4, 13639.7, 37.157)
set u=CreateUnit(p, 'nshe', 11799.8, 13774.3, 236.257)
set u=CreateUnit(p, 'nshe', 11670.5, 13528.5, 187.674)
set u=CreateUnit(p, 'nshe', 11813.2, 13638.0, 229.336)
set u=CreateUnit(p, 'nvlk', 7965.6, 9870.2, 207.978)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlw', 8348.4, 8402.7, 330.460)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvk2', 8299.9, 8309.3, 181.620)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvl2', 6804.2, 6914.6, 300.000)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlk', - 5098.6, 10462.8, 333.324)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvk2', - 6185.2, 10751.2, 114.086)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvl2', - 1001.5, - 11971.5, 224.249)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'h002', 5033.2, - 14502.6, 360.000)
call SetUnitColor(u, ConvertPlayerColor(1))
set u=CreateUnit(p, 'uabo', 5080.7, - 14830.8, 330.000)
call SetUnitColor(u, ConvertPlayerColor(1))
set u=CreateUnit(p, 'nrac', 417.7, - 10896.4, 338.420)
set u=CreateUnit(p, 'nrac', 2001.4, - 11409.0, 89.245)
set u=CreateUnit(p, 'necr', 2540.7, - 9265.9, 244.350)
set u=CreateUnit(p, 'nvlk', - 11996.0, 10296.7, 90.000)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvil', - 10583.0, 10051.2, 187.479)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvl2', - 5224.1, 10503.1, 233.873)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvil', - 1235.1, - 12217.0, 25.753)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvl2', - 11469.2, 10751.5, 132.741)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlw', - 1070.7, - 15585.2, 16.315)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvk2', - 1057.9, - 15710.1, 34.900)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlk', - 6870.3, - 4420.1, 356.100)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvil', - 1231.6, - 15116.0, 283.390)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlw', - 10989.1, 10342.0, 213.306)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvil', - 4054.2, - 15627.0, 5.351)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'necr', 354.7, 15163.4, 319.756)
set u=CreateUnit(p, 'nvl2', - 3747.8, - 15447.3, 0.923)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlw', - 4065.7, - 14218.5, 339.872)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvk2', - 4111.0, - 14279.5, 289.334)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvil', 6822.4, - 11514.4, 132.960)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlk', 6453.5, - 11704.0, 27.550)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlw', 2965.7, - 13825.7, 332.500)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'hrdh', 3144.7, - 13652.4, 58.802)
call SetUnitColor(u, ConvertPlayerColor(12))
set u=CreateUnit(p, 'nvil', - 505.1, - 15707.9, 171.340)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlw', 6444.1, - 11312.3, 114.790)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvil', 7438.6, 7263.4, 290.575)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvl2', 6807.4, 10547.8, 180.599)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvk2', 6447.0, 10591.9, 284.313)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlk', - 5972.9, 9172.3, 28.807)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvk2', - 3861.7, 14603.7, 143.630)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlk', - 3940.0, 14605.8, 333.324)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nech', 5150.9, 14834.0, 206.239)
set u=CreateUnit(p, 'nech', 5062.3, 14894.5, 256.508)
set u=CreateUnit(p, 'nvl2', 4709.1, 14779.5, 2.180)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvil', 5662.2, 14541.2, 168.030)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nech', 6163.6, 13836.5, 64.250)
set u=CreateUnit(p, 'nhem', 13177.7, 10317.6, 133.092)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nhem', 11681.0, 14309.1, 186.455)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nhef', 13848.2, 10901.9, 326.524)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nhef', 10420.6, 14473.3, 328.310)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nhem', 11311.7, 14784.3, 92.859)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nhem', 11794.3, 14608.0, 290.367)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nhef', 10956.9, 13858.0, 271.330)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nhef', 12240.0, 12104.3, 288.631)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nhef', 14970.6, 11908.2, 62.833)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nhem', 12673.2, 11708.9, 258.791)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvil', - 5951.4, 10971.3, 264.746)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvk2', - 6254.0, 10916.0, 143.629)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvk2', 966.2, 9696.2, 143.630)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlw', 1911.6, 10043.8, 141.058)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'hrdh', - 1312.1, - 15156.2, 121.946)
call SetUnitColor(u, ConvertPlayerColor(12))
set u=CreateUnit(p, 'nvl2', 548.4, 8839.5, 294.462)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvl2', - 11112.3, 10436.2, 233.873)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvl2', 9575.8, 5602.7, 132.260)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'uabo', 5137.8, - 14341.1, 25.000)
call SetUnitColor(u, ConvertPlayerColor(1))
set u=CreateUnit(p, 'h002', 5036.7, - 14319.4, 25.000)
call SetUnitColor(u, ConvertPlayerColor(1))
set u=CreateUnit(p, 'nech', 6183.9, 13946.8, 93.277)
set u=CreateUnit(p, 'nvlw', 5468.4, 14438.5, 341.465)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvil', 9636.2, 4887.5, 290.575)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlw', - 5845.9, - 2635.5, 272.889)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'h002', 5048.5, - 15122.1, 330.000)
call SetUnitColor(u, ConvertPlayerColor(1))
set u=CreateUnit(p, 'nvlk', - 6702.8, - 2971.9, 356.100)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'uabo', 5122.0, - 14164.4, 335.000)
call SetUnitColor(u, ConvertPlayerColor(1))
set u=CreateUnit(p, 'uabo', 5152.7, - 14563.6, 25.000)
call SetUnitColor(u, ConvertPlayerColor(1))
set u=CreateUnit(p, 'nvlw', 4504.7, 13700.6, 237.664)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvk2', - 7899.1, - 2760.9, 284.313)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvl2', - 1192.9, - 15647.7, 333.149)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvil', 1944.0, 9381.6, 213.581)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvil', 4551.5, 9646.0, 290.575)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvil', 4336.0, 7783.3, 290.575)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvil', - 6021.0, 7379.1, 290.575)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlw', 793.4, 9713.6, 350.089)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvil', - 3040.7, 14966.9, 138.320)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvil', 5464.4, 13772.8, 264.746)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'hrdh', 4899.2, 13880.3, 220.000)
call SetUnitColor(u, ConvertPlayerColor(12))
set u=CreateUnit(p, 'nvl2', 5984.4, 13905.0, 299.222)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'h00I', - 7301.0, - 2110.7, 93.376)
set u=CreateUnit(p, 'nvil', - 9370.5, - 7825.8, 249.650)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvil', - 6872.9, - 2264.3, 32.521)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nrog', 2041.3, 10438.6, 91.503)
call SetUnitColor(u, ConvertPlayerColor(5))
set u=CreateUnit(p, 'nvk2', - 9447.5, - 7891.2, 143.630)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvil', - 8623.5, - 7753.1, 138.320)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvil', - 8041.0, - 4857.9, 137.200)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvl2', - 6998.7, - 8270.1, 121.732)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvil', - 7061.6, - 8182.8, 310.099)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvil', - 8250.3, - 7795.1, 249.650)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlk', - 7644.7, - 7099.1, 243.662)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlw', - 8108.2, - 7316.5, 161.700)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlw', - 8345.8, - 5288.4, 97.780)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'h000', 5157.8, - 2849.6, 313.101)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'h000', 3603.1, - 4016.0, 261.425)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlw', - 7944.0, - 2156.0, 58.920)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvil', - 7511.8, - 3259.4, 189.773)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvil', - 5111.0, - 5987.3, 168.030)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvl2', - 5173.3, - 6175.5, 299.222)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'ncrb', - 8862.9, - 8727.6, 85.520)
set u=CreateUnit(p, 'nhmc', 14210.5, 9301.3, 19.029)
set u=CreateUnit(p, 'hrdh', 15288.6, 11956.0, 129.693)
call SetUnitColor(u, ConvertPlayerColor(12))
set u=CreateUnit(p, 'necr', - 9098.0, - 2746.4, 86.366)
set u=CreateUnit(p, 'necr', 10726.5, 10519.8, 228.753)
set u=CreateUnit(p, 'necr', 10789.9, 10429.0, 110.822)
set u=CreateUnit(p, 'h000', 7407.3, - 4499.1, 277.086)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'npig', 4923.4, - 1707.9, 200.000)
set u=CreateUnit(p, 'necr', 3001.3, - 8855.7, 228.753)
set u=CreateUnit(p, 'nvk2', 9201.8, 4835.9, 11.393)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvil', 10205.5, 5565.6, 227.622)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlw', 9456.8, 5542.3, 96.199)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlw', 10195.5, 5244.9, 320.118)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'necr', - 5759.8, 11657.7, 110.822)
set u=CreateUnit(p, 'necr', 2995.6, - 9067.7, 110.820)
set u=CreateUnit(p, 'necr', 3369.1, 4459.4, 89.179)
set u=CreateUnit(p, 'necr', 3862.6, 4348.0, 349.563)
set u=CreateUnit(p, 'nbrg', 560.6, 8551.8, 287.810)
call SetUnitColor(u, ConvertPlayerColor(5))
set u=CreateUnit(p, 'nvl2', - 1003.9, - 14013.9, 224.249)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlw', - 978.6, - 13624.9, 190.000)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvl2', - 5798.1, 3769.2, 200.770)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvk2', 5673.8, - 2687.6, 55.453)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlw', - 5773.7, 4835.4, 43.254)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvk2', - 5273.7, 4709.0, 184.631)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvk2', 7635.9, - 5016.7, 143.630)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvil', 7215.8, 6549.9, 311.955)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvil', - 11081.4, 5739.4, 348.365)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvil', - 10762.2, 5651.5, 142.991)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvl2', - 10995.1, 5545.3, 62.349)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlw', - 10719.4, 5757.5, 103.242)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvil', - 12401.0, 4327.2, 341.004)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlk', - 12112.0, 4438.4, 238.279)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlk', - 12500.9, 4388.4, 267.119)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlk', - 12696.0, 4212.2, 179.050)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlw', - 11400.9, 4285.1, 149.353)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvl2', - 12470.6, 655.4, 193.915)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvl2', - 10941.8, 5247.7, 231.863)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvil', - 12051.9, 1382.1, 310.186)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvk2', 7969.3, - 3172.9, 143.630)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvk2', - 11781.6, 893.8, 356.792)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'necr', - 8918.2, - 2536.9, 199.371)
set u=CreateUnit(p, 'nvlk', - 12704.5, - 64.1, 221.502)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlw', - 12645.2, - 61.8, 51.099)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvl2', - 11677.6, 567.2, 227.677)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlw', 5769.0, 6873.6, 338.334)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvl2', 5377.2, 6560.7, 140.200)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvk2', 6811.2, 6547.3, 181.620)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvl2', - 7734.3, 5463.7, 224.249)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvil', - 7967.9, 5218.2, 25.753)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nrac', - 5276.0, - 7104.3, 89.245)
set u=CreateUnit(p, 'nrac', 9232.8, 12193.3, 149.237)
set u=CreateUnit(p, 'nrac', - 8641.3, 5620.7, 5.329)
set u=CreateUnit(p, 'ndog', - 7330.2, 4122.2, 154.850)
set u=CreateUnit(p, 'hrdh', 7506.3, - 5143.2, 233.018)
call SetUnitColor(u, ConvertPlayerColor(12))
set u=CreateUnit(p, 'npig', 4866.0, - 1875.9, 145.249)
set u=CreateUnit(p, 'nrac', - 6289.9, - 15715.7, 357.429)
set u=CreateUnit(p, 'nrac', - 3314.2, 6434.9, 323.120)
set u=CreateUnit(p, 'npig', 4625.0, - 1925.1, 28.485)
set u=CreateUnit(p, 'nfro', 10255.4, 10130.7, 333.210)
set u=CreateUnit(p, 'nvil', 2376.9, 6294.8, 154.165)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvk2', 2079.9, 6156.0, 114.090)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nrac', 8210.1, 13403.7, 323.375)
set u=CreateUnit(p, 'nder', 7494.1, 14645.0, 48.155)
set u=CreateUnit(p, 'nder', 7615.9, 14655.2, 334.665)
set u=CreateUnit(p, 'nder', 7740.7, 14623.3, 122.754)
set u=CreateUnit(p, 'nder', 7565.5, 14859.4, 45.726)
set u=CreateUnit(p, 'nder', - 1577.9, 5736.3, 256.418)
set u=CreateUnit(p, 'nder', - 1663.6, 5630.7, 21.083)
set u=CreateUnit(p, 'nvk2', 1624.7, - 14173.4, 34.900)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nder', - 1412.0, 5733.3, 239.608)
set u=CreateUnit(p, 'nsea', - 13238.6, 10696.7, 180.137)
set u=CreateUnit(p, 'nvil', - 6255.8, 8513.9, 290.575)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvil', - 7360.9, 8104.7, 290.575)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nhem', 11686.2, 13094.2, 186.455)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nsea', - 13104.0, 10642.4, 292.904)
set u=CreateUnit(p, 'necr', - 182.7, 15232.4, 79.719)
set u=CreateUnit(p, 'nhem', 14577.5, 12004.6, 92.859)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'necr', - 76.4, 6186.1, 175.580)
set u=CreateUnit(p, 'nhem', 14959.3, 14372.1, 226.080)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlk', 14844.4, 14252.8, 28.807)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlk', 14007.6, 10928.3, 28.807)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlk', 10494.4, 14801.2, 28.807)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlk', 11876.3, 15081.4, 28.807)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'h000', 8012.4, - 4267.4, 316.248)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvk2', 7190.6, 9672.5, 284.313)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvk2', 8267.1, 9484.6, 237.076)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nrog', 1266.6, 8615.6, 268.548)
call SetUnitColor(u, ConvertPlayerColor(5))
set u=CreateUnit(p, 'nrog', 928.9, 8659.4, 301.957)
call SetUnitColor(u, ConvertPlayerColor(5))
set u=CreateUnit(p, 'nvl2', - 7916.9, 8903.1, 126.105)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nrog', 926.0, 8856.6, 2.216)
call SetUnitColor(u, ConvertPlayerColor(5))
set u=CreateUnit(p, 'nbrg', 1119.3, 8936.1, 241.915)
call SetUnitColor(u, ConvertPlayerColor(5))
set u=CreateUnit(p, 'nbrg', 2045.5, 10310.9, 123.995)
call SetUnitColor(u, ConvertPlayerColor(5))
set u=CreateUnit(p, 'nrog', 1774.9, 10467.3, 45.196)
call SetUnitColor(u, ConvertPlayerColor(5))
set u=CreateUnit(p, 'h000', 7725.9, - 2950.3, 277.086)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'h000', 4628.2, - 5181.0, 277.090)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'h000', 3768.0, - 4432.5, 147.289)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlw', 6896.6, 8525.1, 330.460)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlw', - 8568.8, 8389.4, 289.154)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nech', 4950.8, 14818.6, 93.277)
set u=CreateUnit(p, 'nvil', 1701.7, - 14162.2, 123.675)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlw', - 3165.0, 15033.7, 355.547)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlw', - 6082.1, 12844.1, 139.058)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvk2', - 6155.9, 12832.9, 3.473)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvil', - 6536.8, 13132.7, 288.402)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nhem', 15338.7, 12354.6, 226.080)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nvlk', 10911.7, 13748.5, 28.807)
call SetUnitColor(u, ConvertPlayerColor(9))
set u=CreateUnit(p, 'nhem', 13011.4, 10122.8, 296.190)
call SetUnitColor(u, ConvertPlayerColor(9))
set p=Player(PLAYER_NEUTRAL_AGGRESSIVE)
set u=CreateUnit(p, 'h00F', - 15488.0, 14528.0, 270.000)
set u=CreateUnit(p, 'h00G', - 15232.0, 14528.0, 270.000)
set u=CreateUnit(p, 'nfrt', - 14848.0, 14720.0, 270.000)
set u=CreateUnit(p, 'h01V', - 15424.0, 14976.0, 270.000)
call SetUnitColor(u, ConvertPlayerColor(3))
set u=CreateUnit(p, 'nef1', - 14848.0, 14976.0, 270.000)
set u=CreateUnit(p, 'h01K', - 15424.0, 14720.0, 270.000)
call SetUnitColor(u, ConvertPlayerColor(5))
set u=CreateUnit(p, 'h01M', - 15104.0, 14976.0, 270.000)
call SetUnitColor(u, ConvertPlayerColor(3))
set u=CreateUnit(p, 'h01L', - 15104.0, 15232.0, 270.000)
call SetUnitColor(u, ConvertPlayerColor(3))
set u=CreateUnit(p, 'nef0', - 14848.0, 15232.0, 270.000)
set u=CreateUnit(p, 'nnad', 10688.0, - 10240.0, 270.000)
set u=CreateUnit(p, 'nnad', 11328.0, - 14912.0, 270.000)
set u=CreateUnit(p, 'h00H', - 15040.0, 14528.0, 270.000)
set u=CreateUnit(p, 'nnad', 14144.0, - 10560.0, 270.000)
set u=CreateUnit(p, 'etol', - 15296.0, 14848.0, 270.000)
set u=CreateUnit(p, 'h01P', - 15424.0, 15232.0, 270.000)
call SetUnitColor(u, ConvertPlayerColor(3))

endfunction

//===========================================================================
function InitTrig_Create_units takes nothing returns nothing
    set gg_trg_Create_units = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Create_units, function Trig_Create_units_Actions )
endfunction

