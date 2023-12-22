function Trig_Blackhand_Starts_Func001Func002002003001001 takes nothing returns boolean
    return(IsUnitAliveBJ(GetFilterUnit())==true)
    endfunction
    function Trig_Blackhand_Starts_Func001Func002002003001 takes nothing returns boolean
    return Trig_Blackhand_Starts_Func001Func002002003001001()
    endfunction
    function Trig_Blackhand_Starts_Func001Func002002003002 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(4))==true)
    endfunction
    function Trig_Blackhand_Starts_Func001Func002002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Blackhand_Starts_Func001Func002002003001(),Trig_Blackhand_Starts_Func001Func002002003002())
    endfunction
    function Trig_Blackhand_Starts_Func001Func003A takes nothing returns nothing
    call CreateNUnitsAtLoc(1,'o008',GetOwningPlayer(gg_unit_Nbbc_0485),udg_TempPoint,bj_UNIT_FACING)
    call UnitAddAbilityBJ('A0DR',GetLastCreatedUnit())
    call SetUnitAbilityLevelSwapped('A0DR',GetLastCreatedUnit(),GetUnitAbilityLevelSwapped('A0DU',gg_unit_Nbbc_0485))
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call IssueTargetOrder(GetLastCreatedUnit(),"entanglingroots",GetEnumUnit())
    call UnitDamageTarget(gg_unit_Nbbc_0485, GetEnumUnit(), R2I(GetHeroStr(gg_unit_Nbbc_0485, true)), true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS )
    endfunction
    function Trig_Blackhand_Starts_Func001Func007Func007002003001001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true)
    endfunction
    function Trig_Blackhand_Starts_Func001Func007Func007002003001002 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(4))==true)
    endfunction
    function Trig_Blackhand_Starts_Func001Func007Func007002003001 takes nothing returns boolean
    return GetBooleanAnd(Trig_Blackhand_Starts_Func001Func007Func007002003001001(),Trig_Blackhand_Starts_Func001Func007Func007002003001002())
    endfunction
    function Trig_Blackhand_Starts_Func001Func007Func007002003002 takes nothing returns boolean
    return(GetUnitLifePercent(GetFilterUnit())<40.00)
    endfunction
    function Trig_Blackhand_Starts_Func001Func007Func007002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Blackhand_Starts_Func001Func007Func007002003001(),Trig_Blackhand_Starts_Func001Func007Func007002003002())
    endfunction
    function Trig_Blackhand_Starts_Func001Func007Func008Func001C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A068',gg_unit_Nbbc_0485)==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Blackhand_Starts_Func001Func007Func008C takes nothing returns boolean
    if(not(CountUnitsInGroup(udg_Temp_UnitGroup)>0))then
    return false
    endif
    return true
    endfunction
    function Trig_Blackhand_Starts_Func001Func007C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A068'))then
    return false
    endif
    return true
    endfunction
    function Trig_Blackhand_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A0DU'))then
    return false
    endif
    return true
    endfunction
    function Trig_Blackhand_Starts_Actions takes nothing returns nothing
    if(Trig_Blackhand_Starts_Func001C())then
    set udg_TempPoint=GetSpellTargetLoc()
    set udg_Temp_UnitGroup=GetUnitsInRangeOfLocMatching(210.00,udg_TempPoint,Condition(function Trig_Blackhand_Starts_Func001Func002002003))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Blackhand_Starts_Func001Func003A)
    call RemoveLocation(udg_TempPoint)
    call DestroyGroup(udg_Temp_UnitGroup)
    else
    if(Trig_Blackhand_Starts_Func001Func007C())then
    call UnitRemoveBuffBJ('Bchd',gg_unit_Nbbc_0485)
    set udg_WarpathCounter=GetUnitAbilityLevelSwapped('A068',gg_unit_Nbbc_0485)
    set udg_TempPoint=GetUnitLoc(gg_unit_Nbbc_0485)
    call CreateNUnitsAtLoc(1,'o008',GetOwningPlayer(gg_unit_Nbbc_0485),udg_TempPoint,bj_UNIT_FACING)
    call UnitAddAbilityBJ('A0DI',GetLastCreatedUnit())
    set udg_Temp_UnitGroup=GetUnitsInRangeOfLocMatching(1000.00,udg_TempPoint,Condition(function Trig_Blackhand_Starts_Func001Func007Func007002003))
    if(Trig_Blackhand_Starts_Func001Func007Func008C())then
    if(Trig_Blackhand_Starts_Func001Func007Func008Func001C())then
    set udg_WarpathCounter=2
    else
    set udg_WarpathCounter=(udg_WarpathCounter+2)
    endif
    else
    endif
    call SetUnitAbilityLevelSwapped('A0DI',GetLastCreatedUnit(),udg_WarpathCounter)
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call IssueImmediateOrder(GetLastCreatedUnit(),"roar")
    call RemoveLocation(udg_TempPoint)
    call DestroyGroup(udg_Temp_UnitGroup)
    call UnitAddAbilityBJ('A025',GetTriggerUnit())
    call PolledWait(8.00)
    call UnitRemoveAbilityBJ('A025',GetTriggerUnit())
    else
    endif
    endif
    endfunction
    function InitTrig_Blackhand_Starts takes nothing returns nothing
    set gg_trg_Blackhand_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Blackhand_Starts,function Trig_Blackhand_Starts_Actions)
    endfunction