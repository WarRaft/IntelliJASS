globals
sound udg_FireLoopSound=null
string gg_snd_PH1
string gg_snd_War2IntroMusic01
sound gg_snd_BigBadVoodooSpellBirth1=null
sound gg_snd_BloodlustTarget=null
sound gg_snd_BreathOfFrost1=null
sound gg_snd_HumanCallToArmsWhat1=null
sound gg_snd_KnightNoRiderWhat1=null
sound gg_snd_KnightNoRiderWhat2=null
sound gg_snd_HowlOfTerror=null
sound gg_snd_PeasantDeath=null
sound gg_snd_HolyBolt=null
sound gg_snd_DarkSummoningLaunch1=null
sound gg_snd_FrostmourneChant1=null
sound gg_snd_TichondriusWarcry1=null
sound gg_snd_FanOfKnives=null
sound gg_snd_ReviveUndead=null
sound gg_snd_EyeOfSargeras=null
sound gg_snd_SargerasRoar=null
sound gg_snd_MetalHeavyChopMetal2=null
sound gg_snd_GyrocopterImpactHit1=null
sound gg_snd_TheHornOfCenarius=null
sound gg_snd_TaurenWarcry1=null
sound gg_snd_CentaurYesAttack1=null
sound gg_snd_U08Archimonde19=null
sound gg_snd_GameFound=null
sound gg_snd_NewTournament=null
sound gg_snd_Feedback=null
sound gg_snd_SoulGem=null
sound gg_snd_StampedeCaster1=null
sound gg_snd_DivineShield=null
sound gg_snd_SpiritWalkerMorph=null
sound gg_snd_ManaShieldCaster1=null
sound gg_snd_BoatAttack12=null
sound gg_snd_GyrocopterPissed2=null
sound gg_snd_GyrocopterWarcry1=null
sound gg_snd_GyrocopterPissed5=null
sound gg_snd_GyrocopterPissed1=null
sound gg_snd_PocketFactoryBirth=null
sound gg_snd_AncestralGuardianHit1=null
sound gg_snd_Incinerate1=null
sound gg_snd_CarrionSwarmDamage2=null
sound gg_snd_MetalHeavySliceMetal3=null
sound gg_snd_MetalHeavyChopMetal3=null
sound gg_snd_ShandrisYesAttack1=null
sound gg_snd_ShimmeringPortalBirth=null
sound gg_snd_ShimmeringPortalDeath=null
sound gg_snd_MirrorImage=null
sound gg_snd_MirrorImageDeath=null
sound gg_snd_TyrandePissed5=null
sound gg_snd_ThunderClapCaster=null
sound gg_snd_LightningBolt=null
sound gg_snd_HealingWave=null
sound gg_snd_ResurrectTarget=null
sound gg_snd_TirionShield=null
sound gg_snd_ArrowAttack1=null
sound gg_snd_KelThuzadWhat3=null
sound gg_snd_MuradinYesAttack2=null
sound gg_snd_HeroMountainKingPissed6=null
sound gg_snd_SylvanasPissed3=null
sound gg_snd_ArrowAttack101=null
sound gg_snd_BlueFireBurstLoop=null
sound gg_snd_RestorationPotion= null
sound gg_snd_AssassinDeath1= null
sound gg_snd_ArachnathidWhat1= null
sound gg_snd_CentaurDeath= null
endglobals

function Trig_Init_sounds_Actions takes nothing returns nothing
call SetSoundParamsFromLabel(gg_snd_TichondriusWarcry1, "TichondriusWarcry")
call SetSoundParamsFromLabel(gg_snd_KnightNoRiderWhat2, "KnightNoRiderWhat")
call SetSoundDuration(gg_snd_KnightNoRiderWhat2, 1974)
call SetSoundDuration(gg_snd_TichondriusWarcry1, 2396)
call SetSoundParamsFromLabel(gg_snd_CentaurYesAttack1, "CentaurYesAttack")
call SetSoundParamsFromLabel(gg_snd_GyrocopterImpactHit1, "GyrocopterAttack")
call SetSoundDuration(gg_snd_GyrocopterImpactHit1, 998)
call SetSoundDuration(gg_snd_CentaurYesAttack1, 1320)
call SetSoundParamsFromLabel(gg_snd_U08Archimonde19, "U08Archimonde19")
call SetSoundDuration(gg_snd_U08Archimonde19, 7549)
call SetSoundParamsFromLabel(gg_snd_GameFound, "GameFound")
call SetSoundParamsFromLabel(gg_snd_Feedback, "Feedback")
call SetSoundDuration(gg_snd_Feedback, 1222)
call SetSoundDuration(gg_snd_GameFound, 7488)
call SetSoundVolume(gg_snd_U08Archimonde19, 127)
call SetSoundPitch(gg_snd_U08Archimonde19, 0.9)
call SetSoundParamsFromLabel(gg_snd_ArrowAttack1, "ArrowLaunch")
call SetSoundParamsFromLabel(gg_snd_KelThuzadWhat3, "KelThuzadLichWhat")
call SetSoundDuration(gg_snd_KelThuzadWhat3, 1609)
call SetSoundParamsFromLabel(gg_snd_ShandrisYesAttack1, "ShandrisYesAttack")
call SetSoundDuration(gg_snd_ShandrisYesAttack1, 1637)
call SetSoundParamsFromLabel(gg_snd_DarkSummoningLaunch1, "DarkSummoningMissileLaunch")
call SetSoundDuration(gg_snd_DarkSummoningLaunch1, 2624)
call SetSoundParamsFromLabel(gg_snd_TyrandePissed5, "TyrandePissed")
call SetSoundDuration(gg_snd_TyrandePissed5, 3387)
call SetSoundParamsFromLabel(gg_snd_FrostmourneChant1, "FrostmourneChantSound")
call SetSoundDuration(gg_snd_FrostmourneChant1, 5039)
call SetSoundDuration(gg_snd_ArrowAttack1, 672)
call SetSoundParamsFromLabel(gg_snd_TaurenWarcry1, "TaurenWarcry")
call SetSoundDuration(gg_snd_TaurenWarcry1, 2711)
call SetSoundParamsFromLabel(gg_snd_BloodlustTarget, "Bloodlust")
call SetSoundDuration(gg_snd_BloodlustTarget, 2583)
call SetSoundParamsFromLabel(gg_snd_ResurrectTarget, "Resurrect")
call SetSoundDuration(gg_snd_ResurrectTarget, 3506)
call SetSoundParamsFromLabel(gg_snd_StampedeCaster1, "StampedeCast")
call SetSoundDuration(gg_snd_StampedeCaster1, 2670)
call SetSoundParamsFromLabel(gg_snd_LightningBolt, "LightningBolt")
call SetSoundDuration(gg_snd_LightningBolt, 2136)
call SetSoundParamsFromLabel(gg_snd_HolyBolt, "HolyBolt")
call SetSoundDuration(gg_snd_HolyBolt, 1591)
call SetSoundParamsFromLabel(gg_snd_HealingWave, "HealingWaveTarget")
call SetSoundDuration(gg_snd_HealingWave, 2229)
call SetSoundParamsFromLabel(gg_snd_ThunderClapCaster, "ThunderClap")
call SetSoundDuration(gg_snd_ThunderClapCaster, 3451)
call SetSoundParamsFromLabel(gg_snd_MirrorImage, "MirrorImage")
call SetSoundDuration(gg_snd_MirrorImage, 1756)
call SetSoundParamsFromLabel(gg_snd_MetalHeavyChopMetal3, "MetalHeavyChopMetal")
call SetSoundDuration(gg_snd_MetalHeavyChopMetal3, 971)
call SetSoundParamsFromLabel(gg_snd_Incinerate1, "IncinerateDeath")
call SetSoundDuration(gg_snd_Incinerate1, 2717)
call SetSoundParamsFromLabel(gg_snd_CarrionSwarmDamage2, "CarrionSwarmDamage")
call SetSoundDuration(gg_snd_CarrionSwarmDamage2, 1602)
call SetSoundParamsFromLabel(gg_snd_GyrocopterPissed5, "GyrocopterPissed")
call SetSoundDuration(gg_snd_GyrocopterPissed5, 3117)
call SetSoundParamsFromLabel(gg_snd_PocketFactoryBirth, "PocketFactoryBirth")
call SetSoundDuration(gg_snd_PocketFactoryBirth, 2669)
call SetSoundParamsFromLabel(gg_snd_GyrocopterWarcry1, "GyrocopterWarcry")
call SetSoundDuration(gg_snd_GyrocopterWarcry1, 4161)
call SetSoundParamsFromLabel(gg_snd_GyrocopterPissed2, "GyrocopterPissed")
call SetSoundDuration(gg_snd_GyrocopterPissed2, 2757)
call SetSoundParamsFromLabel(gg_snd_GyrocopterPissed1, "GyrocopterPissed")
call SetSoundDuration(gg_snd_GyrocopterPissed1, 3913)
call SetSoundParamsFromLabel(gg_snd_ManaShieldCaster1, "ManaShieldCastSound")
call SetSoundDuration(gg_snd_ManaShieldCaster1, 2554)
call SetSoundParamsFromLabel(gg_snd_DivineShield, "DivineShield")
call SetSoundDuration(gg_snd_DivineShield, 1955)
call SetSoundPitch(gg_snd_DivineShield, 0.6)
call SetSoundParamsFromLabel(gg_snd_SoulGem, "SoulGem")
call SetSoundDuration(gg_snd_SoulGem, 4474)
call SetSoundParamsFromLabel(gg_snd_TheHornOfCenarius, "HornOfCenariusSound")
call SetSoundDuration(gg_snd_TheHornOfCenarius, 12121)
call SetSoundChannel(gg_snd_TheHornOfCenarius, 11)
call SetSoundPitch(gg_snd_TheHornOfCenarius, 2.0)
call SetSoundParamsFromLabel(gg_snd_ReviveUndead, "ReviveUndead")
call SetSoundDuration(gg_snd_ReviveUndead, 3623)
call SetSoundParamsFromLabel(gg_snd_EyeOfSargeras, "EyeOfSargerasLoop")
call SetSoundDuration(gg_snd_EyeOfSargeras, 2966)
call SetSoundParamsFromLabel(gg_snd_SargerasRoar, "SargerasRoar")
call SetSoundDuration(gg_snd_SargerasRoar, 4481)
call SetSoundPitch(gg_snd_SargerasRoar, 0.9)
call SetSoundParamsFromLabel(gg_snd_FanOfKnives, "FanOfKnives")
call SetSoundDuration(gg_snd_FanOfKnives, 2351)
call SetSoundParamsFromLabel(gg_snd_BreathOfFrost1, "BreathOfFrost")
call SetSoundDuration(gg_snd_BreathOfFrost1, 2235)
call SetSoundParamsFromLabel(gg_snd_AncestralGuardianHit1, "AncestralGuardianMissileHit")
call SetSoundDuration(gg_snd_AncestralGuardianHit1, 1654)
call SetSoundParamsFromLabel(gg_snd_ShimmeringPortalBirth, "ShimmeringPortalBirth")
call SetSoundDuration(gg_snd_ShimmeringPortalBirth, 8529)
call SetSoundParamsFromLabel(gg_snd_ShimmeringPortalDeath, "ShimmeringPortalDeath")
call SetSoundDuration(gg_snd_ShimmeringPortalDeath, 4783)
call SetSoundParamsFromLabel(gg_snd_TirionShield, "DivineShield")
call SetSoundDuration(gg_snd_TirionShield, 1955)
call SetSoundParamsFromLabel(gg_snd_MetalHeavyChopMetal2, "MetalHeavyChopMetal")
call SetSoundDuration(gg_snd_MetalHeavyChopMetal2, 865)
call SetSoundParamsFromLabel(gg_snd_HumanCallToArmsWhat1, "TownHallCallToArms")
call SetSoundDuration(gg_snd_HumanCallToArmsWhat1, 3971)
call SetSoundParamsFromLabel(gg_snd_NewTournament, "NewTournament")
call SetSoundDuration(gg_snd_NewTournament, 7988)
set gg_snd_BigBadVoodooSpellBirth1=CreateSound("Abilities\\Spells\\Orc\\Voodoo\\BigBadVoodooSpellBirth1.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(gg_snd_BigBadVoodooSpellBirth1,"VoodooBirth")
call SetSoundDuration(gg_snd_BigBadVoodooSpellBirth1,3442)
set gg_snd_BloodlustTarget=CreateSound("Abilities\\Spells\\Orc\\Bloodlust\\BloodlustTarget.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(gg_snd_BloodlustTarget,"Bloodlust")
call SetSoundDuration(gg_snd_BloodlustTarget,2583)
set gg_snd_BreathOfFrost1=CreateSound("Abilities\\Spells\\Other\\BreathOfFrost\\BreathOfFrost1.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(gg_snd_BreathOfFrost1,"BreathOfFrost")
call SetSoundDuration(gg_snd_BreathOfFrost1,2235)
set gg_snd_HumanCallToArmsWhat1=CreateSound("Abilities\\Spells\\Human\\CallToArms\\HumanCallToArmsWhat1.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(gg_snd_HumanCallToArmsWhat1,"TownHallCallToArms")
call SetSoundDuration(gg_snd_HumanCallToArmsWhat1,3971)
set gg_snd_KnightNoRiderWhat1=CreateSound("Units\\Human\\KnightNoRider\\KnightNoRiderWhat1.wav",false,true,true,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(gg_snd_KnightNoRiderWhat1,"KnightNoRiderWhat")
call SetSoundDuration(gg_snd_KnightNoRiderWhat1,969)
set gg_snd_KnightNoRiderWhat2=CreateSound("Units\\Human\\KnightNoRider\\KnightNoRiderWhat2.wav",false,true,true,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(gg_snd_KnightNoRiderWhat2,"KnightNoRiderWhat")
call SetSoundDuration(gg_snd_KnightNoRiderWhat2,1974)
set gg_snd_PH1="Sound\\Music\\mp3Music\\PH1.mp3"
set gg_snd_War2IntroMusic01="Sound\\Music\\mp3Music\\War2IntroMusic.mp3"
set gg_snd_HowlOfTerror=CreateSound("Abilities\\Spells\\Other\\HowlOfTerror\\HowlOfTerror.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(gg_snd_HowlOfTerror,"HowlOfTerror")
call SetSoundDuration(gg_snd_HowlOfTerror,3065)
set gg_snd_PeasantDeath=CreateSound("Units\\Human\\Peasant\\PeasantDeath.wav",false,true,true,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(gg_snd_PeasantDeath,"PeasantDeath")
call SetSoundDuration(gg_snd_PeasantDeath,3645)
set gg_snd_HolyBolt=CreateSound("Abilities\\Spells\\Human\\HolyBolt\\HolyBolt.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(gg_snd_HolyBolt,"HolyBolt")
call SetSoundDuration(gg_snd_HolyBolt,1591)
set gg_snd_DarkSummoningLaunch1=CreateSound("Abilities\\Spells\\Undead\\DarkSummoning\\DarkSummoningLaunch1.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(gg_snd_DarkSummoningLaunch1,"DarkSummoningMissileLaunch")
call SetSoundDuration(gg_snd_DarkSummoningLaunch1,2624)
set gg_snd_FrostmourneChant1=CreateSound("Sound\\Ambient\\DoodadEffects\\FrostmourneChant1.wav",false,false,false,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(gg_snd_FrostmourneChant1,"FrostmourneChantSound")
call SetSoundDuration(gg_snd_FrostmourneChant1,5039)
set gg_snd_TichondriusWarcry1=CreateSound("Units\\Undead\\Tichondrius\\TichondriusWarcry1.wav",false,true,true,10,10,"HeroAcksEAX")
call SetSoundParamsFromLabel(gg_snd_TichondriusWarcry1,"TichondriusWarcry")
call SetSoundDuration(gg_snd_TichondriusWarcry1,2396)
set gg_snd_FanOfKnives=CreateSound("Units\\NightElf\\HeroWarden\\FanOfKnives.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(gg_snd_FanOfKnives,"FanOfKnives")
call SetSoundDuration(gg_snd_FanOfKnives,2351)
set gg_snd_ReviveUndead=CreateSound("Abilities\\Spells\\Undead\\ReviveUndead\\ReviveUndead.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(gg_snd_ReviveUndead,"ReviveUndead")
call SetSoundDuration(gg_snd_ReviveUndead,3623)
set gg_snd_EyeOfSargeras=CreateSound("Sound\\Ambient\\DoodadEffects\\EyeOfSargeras.wav",false,true,true,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(gg_snd_EyeOfSargeras,"EyeOfSargerasLoop")
call SetSoundDuration(gg_snd_EyeOfSargeras,2966)
set gg_snd_SargerasRoar=CreateSound("Sound\\Ambient\\DoodadEffects\\SargerasRoar.wav",false,true,true,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(gg_snd_SargerasRoar,"SargerasRoar")
call SetSoundDuration(gg_snd_SargerasRoar,4481)
call SetSoundPitch(gg_snd_SargerasRoar,0.9)
set gg_snd_MetalHeavyChopMetal2=CreateSound("Sound\\Units\\Combat\\MetalHeavyChopMetal2.wav",false,true,true,10,10,"CombatSoundsEAX")
call SetSoundParamsFromLabel(gg_snd_MetalHeavyChopMetal2,"MetalHeavyChopMetal")
call SetSoundDuration(gg_snd_MetalHeavyChopMetal2,865)
set gg_snd_GyrocopterImpactHit1=CreateSound("Units\\Human\\Gyrocopter\\GyrocopterImpactHit1.wav",false,true,true,10,10,"MissilesEAX")
call SetSoundParamsFromLabel(gg_snd_GyrocopterImpactHit1,"GyrocopterAttack")
call SetSoundDuration(gg_snd_GyrocopterImpactHit1,998)
set gg_snd_TheHornOfCenarius=CreateSound("Sound\\Ambient\\DoodadEffects\\TheHornOfCenarius.wav",false,false,false,1,10,"SpellsEAX")
call SetSoundParamsFromLabel(gg_snd_TheHornOfCenarius,"HornOfCenariusSound")
call SetSoundDuration(gg_snd_TheHornOfCenarius,12121)
call SetSoundChannel(gg_snd_TheHornOfCenarius,11)
call SetSoundPitch(gg_snd_TheHornOfCenarius,2.0)
set gg_snd_TaurenWarcry1=CreateSound("Units\\Orc\\Tauren\\TaurenWarcry1.wav",false,true,true,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(gg_snd_TaurenWarcry1,"TaurenWarcry")
call SetSoundDuration(gg_snd_TaurenWarcry1,2711)
set gg_snd_CentaurYesAttack1=CreateSound("Units\\Creeps\\Centaur\\CentaurYesAttack1.wav",false,true,true,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(gg_snd_CentaurYesAttack1,"CentaurYesAttack")
call SetSoundDuration(gg_snd_CentaurYesAttack1,1320)
set gg_snd_U08Archimonde19=CreateSound("Sound\\Dialogue\\UndeadCampaign\\Undead08\\U08Archimonde19.mp3",false,false,false,10,10,"HeroAcksEAX")
call SetSoundParamsFromLabel(gg_snd_U08Archimonde19,"U08Archimonde19")
call SetSoundDuration(gg_snd_U08Archimonde19,7549)
call SetSoundVolume(gg_snd_U08Archimonde19,127)
call SetSoundPitch(gg_snd_U08Archimonde19,0.9)
set gg_snd_GameFound=CreateSound("Sound\\Interface\\GameFound.wav",false,false,false,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(gg_snd_GameFound,"GameFound")
call SetSoundDuration(gg_snd_GameFound,7488)
set gg_snd_NewTournament=CreateSound("Sound\\Interface\\NewTournament.wav",false,false,false,10,10,"")
call SetSoundParamsFromLabel(gg_snd_NewTournament,"NewTournament")
call SetSoundDuration(gg_snd_NewTournament,7988)
set gg_snd_Feedback=CreateSound("Abilities\\Spells\\Human\\Feedback\\Feedback.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(gg_snd_Feedback,"Feedback")
call SetSoundDuration(gg_snd_Feedback,1222)
set gg_snd_SoulGem=CreateSound("Abilities\\Spells\\Items\\AIso\\SoulGem.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(gg_snd_SoulGem,"SoulGem")
call SetSoundDuration(gg_snd_SoulGem,4474)
set gg_snd_StampedeCaster1=CreateSound("Abilities\\Spells\\Other\\Stampede\\StampedeCaster1.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(gg_snd_StampedeCaster1,"StampedeCast")
call SetSoundDuration(gg_snd_StampedeCaster1,2670)
set gg_snd_DivineShield=CreateSound("Abilities\\Spells\\Human\\DivineShield\\DivineShield.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(gg_snd_DivineShield,"DivineShield")
call SetSoundDuration(gg_snd_DivineShield,1955)
call SetSoundPitch(gg_snd_DivineShield,0.6)
set gg_snd_SpiritWalkerMorph=CreateSound("Abilities\\Spells\\Orc\\EtherealForm\\SpiritWalkerMorph.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(gg_snd_SpiritWalkerMorph,"SpiritwalkerMorph")
call SetSoundDuration(gg_snd_SpiritWalkerMorph,2461)
call SetSoundPitch(gg_snd_SpiritWalkerMorph,0.9)
set gg_snd_ManaShieldCaster1=CreateSound("Abilities\\Spells\\Human\\ManaShield\\ManaShieldCaster1.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(gg_snd_ManaShieldCaster1,"ManaShieldCastSound")
call SetSoundDuration(gg_snd_ManaShieldCaster1,2554)
set gg_snd_BoatAttack12=CreateSound("Abilities\\Weapons\\BoatMissile\\BoatAttack1.wav",false,true,true,10,10,"MissilesEAX")
call SetSoundParamsFromLabel(gg_snd_BoatAttack12,"BoatMissileLaunch")
call SetSoundDuration(gg_snd_BoatAttack12,1944)
call SetSoundPitch(gg_snd_BoatAttack12,2.0)
set gg_snd_GyrocopterPissed2=CreateSound("Units\\Human\\Gyrocopter\\GyrocopterPissed2.wav",false,true,true,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(gg_snd_GyrocopterPissed2,"GyrocopterPissed")
call SetSoundDuration(gg_snd_GyrocopterPissed2,2757)
set gg_snd_GyrocopterWarcry1=CreateSound("Units\\Human\\Gyrocopter\\GyrocopterWarcry1.wav",false,true,true,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(gg_snd_GyrocopterWarcry1,"GyrocopterWarcry")
call SetSoundDuration(gg_snd_GyrocopterWarcry1,4161)
set gg_snd_GyrocopterPissed5=CreateSound("Units\\Human\\Gyrocopter\\GyrocopterPissed5.wav",false,true,true,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(gg_snd_GyrocopterPissed5,"GyrocopterPissed")
call SetSoundDuration(gg_snd_GyrocopterPissed5,3117)
set gg_snd_GyrocopterPissed1=CreateSound("Units\\Human\\Gyrocopter\\GyrocopterPissed1.wav",false,true,true,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(gg_snd_GyrocopterPissed1,"GyrocopterPissed")
call SetSoundDuration(gg_snd_GyrocopterPissed1,3913)
set gg_snd_PocketFactoryBirth=CreateSound("Units\\Creeps\\HeroTinkerFactory\\PocketFactoryBirth.wav",false,true,true,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(gg_snd_PocketFactoryBirth,"PocketFactoryBirth")
call SetSoundDuration(gg_snd_PocketFactoryBirth,2669)
set gg_snd_AncestralGuardianHit1=CreateSound("Abilities\\Weapons\\AncestralGuardianMissile\\AncestralGuardianHit1.wav",false,true,true,10,10,"MissilesEAX")
call SetSoundParamsFromLabel(gg_snd_AncestralGuardianHit1,"AncestralGuardianMissileHit")
call SetSoundDuration(gg_snd_AncestralGuardianHit1,1654)
set gg_snd_Incinerate1=CreateSound("Abilities\\Spells\\Other\\Incinerate\\Incinerate1.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(gg_snd_Incinerate1,"IncinerateDeath")
call SetSoundDuration(gg_snd_Incinerate1,2717)
set gg_snd_CarrionSwarmDamage2=CreateSound("Abilities\\Spells\\Undead\\CarrionSwarm\\CarrionSwarmDamage2.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(gg_snd_CarrionSwarmDamage2,"CarrionSwarmDamage")
call SetSoundDuration(gg_snd_CarrionSwarmDamage2,1602)
set gg_snd_MetalHeavySliceMetal3=CreateSound("Sound\\Units\\Combat\\MetalHeavySliceMetal3.wav",false,true,true,10,10,"CombatSoundsEAX")
call SetSoundParamsFromLabel(gg_snd_MetalHeavySliceMetal3,"MetalHeavySliceMetal")
call SetSoundDuration(gg_snd_MetalHeavySliceMetal3,933)
set gg_snd_MetalHeavyChopMetal3=CreateSound("Sound\\Units\\Combat\\MetalHeavyChopMetal3.wav",false,true,true,10,10,"CombatSoundsEAX")
call SetSoundParamsFromLabel(gg_snd_MetalHeavyChopMetal3,"MetalHeavyChopMetal")
call SetSoundDuration(gg_snd_MetalHeavyChopMetal3,971)
set gg_snd_ShandrisYesAttack1=CreateSound("Units\\NightElf\\Shandris\\ShandrisYesAttack1.wav",false,true,true,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(gg_snd_ShandrisYesAttack1,"ShandrisYesAttack")
call SetSoundDuration(gg_snd_ShandrisYesAttack1,1637)
set gg_snd_ShimmeringPortalBirth=CreateSound("Sound\\Ambient\\DoodadEffects\\ShimmeringPortalBirth.wav",false,true,true,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(gg_snd_ShimmeringPortalBirth,"ShimmeringPortalBirth")
call SetSoundDuration(gg_snd_ShimmeringPortalBirth,8529)
set gg_snd_ShimmeringPortalDeath=CreateSound("Sound\\Ambient\\DoodadEffects\\ShimmeringPortalDeath.wav",false,true,true,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(gg_snd_ShimmeringPortalDeath,"ShimmeringPortalDeath")
call SetSoundDuration(gg_snd_ShimmeringPortalDeath,4783)
set gg_snd_MirrorImage=CreateSound("Abilities\\Spells\\Orc\\MirrorImage\\MirrorImage.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(gg_snd_MirrorImage,"MirrorImage")
call SetSoundDuration(gg_snd_MirrorImage,1756)
set gg_snd_MirrorImageDeath=CreateSound("Abilities\\Spells\\Orc\\MirrorImage\\MirrorImageDeath.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(gg_snd_MirrorImageDeath,"MirrorImageDeath")
call SetSoundDuration(gg_snd_MirrorImageDeath,2040)
set gg_snd_TyrandePissed5=CreateSound("Units\\NightElf\\Tyrande\\TyrandePissed5.wav",false,true,true,10,10,"HeroAcksEAX")
call SetSoundParamsFromLabel(gg_snd_TyrandePissed5,"TyrandePissed")
call SetSoundDuration(gg_snd_TyrandePissed5,3387)
set gg_snd_ThunderClapCaster=CreateSound("Abilities\\Spells\\Human\\ThunderClap\\ThunderClapCaster.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(gg_snd_ThunderClapCaster,"ThunderClap")
call SetSoundDuration(gg_snd_ThunderClapCaster,3451)
set gg_snd_LightningBolt=CreateSound("Abilities\\Spells\\Orc\\LightningBolt\\LightningBolt.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(gg_snd_LightningBolt,"LightningBolt")
call SetSoundDuration(gg_snd_LightningBolt,2136)
set gg_snd_HealingWave=CreateSound("Abilities\\Spells\\Orc\\HealingWave\\HealingWave.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(gg_snd_HealingWave,"HealingWaveTarget")
call SetSoundDuration(gg_snd_HealingWave,2229)
set gg_snd_ResurrectTarget=CreateSound("Abilities\\Spells\\Human\\Resurrect\\ResurrectTarget.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(gg_snd_ResurrectTarget,"Resurrect")
call SetSoundDuration(gg_snd_ResurrectTarget,3506)
set gg_snd_TirionShield=CreateSound("Abilities\\Spells\\Human\\DivineShield\\DivineShield.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(gg_snd_TirionShield,"DivineShield")
call SetSoundDuration(gg_snd_TirionShield,1955)
set gg_snd_ArrowAttack1=CreateSound("Abilities\\Weapons\\Arrow\\ArrowAttack1.wav",false,true,true,10,10,"MissilesEAX")
call SetSoundParamsFromLabel(gg_snd_ArrowAttack1,"ArrowLaunch")
call SetSoundDuration(gg_snd_ArrowAttack1,672)
set gg_snd_KelThuzadWhat3=CreateSound("Units\\Undead\\KelThuzadLich\\KelThuzadWhat3.wav",false,true,true,10,10,"HeroAcksEAX")
call SetSoundParamsFromLabel(gg_snd_KelThuzadWhat3,"KelThuzadLichWhat")
call SetSoundDuration(gg_snd_KelThuzadWhat3,1609)
set gg_snd_MuradinYesAttack2=CreateSound("Units\\Human\\Muradin\\MuradinYesAttack2.wav",false,true,true,10,10,"HeroAcksEAX")
call SetSoundParamsFromLabel(gg_snd_MuradinYesAttack2,"MuradinYesAttack")
call SetSoundDuration(gg_snd_MuradinYesAttack2,1631)
set gg_snd_HeroMountainKingPissed6=CreateSound("Units\\Human\\HeroMountainKing\\HeroMountainKingPissed6.wav",false,true,true,10,10,"HeroAcksEAX")
call SetSoundParamsFromLabel(gg_snd_HeroMountainKingPissed6,"HeroMountainKingPissed")
call SetSoundDuration(gg_snd_HeroMountainKingPissed6,932)
set gg_snd_SylvanasPissed3=CreateSound("Units\\Creeps\\SylvanusWindrunner\\SylvanasPissed3.wav",false,true,true,10,10,"HeroAcksEAX")
call SetSoundParamsFromLabel(gg_snd_SylvanasPissed3,"SylvanusPissed")
call SetSoundDuration(gg_snd_SylvanasPissed3,1869)
set gg_snd_ArrowAttack101=CreateSound("Abilities\\Weapons\\Arrow\\ArrowAttack1.wav",false,true,true,10,10,"MissilesEAX")
call SetSoundParamsFromLabel(gg_snd_ArrowAttack101,"ArrowLaunch")
call SetSoundDuration(gg_snd_ArrowAttack101,672)
set gg_snd_CentaurDeath=CreateSound("Units\\Creeps\\Centaur\\CentaurDeath.wav",false,true,true,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(gg_snd_CentaurDeath,"CentaurDeath")
call SetSoundDuration(gg_snd_CentaurDeath,2006)
set gg_snd_AssassinDeath1=CreateSound("Units\\Creeps\\Assassin\\AssassinDeath1.wav",false,true,true,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(gg_snd_AssassinDeath1,"AssassinDeath")
call SetSoundDuration(gg_snd_AssassinDeath1,1440)
set gg_snd_RestorationPotion=CreateSound("Abilities\\Spells\\Items\\AIre\\RestorationPotion.wav",false,true,true,10,10,"SpellsEAX")
call SetSoundParamsFromLabel(gg_snd_RestorationPotion,"RestorationPotion")
call SetSoundDuration(gg_snd_RestorationPotion,3158)
set gg_snd_ArachnathidWhat1=CreateSound("Units\\Creeps\\Archnathid\\ArachnathidWhat1.wav",false,true,true,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(gg_snd_ArachnathidWhat1,"ArachnathidWhat")
call SetSoundDuration(gg_snd_ArachnathidWhat1,975)
call SetSoundChannel(gg_snd_ArachnathidWhat1,0)
call SetSoundDistances(gg_snd_ArachnathidWhat1,2000.0,10000.0)
call SetSoundDistanceCutoff(gg_snd_ArachnathidWhat1,3000.0)
set gg_snd_BlueFireBurstLoop=CreateSound("Sound\\Ambient\\DoodadEffects\\BlueFireBurstLoop.wav",false,true,true,10,10,"DefaultEAXON")
call SetSoundParamsFromLabel(gg_snd_BlueFireBurstLoop,"BlueFireLoop")
call SetSoundDuration(gg_snd_BlueFireBurstLoop,4000)
endfunction

//===========================================================================
function InitTrig_Init_sounds takes nothing returns nothing
    set gg_trg_Init_sounds = CreateTrigger(  )
    call TriggerAddAction( gg_trg_Init_sounds, function Trig_Init_sounds_Actions )
endfunction

