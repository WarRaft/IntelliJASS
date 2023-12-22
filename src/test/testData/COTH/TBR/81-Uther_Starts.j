
    function Trig_Uther_Starts_Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='AIdi'))then
    return false
    endif
    return true
    endfunction
    function Trig_Uther_Starts_Func001Func008002003001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_TOWNHALL)==false)
    endfunction
    function Trig_Uther_Starts_Func001Func008002003002001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false)
    endfunction
    function Trig_Uther_Starts_Func001Func008002003002002 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(8))==true)
    endfunction
    function Trig_Uther_Starts_Func001Func008002003002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Uther_Starts_Func001Func008002003002001(),Trig_Uther_Starts_Func001Func008002003002002())
    endfunction
    function Trig_Uther_Starts_Func001Func008002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Uther_Starts_Func001Func008002003001(),Trig_Uther_Starts_Func001Func008002003002())
    endfunction
    function Trig_Uther_Starts_Func001Func009A takes nothing returns nothing
    call UnitDamageTargetBJ(gg_unit_Hmgd_0509,GetEnumUnit(),(I2R(GetUnitAbilityLevelSwapped('A0E3',gg_unit_Hmgd_0509))*75.00),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    call CreateNUnitsAtLoc(1,'o008',Player(8),udg_SearingLightTarget,bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call UnitAddAbilityBJ('A03N',GetLastCreatedUnit())
    call SetUnitAbilityLevelSwapped('A03N',GetLastCreatedUnit(),GetUnitAbilityLevelSwapped('A0E3',gg_unit_Hmgd_0509))
    call IssueTargetOrder(GetLastCreatedUnit(),"acidbomb",GetEnumUnit())
    endfunction
    function Trig_Uther_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A0E3'))then
    return false
    endif
    return true
    endfunction
    function Trig_Uther_Starts_Actions takes nothing returns nothing
    if(Trig_Uther_Starts_Func001C())then
    set udg_SearingLightCaster=GetUnitLoc(gg_unit_Hmgd_0509)
    set udg_SearingLightTarget=GetSpellTargetLoc()
    call CreateNUnitsAtLoc(1,'nzom',Player(8),udg_SearingLightCaster,bj_UNIT_FACING)
    call IssuePointOrderLoc(GetLastCreatedUnit(),"attackground",udg_SearingLightTarget)
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call PolledWait((DistanceBetweenPoints(udg_SearingLightCaster,udg_SearingLightTarget)/ 1000.00))
    set udg_Temp_UnitGroup=GetUnitsInRangeOfLocMatching(240.00,udg_SearingLightTarget,Condition(function Trig_Uther_Starts_Func001Func008002003))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Uther_Starts_Func001Func009A)
    call RemoveLocation(udg_SearingLightCaster)
    call RemoveLocation(udg_SearingLightTarget)
    call DestroyGroup(udg_Temp_UnitGroup)
    else
    if(Trig_Uther_Starts_Func001Func001C())then
    set udg_LightPoint=GetSpellTargetLoc()
    call CreateNUnitsAtLoc(1,'o008',Player(8),udg_LightPoint,bj_UNIT_FACING)
    call UnitAddAbilityBJ('ACt2',GetLastCreatedUnit())
    call SetUnitAbilityLevelSwapped('ACt2',GetLastCreatedUnit(),GetUnitAbilityLevelSwapped('AIdi',gg_unit_Hmgd_0509))
    call UnitApplyTimedLifeBJ(1.50,'BTLF',GetLastCreatedUnit())
    call IssueImmediateOrder(GetLastCreatedUnit(),"creepthunderclap")
    call CreateNUnitsAtLoc(1,'o008',Player(8),udg_LightPoint,bj_UNIT_FACING)
    call UnitAddAbilityBJ('A03K',GetLastCreatedUnit())
    call SetUnitAbilityLevelSwapped('A03K',GetLastCreatedUnit(),GetUnitAbilityLevelSwapped('AIdi',gg_unit_Hmgd_0509))
    call UnitApplyTimedLifeBJ(1.50,'BTLF',GetLastCreatedUnit())
    call IssueImmediateOrder(GetLastCreatedUnit(),"roar")
    call PolledWait(0.50)
    call AddSpecialEffectLocBJ(udg_LightPoint,"HolyStomp.mdx")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call RemoveLocation(udg_LightPoint)
    else
    endif
    endif
    endfunction
    function InitTrig_Uther_Starts takes nothing returns nothing
    set gg_trg_Uther_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Uther_Starts,function Trig_Uther_Starts_Actions)
    endfunction