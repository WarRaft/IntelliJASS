
    function Trig_Ratso_Starts_Func001Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='Abrf'))then
    return false
    endif
    return true
    endfunction
    function Trig_Ratso_Starts_Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A08B'))then
    return false
    endif
    return true
    endfunction
    function Trig_Ratso_Starts_Func001Func008002003001 takes nothing returns boolean
    return(IsUnitAliveBJ(GetFilterUnit())==true)
    endfunction
    function Trig_Ratso_Starts_Func001Func008002003002 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(9))==true)
    endfunction
    function Trig_Ratso_Starts_Func001Func008002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Ratso_Starts_Func001Func008002003001(),Trig_Ratso_Starts_Func001Func008002003002())
    endfunction
    function Trig_Ratso_Starts_Func001Func009A takes nothing returns nothing
    call UnitDamageTargetBJ(gg_unit_Ntin_0477,GetEnumUnit(),(((I2R(GetUnitAbilityLevelSwapped('A0DS',gg_unit_Ntin_0477))*50.00)+70.00)+(I2R(GetHeroStatBJ(bj_HEROSTAT_INT,gg_unit_Ntin_0477,true))*1.0)),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    call CreateNUnitsAtLoc(1,'o008',GetOwningPlayer(gg_unit_Ntin_0477),udg_MegawattTarget,bj_UNIT_FACING)
    call UnitAddAbilityBJ('A06P',GetLastCreatedUnit())
    call SetUnitAbilityLevelSwapped('A06P',GetLastCreatedUnit(),GetUnitAbilityLevelSwapped('A0DS',gg_unit_Ntin_0477))
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call IssueTargetOrder(GetLastCreatedUnit(),"acidbomb",GetEnumUnit())
    endfunction
    function Trig_Ratso_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A0DS'))then
    return false
    endif
    return true
    endfunction
    function Trig_Ratso_Starts_Actions takes nothing returns nothing
    if(Trig_Ratso_Starts_Func001C())then
    set udg_MegawattCaster=GetUnitLoc(gg_unit_Ntin_0477)
    set udg_MegawattTarget=GetSpellTargetLoc()
    call CreateNUnitsAtLoc(1,'nowb',GetOwningPlayer(gg_unit_Ntin_0477),udg_MegawattCaster,bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call IssuePointOrderLoc(GetLastCreatedUnit(),"attackground",udg_MegawattTarget)
    call PolledWait((DistanceBetweenPoints(udg_MegawattCaster,udg_MegawattTarget)/ 1800.00))
    set udg_Temp_UnitGroup=GetUnitsInRangeOfLocMatching(225.00,udg_MegawattTarget,Condition(function Trig_Ratso_Starts_Func001Func008002003))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Ratso_Starts_Func001Func009A)
    call RemoveLocation(udg_MegawattCaster)
    call RemoveLocation(udg_MegawattTarget)
    call DestroyGroup(udg_Temp_UnitGroup)
    else
    if(Trig_Ratso_Starts_Func001Func001C())then
    call UnitAddAbilityBJ('A08C',gg_unit_Ntin_0477)
    call PlaySoundOnUnitBJ(gg_snd_ManaShieldCaster1,100,gg_unit_Ntin_0477)
    call PolledWait(6.00)
    call UnitRemoveAbilityBJ('A08C',gg_unit_Ntin_0477)
    else
    if(Trig_Ratso_Starts_Func001Func001Func001C())then
    call UnitMakeAbilityPermanent(GetTriggerUnit(),true,'AEsf')
    call UnitMakeAbilityPermanent(GetTriggerUnit(),true,'AHmt')
    call UnitMakeAbilityPermanent(GetTriggerUnit(),true,'Asbp')
    else
    endif
    endif
    endif
    endfunction
    function InitTrig_Ratso_Starts takes nothing returns nothing
    set gg_trg_Ratso_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Ratso_Starts,function Trig_Ratso_Starts_Actions)
    endfunction