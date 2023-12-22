function Trig_Muradin_Starts_Func001Func001Func001Func001C takes nothing returns boolean
    if(not(udg_OnTheHouse==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Muradin_Starts_Func001Func001Func001Func016002003001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_GROUND)==true)
    endfunction
    function Trig_Muradin_Starts_Func001Func001Func001Func016002003002 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(5))==true)
    endfunction
    function Trig_Muradin_Starts_Func001Func001Func001Func016002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Muradin_Starts_Func001Func001Func001Func016002003001(),Trig_Muradin_Starts_Func001Func001Func001Func016002003002())
    endfunction
    function Trig_Muradin_Starts_Func001Func001Func001Func017Func002002003 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(5))==true)
    endfunction
    function Trig_Muradin_Starts_Func001Func001Func001Func017A takes nothing returns nothing
    call UnitDamageTargetBJ(gg_unit_Ucrl_0500,GetEnumUnit(),((I2R(GetUnitAbilityLevelSwapped('A0CY',gg_unit_Ucrl_0500))*150.00)+150.00),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    set udg_ThunderGroup=GetUnitsInRangeOfLocMatching(180.00,udg_ThunderClapPoint1,Condition(function Trig_Muradin_Starts_Func001Func001Func001Func017Func002002003))
    endfunction
    function Trig_Muradin_Starts_Func001Func001Func001Func028002003001001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_GROUND)==true)
    endfunction
    function Trig_Muradin_Starts_Func001Func001Func001Func028002003001002 takes nothing returns boolean
    return(IsUnitInGroup(GetFilterUnit(),udg_ThunderGroup)==false)
    endfunction
    function Trig_Muradin_Starts_Func001Func001Func001Func028002003001 takes nothing returns boolean
    return GetBooleanAnd(Trig_Muradin_Starts_Func001Func001Func001Func028002003001001(),Trig_Muradin_Starts_Func001Func001Func001Func028002003001002())
    endfunction
    function Trig_Muradin_Starts_Func001Func001Func001Func028002003002 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(5))==true)
    endfunction
    function Trig_Muradin_Starts_Func001Func001Func001Func028002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Muradin_Starts_Func001Func001Func001Func028002003001(),Trig_Muradin_Starts_Func001Func001Func001Func028002003002())
    endfunction
    function Trig_Muradin_Starts_Func001Func001Func001Func029Func002002003 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(5))==true)
    endfunction
    function Trig_Muradin_Starts_Func001Func001Func001Func029A takes nothing returns nothing
    call UnitDamageTargetBJ(gg_unit_Ucrl_0500,GetEnumUnit(),((I2R(GetUnitAbilityLevelSwapped('A0CY',gg_unit_Ucrl_0500))*150.00)+150.00),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    set udg_ThunderGroup=GetUnitsInRangeOfLocMatching(180.00,udg_ThunderClapPoint2,Condition(function Trig_Muradin_Starts_Func001Func001Func001Func029Func002002003))
    endfunction
    function Trig_Muradin_Starts_Func001Func001Func001Func040002003001001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_GROUND)==true)
    endfunction
    function Trig_Muradin_Starts_Func001Func001Func001Func040002003001002 takes nothing returns boolean
    return(IsUnitInGroup(GetFilterUnit(),udg_ThunderGroup)==false)
    endfunction
    function Trig_Muradin_Starts_Func001Func001Func001Func040002003001 takes nothing returns boolean
    return GetBooleanAnd(Trig_Muradin_Starts_Func001Func001Func001Func040002003001001(),Trig_Muradin_Starts_Func001Func001Func001Func040002003001002())
    endfunction
    function Trig_Muradin_Starts_Func001Func001Func001Func040002003002 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(5))==true)
    endfunction
    function Trig_Muradin_Starts_Func001Func001Func001Func040002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Muradin_Starts_Func001Func001Func001Func040002003001(),Trig_Muradin_Starts_Func001Func001Func001Func040002003002())
    endfunction
    function Trig_Muradin_Starts_Func001Func001Func001Func041A takes nothing returns nothing
    call UnitDamageTargetBJ(gg_unit_Ucrl_0500,GetEnumUnit(),((I2R(GetUnitAbilityLevelSwapped('A0CY',gg_unit_Ucrl_0500))*150.00)+150.00),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    endfunction
    function Trig_Muradin_Starts_Func001Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A0CY'))then
    return false
    endif
    return true
    endfunction
    function Trig_Muradin_Starts_Func001Func002C takes nothing returns boolean
    if(not(udg_OnTheHouse==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Muradin_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A08P'))then
    return false
    endif
    return true
    endfunction
    function Trig_Muradin_Starts_Actions takes nothing returns nothing
    if(Trig_Muradin_Starts_Func001C())then
    if(Trig_Muradin_Starts_Func001Func002C())then
    call TriggerExecute(gg_trg_On_the_House)
    else
    endif
    set udg_TempPoint=GetUnitLoc(gg_unit_Ucrl_0500)
    call CreateNUnitsAtLoc(1,'o008',Player(5),udg_TempPoint,bj_UNIT_FACING)
    call UnitAddAbilityBJ('A08N',GetLastCreatedUnit())
    call SetUnitAbilityLevelSwapped('A08N',GetLastCreatedUnit(),3)
    call IssueTargetOrder(GetLastCreatedUnit(),"thunderbolt",GetSpellTargetUnit())
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call RemoveLocation(udg_TempPoint)
    else
    if(Trig_Muradin_Starts_Func001Func001Func001C())then
    if(Trig_Muradin_Starts_Func001Func001Func001Func001C())then
    call TriggerExecute(gg_trg_On_the_House)
    else
    endif
    set udg_TempPoint=GetUnitLoc(gg_unit_Ucrl_0500)
    set udg_TempPoint2=GetSpellTargetLoc()
    set udg_ThunderClapPoint1=PolarProjectionBJ(udg_TempPoint,180.00,AngleBetweenPoints(udg_TempPoint,udg_TempPoint2))
    set udg_ThunderClapPoint2=PolarProjectionBJ(udg_TempPoint,400.00,AngleBetweenPoints(udg_TempPoint,udg_TempPoint2))
    set udg_ThunderClapPoint3=PolarProjectionBJ(udg_TempPoint,620.00,AngleBetweenPoints(udg_TempPoint,udg_TempPoint2))
    call RemoveLocation(udg_TempPoint)
    call RemoveLocation(udg_TempPoint2)
    call CreateNUnitsAtLoc(1,'o008',Player(5),udg_ThunderClapPoint1,bj_UNIT_FACING)
    call UnitAddAbilityBJ('Awrs',GetLastCreatedUnit())
    call SetUnitAbilityLevelSwapped('Awrs',GetLastCreatedUnit(),GetUnitAbilityLevelSwapped('A0CY',gg_unit_Ucrl_0500))
    call IssueImmediateOrder(GetLastCreatedUnit(),"stomp")
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call AddSpecialEffectLocBJ(udg_ThunderClapPoint1,"Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    set udg_Temp_UnitGroup=GetUnitsInRangeOfLocMatching(180.00,udg_ThunderClapPoint1,Condition(function Trig_Muradin_Starts_Func001Func001Func001Func016002003))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Muradin_Starts_Func001Func001Func001Func017A)
    call DestroyGroup(udg_Temp_UnitGroup)
    call RemoveLocation(udg_ThunderClapPoint1)
    call PolledWait(0.30)
    call CreateNUnitsAtLoc(1,'o008',Player(5),udg_ThunderClapPoint2,bj_UNIT_FACING)
    call UnitAddAbilityBJ('Awrs',GetLastCreatedUnit())
    call SetUnitAbilityLevelSwapped('Awrs',GetLastCreatedUnit(),GetUnitAbilityLevelSwapped('A0CY',gg_unit_Ucrl_0500))
    call IssueImmediateOrder(GetLastCreatedUnit(),"stomp")
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call AddSpecialEffectLocBJ(udg_ThunderClapPoint2,"Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    set udg_Temp_UnitGroup=GetUnitsInRangeOfLocMatching(180.00,udg_ThunderClapPoint2,Condition(function Trig_Muradin_Starts_Func001Func001Func001Func028002003))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Muradin_Starts_Func001Func001Func001Func029A)
    call DestroyGroup(udg_Temp_UnitGroup)
    call RemoveLocation(udg_ThunderClapPoint2)
    call PolledWait(0.30)
    call CreateNUnitsAtLoc(1,'o008',Player(5),udg_ThunderClapPoint3,bj_UNIT_FACING)
    call UnitAddAbilityBJ('Awrs',GetLastCreatedUnit())
    call SetUnitAbilityLevelSwapped('Awrs',GetLastCreatedUnit(),GetUnitAbilityLevelSwapped('A0CY',gg_unit_Ucrl_0500))
    call IssueImmediateOrder(GetLastCreatedUnit(),"stomp")
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call AddSpecialEffectLocBJ(udg_ThunderClapPoint3,"Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    set udg_Temp_UnitGroup=GetUnitsInRangeOfLocMatching(180.00,udg_ThunderClapPoint3,Condition(function Trig_Muradin_Starts_Func001Func001Func001Func040002003))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Muradin_Starts_Func001Func001Func001Func041A)
    call DestroyGroup(udg_Temp_UnitGroup)
    call DestroyGroup(udg_ThunderGroup)
    call RemoveLocation(udg_ThunderClapPoint3)
    else
    endif
    endif
    endfunction
    function InitTrig_Muradin_Starts takes nothing returns nothing
    set gg_trg_Muradin_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Muradin_Starts,function Trig_Muradin_Starts_Actions)
    endfunction