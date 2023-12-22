
    function Trig_Alonsus_Starts_Func001Func001Func006C takes nothing returns boolean
    if(not(((GetUnitStateSwap(UNIT_STATE_MAX_LIFE,GetSpellTargetUnit())-udg_PrayerHealth)*(1.00-((I2R(GetUnitAbilityLevelSwapped('AChv',gg_unit_H01S_0510))*0.15)-0.15)))<udg_AlonsusHealth))then
    return false
    endif
    return true
    endfunction
    function Trig_Alonsus_Starts_Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='AChv'))then
    return false
    endif
    return true
    endfunction
    function Trig_Alonsus_Starts_Func001Func007002003001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false)
    endfunction
    function Trig_Alonsus_Starts_Func001Func007002003002001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_FLYING)==false)
    endfunction
    function Trig_Alonsus_Starts_Func001Func007002003002002 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(8))==true)
    endfunction
    function Trig_Alonsus_Starts_Func001Func007002003002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Alonsus_Starts_Func001Func007002003002001(),Trig_Alonsus_Starts_Func001Func007002003002002())
    endfunction
    function Trig_Alonsus_Starts_Func001Func007002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Alonsus_Starts_Func001Func007002003001(),Trig_Alonsus_Starts_Func001Func007002003002())
    endfunction
    function Trig_Alonsus_Starts_Func001Func008Func001Func003001001 takes nothing returns boolean
    return(IsUnitType(GetEnumUnit(),ConvertUnitType(20))==true)
    endfunction
    function Trig_Alonsus_Starts_Func001Func008Func001Func003001002 takes nothing returns boolean
    return(GetUnitTypeId(GetEnumUnit())=='Ogld')
    endfunction
    function Trig_Alonsus_Starts_Func001Func008Func001Func003001 takes nothing returns boolean
    return GetBooleanOr(Trig_Alonsus_Starts_Func001Func008Func001Func003001001(),Trig_Alonsus_Starts_Func001Func008Func001Func003001002())
    endfunction
    function Trig_Alonsus_Starts_Func001Func008Func001Func003002001 takes nothing returns boolean
    return(GetUnitTypeId(GetEnumUnit())=='oshm')
    endfunction
    function Trig_Alonsus_Starts_Func001Func008Func001Func003002002 takes nothing returns boolean
    return(IsUnitType(GetEnumUnit(),UNIT_TYPE_SUMMONED)==true)
    endfunction
    function Trig_Alonsus_Starts_Func001Func008Func001Func003002 takes nothing returns boolean
    return GetBooleanOr(Trig_Alonsus_Starts_Func001Func008Func001Func003002001(),Trig_Alonsus_Starts_Func001Func008Func001Func003002002())
    endfunction
    function Trig_Alonsus_Starts_Func001Func008Func001C takes nothing returns boolean
    if(not GetBooleanOr(Trig_Alonsus_Starts_Func001Func008Func001Func003001(),Trig_Alonsus_Starts_Func001Func008Func001Func003002()))then
    return false
    endif
    return true
    endfunction
    function Trig_Alonsus_Starts_Func001Func008A takes nothing returns nothing
    if(Trig_Alonsus_Starts_Func001Func008Func001C())then
    call UnitDamageTargetBJ(gg_unit_H01S_0510,GetEnumUnit(),((I2R(GetUnitAbilityLevelSwapped('A07P',gg_unit_H01S_0510))*90.00)+I2R(GetHeroStatBJ(bj_HEROSTAT_INT,gg_unit_H01S_0510,true))),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    else
    call UnitDamageTargetBJ(gg_unit_H01S_0510,GetEnumUnit(),((I2R(GetUnitAbilityLevelSwapped('A07P',gg_unit_H01S_0510))*60.00)+(I2R(GetHeroStatBJ(bj_HEROSTAT_INT,gg_unit_H01S_0510,true))*0.70)),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    endif
    endfunction
    function Trig_Alonsus_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A07P'))then
    return false
    endif
    return true
    endfunction
    function Trig_Alonsus_Starts_Actions takes nothing returns nothing
    if(Trig_Alonsus_Starts_Func001C())then
    set udg_Exorcism=GetSpellTargetLoc()
    call AddSpecialEffectLocBJ(udg_Exorcism,"TheHolyBomb.mdx")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call PolledWait(0.30)
    call PlaySoundAtPointBJ(gg_snd_HolyBolt,100,udg_Exorcism,0)
    set udg_Temp_UnitGroup=GetUnitsInRangeOfLocMatching(255.00,udg_Exorcism,Condition(function Trig_Alonsus_Starts_Func001Func007002003))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Alonsus_Starts_Func001Func008A)
    call DestroyGroup(udg_Temp_UnitGroup)
    call RemoveLocation(udg_Exorcism)
    else
    if(Trig_Alonsus_Starts_Func001Func001C())then
    set udg_AlonsusHealth=GetUnitStateSwap(UNIT_STATE_LIFE,gg_unit_H01S_0510)
    set udg_PrayerHealth=GetUnitStateSwap(UNIT_STATE_LIFE,GetSpellTargetUnit())
    set udg_TempPoint=GetUnitLoc(gg_unit_H01S_0510)
    set udg_TempPoint2=GetUnitLoc(GetSpellTargetUnit())
    if(Trig_Alonsus_Starts_Func001Func001Func006C())then
    call SetUnitLifeBJ(gg_unit_H01S_0510,(udg_AlonsusHealth-((GetUnitStateSwap(UNIT_STATE_MAX_LIFE,GetSpellTargetUnit())-udg_PrayerHealth)*(1.00-((I2R(GetUnitAbilityLevelSwapped('AChv',gg_unit_H01S_0510))*0.15)-0.15)))))
    call SetUnitLifePercentBJ(GetSpellTargetUnit(),100)
    else
    call SetUnitLifeBJ(GetSpellTargetUnit(),(udg_PrayerHealth+udg_AlonsusHealth))
    call SetUnitLifeBJ(gg_unit_H01S_0510,1.00)
    endif
    call AddSpecialEffectLocBJ(udg_TempPoint,"Abilities\\Spells\\Human\\Resurrect\\ResurrectTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call AddSpecialEffectLocBJ(udg_TempPoint2,"Abilities\\Spells\\Human\\Resurrect\\ResurrectTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call RemoveLocation(udg_TempPoint)
    call RemoveLocation(udg_TempPoint2)
    else
    endif
    endif
    endfunction
    function InitTrig_Alonsus_Starts takes nothing returns nothing
    set gg_trg_Alonsus_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Alonsus_Starts,function Trig_Alonsus_Starts_Actions)
    endfunction