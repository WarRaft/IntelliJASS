function Trig_Aegwynn_Starts_Func001Func010001003001 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(3))==true)
    endfunction
    function Trig_Aegwynn_Starts_Func001Func010001003002 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_TOWNHALL)==false)
    endfunction
    function Trig_Aegwynn_Starts_Func001Func010001003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Aegwynn_Starts_Func001Func010001003001(),Trig_Aegwynn_Starts_Func001Func010001003002())
    endfunction
    function Trig_Aegwynn_Starts_Func001Func010A takes nothing returns nothing
    call UnitDamageTargetBJ(gg_unit_Ewar_0489,GetEnumUnit(),((I2R(GetUnitAbilityLevelSwapped('A026',gg_unit_Ewar_0489))*50.00)+(I2R(GetHeroStatBJ(bj_HEROSTAT_INT,gg_unit_Ewar_0489,true))*0.80)),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    endfunction
    function Trig_Aegwynn_Starts_Func001Func012Func010001003001 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(3))==true)
    endfunction
    function Trig_Aegwynn_Starts_Func001Func012Func010001003002 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_GROUND)==true)
    endfunction
    function Trig_Aegwynn_Starts_Func001Func012Func010001003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Aegwynn_Starts_Func001Func012Func010001003001(),Trig_Aegwynn_Starts_Func001Func012Func010001003002())
    endfunction
    function Trig_Aegwynn_Starts_Func001Func012Func010A takes nothing returns nothing
    call UnitDamageTargetBJ(gg_unit_Ewar_0489,GetEnumUnit(),(I2R(GetHeroStatBJ(bj_HEROSTAT_INT,gg_unit_Ewar_0489,true))*1.50),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    endfunction
    function Trig_Aegwynn_Starts_Func001Func012Func012Func035002003001001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false)
    endfunction
    function Trig_Aegwynn_Starts_Func001Func012Func012Func035002003001002 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(3))==true)
    endfunction
    function Trig_Aegwynn_Starts_Func001Func012Func012Func035002003001 takes nothing returns boolean
    return GetBooleanAnd(Trig_Aegwynn_Starts_Func001Func012Func012Func035002003001001(),Trig_Aegwynn_Starts_Func001Func012Func012Func035002003001002())
    endfunction
    function Trig_Aegwynn_Starts_Func001Func012Func012Func035002003002001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_DEAD)==false)
    endfunction
    function Trig_Aegwynn_Starts_Func001Func012Func012Func035002003002002 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_FLYING)==false)
    endfunction
    function Trig_Aegwynn_Starts_Func001Func012Func012Func035002003002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Aegwynn_Starts_Func001Func012Func012Func035002003002001(),Trig_Aegwynn_Starts_Func001Func012Func012Func035002003002002())
    endfunction
    function Trig_Aegwynn_Starts_Func001Func012Func012Func035002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Aegwynn_Starts_Func001Func012Func012Func035002003001(),Trig_Aegwynn_Starts_Func001Func012Func012Func035002003002())
    endfunction
    function Trig_Aegwynn_Starts_Func001Func012Func012Func036A takes nothing returns nothing
    call UnitAddAbilityBJ('A02G',GetEnumUnit())
    endfunction
    function Trig_Aegwynn_Starts_Func001Func012Func012Func039A takes nothing returns nothing
    call UnitDamageTargetBJ(gg_unit_Ewar_0489,GetEnumUnit(),((I2R(GetUnitAbilityLevelSwapped('A026',gg_unit_Ewar_0489))*40.00)+(I2R(GetHeroStatBJ(bj_HEROSTAT_INT,gg_unit_Ewar_0489,true))*0.40)),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    endfunction
    function Trig_Aegwynn_Starts_Func001Func012Func012Func047002 takes nothing returns nothing
    call UnitRemoveAbilityBJ('A02G',GetEnumUnit())
    endfunction
    function Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003Func010001003001 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(3))==true)
    endfunction
    function Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003Func010001003002 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_TOWNHALL)==false)
    endfunction
    function Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003Func010001003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003Func010001003001(),Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003Func010001003002())
    endfunction
    function Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003Func010A takes nothing returns nothing
    call UnitDamageTargetBJ(gg_unit_Ewar_0489,GetEnumUnit(),((I2R(GetUnitAbilityLevelSwapped('A026',gg_unit_Ewar_0489))*50.00)+(I2R(GetHeroStatBJ(bj_HEROSTAT_INT,gg_unit_Ewar_0489,true))*0.80)),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    endfunction
    function Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003Func015Func007001003001 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(3))==true)
    endfunction
    function Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003Func015Func007001003002 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_GROUND)==true)
    endfunction
    function Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003Func015Func007001003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003Func015Func007001003001(),Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003Func015Func007001003002())
    endfunction
    function Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003Func015Func007A takes nothing returns nothing
    call UnitDamageTargetBJ(gg_unit_Ewar_0489,GetEnumUnit(),(I2R(GetHeroStatBJ(bj_HEROSTAT_INT,gg_unit_Ewar_0489,true))*1.50),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    endfunction
    function Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003Func015Func013Func034002003001001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false)
    endfunction
    function Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003Func015Func013Func034002003001002 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(3))==true)
    endfunction
    function Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003Func015Func013Func034002003001 takes nothing returns boolean
    return GetBooleanAnd(Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003Func015Func013Func034002003001001(),Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003Func015Func013Func034002003001002())
    endfunction
    function Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003Func015Func013Func034002003002001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_DEAD)==false)
    endfunction
    function Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003Func015Func013Func034002003002002 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_FLYING)==false)
    endfunction
    function Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003Func015Func013Func034002003002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003Func015Func013Func034002003002001(),Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003Func015Func013Func034002003002002())
    endfunction
    function Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003Func015Func013Func034002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003Func015Func013Func034002003001(),Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003Func015Func013Func034002003002())
    endfunction
    function Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003Func015Func013Func035A takes nothing returns nothing
    call UnitAddAbilityBJ('A02G',GetEnumUnit())
    endfunction
    function Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003Func015Func013Func038A takes nothing returns nothing
    call UnitDamageTargetBJ(gg_unit_Ewar_0489,GetEnumUnit(),((I2R(GetUnitAbilityLevelSwapped('A026',gg_unit_Ewar_0489))*40.00)+(I2R(GetHeroStatBJ(bj_HEROSTAT_INT,gg_unit_Ewar_0489,true))*0.40)),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    endfunction
    function Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003Func015Func013Func046002 takes nothing returns nothing
    call UnitRemoveAbilityBJ('A02G',GetEnumUnit())
    endfunction
    function Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003Func015Func013C takes nothing returns boolean
    if(not(udg_Mimic==3))then
    return false
    endif
    return true
    endfunction
    function Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003Func015C takes nothing returns boolean
    if(not(udg_Mimic==2))then
    return false
    endif
    return true
    endfunction
    function Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003C takes nothing returns boolean
    if(not(udg_Mimic==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Aegwynn_Starts_Func001Func012Func012Func050C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='ANsw'))then
    return false
    endif
    return true
    endfunction
    function Trig_Aegwynn_Starts_Func001Func012Func012C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='S005'))then
    return false
    endif
    return true
    endfunction
    function Trig_Aegwynn_Starts_Func001Func012C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='ACcv'))then
    return false
    endif
    return true
    endfunction
    function Trig_Aegwynn_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A026'))then
    return false
    endif
    return true
    endfunction
    function Trig_Aegwynn_Starts_Actions takes nothing returns nothing
    if(Trig_Aegwynn_Starts_Func001C())then
    call RemoveLocation(udg_CelestialPoint)
    call RemoveLocation(udg_AegwynnCasterPoint)
    set udg_CelestialPoint=GetSpellTargetLoc()
    set udg_AegwynnCasterPoint=GetUnitLoc(GetTriggerUnit())
    set udg_Mimic=1
    call AddSpecialEffectLocBJ(udg_CelestialPoint,"Abilities\\Spells\\NightElf\\Starfall\\StarfallTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call PolledWait(0.75)
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsInRangeOfLocMatching(165.00,udg_CelestialPoint,Condition(function Trig_Aegwynn_Starts_Func001Func010001003)),function Trig_Aegwynn_Starts_Func001Func010A)
    else
    if(Trig_Aegwynn_Starts_Func001Func012C())then
    call RemoveLocation(udg_AstralPoint)
    call RemoveLocation(udg_AegwynnCasterPoint)
    set udg_TempPoint=GetSpellTargetLoc()
    set udg_AegwynnCasterPoint=GetUnitLoc(GetTriggerUnit())
    set udg_Mimic=2
    set udg_AstralPoint=PolarProjectionBJ(udg_AegwynnCasterPoint,700.00,(AngleBetweenPoints(udg_TempPoint,udg_AegwynnCasterPoint)-180.00))
    call RemoveLocation(udg_TempPoint)
    call PolledWait(0.80)
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsInRangeOfLocMatching(95.00,udg_AstralPoint,Condition(function Trig_Aegwynn_Starts_Func001Func012Func010001003)),function Trig_Aegwynn_Starts_Func001Func012Func010A)
    else
    if(Trig_Aegwynn_Starts_Func001Func012Func012C())then
    call RemoveLocation(udg_StellarPoint)
    call RemoveLocation(udg_StellarPoint2)
    call RemoveLocation(udg_AegwynnCasterPoint)
    set udg_StellarPoint=GetSpellTargetLoc()
    set udg_AegwynnCasterPoint=GetUnitLoc(GetTriggerUnit())
    set udg_Mimic=3
    call AddSpecialEffectLocBJ(PolarProjectionBJ(udg_StellarPoint,180.00,72.00),"StarfallTarget.mdx")
    set udg_StellarStar1=GetLastCreatedEffectBJ()
    call AddSpecialEffectLocBJ(PolarProjectionBJ(udg_StellarPoint,180.00,144.00),"StarfallTarget.mdx")
    set udg_StellarStar2=GetLastCreatedEffectBJ()
    call AddSpecialEffectLocBJ(PolarProjectionBJ(udg_StellarPoint,180.00,216.00),"StarfallTarget.mdx")
    set udg_StellarStar3=GetLastCreatedEffectBJ()
    call AddSpecialEffectLocBJ(PolarProjectionBJ(udg_StellarPoint,180.00,288.00),"StarfallTarget.mdx")
    set udg_StellarStar4=GetLastCreatedEffectBJ()
    call AddSpecialEffectLocBJ(PolarProjectionBJ(udg_StellarPoint,180.00,360.00),"StarfallTarget.mdx")
    set udg_StellarStar5=GetLastCreatedEffectBJ()
    call AddSpecialEffectLocBJ(udg_StellarPoint,"StarfallTarget.mdx")
    set udg_StellarStar6=GetLastCreatedEffectBJ()
    call PolledWait(1.20)
    call DestroyEffect(udg_StellarStar1)
    call DestroyEffect(udg_StellarStar2)
    call DestroyEffect(udg_StellarStar3)
    call DestroyEffect(udg_StellarStar4)
    call DestroyEffect(udg_StellarStar5)
    call AddSpecialEffectLocBJ(PolarProjectionBJ(udg_StellarPoint,180.00,72.00),"StarfallTarget.mdx")
    set udg_StellarStar1=GetLastCreatedEffectBJ()
    call AddSpecialEffectLocBJ(PolarProjectionBJ(udg_StellarPoint,180.00,144.00),"StarfallTarget.mdx")
    set udg_StellarStar2=GetLastCreatedEffectBJ()
    call AddSpecialEffectLocBJ(PolarProjectionBJ(udg_StellarPoint,180.00,216.00),"StarfallTarget.mdx")
    set udg_StellarStar3=GetLastCreatedEffectBJ()
    call AddSpecialEffectLocBJ(PolarProjectionBJ(udg_StellarPoint,180.00,288.00),"StarfallTarget.mdx")
    set udg_StellarStar4=GetLastCreatedEffectBJ()
    call AddSpecialEffectLocBJ(PolarProjectionBJ(udg_StellarPoint,180.00,360.00),"StarfallTarget.mdx")
    set udg_StellarStar5=GetLastCreatedEffectBJ()
    set udg_StellarGroup=GetUnitsInRangeOfLocMatching(280.00,udg_StellarPoint,Condition(function Trig_Aegwynn_Starts_Func001Func012Func012Func035002003))
    call ForGroupBJ(udg_StellarGroup,function Trig_Aegwynn_Starts_Func001Func012Func012Func036A)
    call EnableTrigger(gg_trg_Stellar_Recall_Move)
    call PolledWait(1.00)
    call ForGroupBJ(udg_StellarGroup,function Trig_Aegwynn_Starts_Func001Func012Func012Func039A)
    call DestroyEffect(udg_StellarStar1)
    call DestroyEffect(udg_StellarStar2)
    call DestroyEffect(udg_StellarStar3)
    call DestroyEffect(udg_StellarStar4)
    call DestroyEffect(udg_StellarStar5)
    call DestroyEffect(udg_StellarStar6)
    call DisableTrigger(gg_trg_Stellar_Recall_Move)
    call ForGroupBJ(udg_StellarGroup,function Trig_Aegwynn_Starts_Func001Func012Func012Func047002)
    call DestroyGroup(udg_StellarGroup)
    else
    if(Trig_Aegwynn_Starts_Func001Func012Func012Func050C())then
    if(Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003C())then
    call PlaySoundAtPointBJ(gg_snd_MirrorImage,100,udg_AegwynnCasterPoint,0)
    call CreateNUnitsAtLoc(1,'edry',Player(3),udg_AegwynnCasterPoint,AngleBetweenPoints(udg_AegwynnCasterPoint,udg_CelestialPoint))
    set udg_AegwynnCaster=GetLastCreatedUnit()
    call SetUnitAnimation(udg_AegwynnCaster,"spell")
    call AddSpecialEffectLocBJ(udg_CelestialPoint,"Abilities\\Spells\\NightElf\\Starfall\\StarfallTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call PolledWait(0.75)
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsInRangeOfLocMatching(165.00,udg_CelestialPoint,Condition(function Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003Func010001003)),function Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003Func010A)
    call PolledWait(0.30)
    call AddSpecialEffectLocBJ(udg_AegwynnCasterPoint,"Abilities\\Spells\\Orc\\MirrorImage\\MirrorImageDeathCaster.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call RemoveUnit(udg_AegwynnCaster)
    else
    if(Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003Func015C())then
    call PlaySoundAtPointBJ(gg_snd_MirrorImage,100,udg_AegwynnCasterPoint,0)
    call CreateNUnitsAtLoc(1,'edry',Player(3),udg_AegwynnCasterPoint,AngleBetweenPoints(udg_AegwynnCasterPoint,udg_AstralPoint))
    set udg_AegwynnCaster=GetLastCreatedUnit()
    call IssuePointOrderLoc(GetLastCreatedUnit(),"carrionswarm",udg_AstralPoint)
    call PolledWait(0.80)
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsInRangeOfLocMatching(95.00,udg_AstralPoint,Condition(function Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003Func015Func007001003)),function Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003Func015Func007A)
    call PolledWait(0.30)
    call AddSpecialEffectLocBJ(udg_AegwynnCasterPoint,"Abilities\\Spells\\Orc\\MirrorImage\\MirrorImageDeathCaster.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call RemoveUnit(udg_AegwynnCaster)
    else
    if(Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003Func015Func013C())then
    call PlaySoundAtPointBJ(gg_snd_MirrorImage,100,udg_AegwynnCasterPoint,0)
    call CreateNUnitsAtLoc(1,'edry',Player(3),udg_AegwynnCasterPoint,AngleBetweenPoints(udg_AegwynnCasterPoint,udg_AstralPoint))
    set udg_AegwynnCaster=GetLastCreatedUnit()
    set udg_StellarPoint2=udg_StellarPoint
    call SetUnitAnimation(udg_AegwynnCaster,"spell")
    call AddSpecialEffectLocBJ(PolarProjectionBJ(udg_StellarPoint2,180.00,72.00),"StarfallTarget.mdx")
    set udg_StellarStar7=GetLastCreatedEffectBJ()
    call AddSpecialEffectLocBJ(PolarProjectionBJ(udg_StellarPoint2,180.00,144.00),"StarfallTarget.mdx")
    set udg_StellarStar8=GetLastCreatedEffectBJ()
    call AddSpecialEffectLocBJ(PolarProjectionBJ(udg_StellarPoint2,180.00,216.00),"StarfallTarget.mdx")
    set udg_StellarStar9=GetLastCreatedEffectBJ()
    call AddSpecialEffectLocBJ(PolarProjectionBJ(udg_StellarPoint2,180.00,288.00),"StarfallTarget.mdx")
    set udg_StellarStar10=GetLastCreatedEffectBJ()
    call AddSpecialEffectLocBJ(PolarProjectionBJ(udg_StellarPoint2,180.00,360.00),"StarfallTarget.mdx")
    set udg_StellarStar11=GetLastCreatedEffectBJ()
    call AddSpecialEffectLocBJ(udg_StellarPoint2,"StarfallTarget.mdx")
    set udg_StellarStar12=GetLastCreatedEffectBJ()
    call PolledWait(1.20)
    call DestroyEffect(udg_StellarStar7)
    call DestroyEffect(udg_StellarStar8)
    call DestroyEffect(udg_StellarStar9)
    call DestroyEffect(udg_StellarStar10)
    call DestroyEffect(udg_StellarStar11)
    call AddSpecialEffectLocBJ(PolarProjectionBJ(udg_StellarPoint2,180.00,72.00),"StarfallTarget.mdx")
    set udg_StellarStar7=GetLastCreatedEffectBJ()
    call AddSpecialEffectLocBJ(PolarProjectionBJ(udg_StellarPoint2,180.00,144.00),"StarfallTarget.mdx")
    set udg_StellarStar8=GetLastCreatedEffectBJ()
    call AddSpecialEffectLocBJ(PolarProjectionBJ(udg_StellarPoint2,180.00,216.00),"StarfallTarget.mdx")
    set udg_StellarStar9=GetLastCreatedEffectBJ()
    call AddSpecialEffectLocBJ(PolarProjectionBJ(udg_StellarPoint2,180.00,288.00),"StarfallTarget.mdx")
    set udg_StellarStar10=GetLastCreatedEffectBJ()
    call AddSpecialEffectLocBJ(PolarProjectionBJ(udg_StellarPoint2,180.00,360.00),"StarfallTarget.mdx")
    set udg_StellarStar11=GetLastCreatedEffectBJ()
    set udg_StellarGroup2=GetUnitsInRangeOfLocMatching(280.00,udg_StellarPoint,Condition(function Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003Func015Func013Func034002003))
    call ForGroupBJ(udg_StellarGroup2,function Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003Func015Func013Func035A)
    call EnableTrigger(gg_trg_Stellar_Recall_Mimic_Move)
    call PolledWait(1.00)
    call ForGroupBJ(udg_StellarGroup2,function Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003Func015Func013Func038A)
    call DestroyEffect(udg_StellarStar7)
    call DestroyEffect(udg_StellarStar8)
    call DestroyEffect(udg_StellarStar9)
    call DestroyEffect(udg_StellarStar10)
    call DestroyEffect(udg_StellarStar11)
    call DestroyEffect(udg_StellarStar12)
    call DisableTrigger(gg_trg_Stellar_Recall_Mimic_Move)
    call ForGroupBJ(udg_StellarGroup2,function Trig_Aegwynn_Starts_Func001Func012Func012Func050Func003Func015Func013Func046002)
    call DestroyGroup(udg_StellarGroup2)
    call PolledWait(0.30)
    call AddSpecialEffectLocBJ(udg_AegwynnCasterPoint,"Abilities\\Spells\\Orc\\MirrorImage\\MirrorImageDeathCaster.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call RemoveUnit(udg_AegwynnCaster)
    else
    endif
    endif
    endif
    else
    endif
    endif
    endif
    endif
    endfunction
    function InitTrig_Aegwynn_Starts takes nothing returns nothing
    set gg_trg_Aegwynn_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Aegwynn_Starts,function Trig_Aegwynn_Starts_Actions)
    endfunction