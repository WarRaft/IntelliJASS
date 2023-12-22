function Trig_Derek_Starts_Func001Func008Func001C takes nothing returns boolean
    if(not(IsUnitType(GetEnumUnit(),UNIT_TYPE_STRUCTURE)==false))then
    return false
    endif
    if(not(IsUnitType(GetEnumUnit(),UNIT_TYPE_TOWNHALL)==false))then
    return false
    endif
    if(not(IsUnitEnemy(GetEnumUnit(),Player(2))==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Derek_Starts_Func001Func008A takes nothing returns nothing
    if(Trig_Derek_Starts_Func001Func008Func001C())then
    call UnitDamageTargetBJ(GetTriggerUnit(),GetEnumUnit(),(25.00*I2R(GetUnitAbilityLevelSwapped('A06Q',GetTriggerUnit()))),ATTACK_TYPE_HERO,DAMAGE_TYPE_UNIVERSAL)
    else
    endif
    endfunction
    function Trig_Derek_Starts_Func001Func012Func001C takes nothing returns boolean
    if(not(IsUnitType(GetEnumUnit(),UNIT_TYPE_STRUCTURE)==false))then
    return false
    endif
    if(not(IsUnitType(GetEnumUnit(),UNIT_TYPE_TOWNHALL)==false))then
    return false
    endif
    if(not(IsUnitEnemy(GetEnumUnit(),Player(2))==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Derek_Starts_Func001Func012A takes nothing returns nothing
    if(Trig_Derek_Starts_Func001Func012Func001C())then
    call UnitDamageTargetBJ(GetTriggerUnit(),GetEnumUnit(),(25.00*I2R(GetUnitAbilityLevelSwapped('A06Q',GetTriggerUnit()))),ATTACK_TYPE_HERO,DAMAGE_TYPE_UNIVERSAL)
    else
    endif
    endfunction
    function Trig_Derek_Starts_Func001Func016Func001Func001Func007Func001Func001C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A07F',gg_unit_H01B_0507)==3))then
    return false
    endif
    return true
    endfunction
    function Trig_Derek_Starts_Func001Func016Func001Func001Func007Func001C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A07F',gg_unit_H01B_0507)==2))then
    return false
    endif
    return true
    endfunction
    function Trig_Derek_Starts_Func001Func016Func001Func001Func007C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A07F',gg_unit_H01B_0507)==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Derek_Starts_Func001Func016Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A07F'))then
    return false
    endif
    return true
    endfunction
    function Trig_Derek_Starts_Func001Func016Func005002003 takes nothing returns boolean
    return(GetUnitTypeId(GetFilterUnit())=='nass')
    endfunction
    function Trig_Derek_Starts_Func001Func016Func006002 takes nothing returns nothing
    call IssueTargetOrder(GetEnumUnit(),"attack",udg_MarkedTarget)
    endfunction
    function Trig_Derek_Starts_Func001Func016C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A054'))then
    return false
    endif
    return true
    endfunction
    function Trig_Derek_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A06Q'))then
    return false
    endif
    return true
    endfunction
    function Trig_Derek_Starts_Actions takes nothing returns nothing
    if(Trig_Derek_Starts_Func001C())then
    set udg_FlarePoint=GetSpellTargetLoc()
    call CreateNUnitsAtLoc(1,'o008',Player(2),udg_FlarePoint,bj_UNIT_FACING)
    call UnitAddAbilityBJ('Afla',GetLastCreatedUnit())
    call IssuePointOrderLoc(GetLastCreatedUnit(),"flare",udg_FlarePoint)
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call PolledWait(1.20)
    set udg_Temp_UnitGroup=GetUnitsInRangeOfLocAll(400.00,udg_FlarePoint)
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Derek_Starts_Func001Func008A)
    call DestroyGroup(udg_Temp_UnitGroup)
    call PolledWait(0.75)
    set udg_Temp_UnitGroup=GetUnitsInRangeOfLocAll(400.00,udg_FlarePoint)
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Derek_Starts_Func001Func012A)
    call DestroyGroup(udg_Temp_UnitGroup)
    call RemoveLocation(udg_FlarePoint)
    else
    if(Trig_Derek_Starts_Func001Func016C())then
    set udg_TempPoint=GetUnitLoc(gg_unit_H01B_0507)
    set udg_MarkedTarget=GetSpellTargetUnit()
    set udg_Temp_UnitGroup=GetUnitsInRangeOfLocMatching(30000.00,udg_TempPoint,Condition(function Trig_Derek_Starts_Func001Func016Func005002003))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Derek_Starts_Func001Func016Func006002)
    call DestroyGroup(udg_Temp_UnitGroup)
    call RemoveLocation(udg_TempPoint)
    call PolledWait(0.40)
    call IssueTargetOrder(gg_unit_H01B_0507,"attack",udg_MarkedTarget)
    else
    if(Trig_Derek_Starts_Func001Func016Func001Func001C())then
    set udg_BroadsideTarget=GetSpellTargetLoc()
    set udg_BroadsideCasterPoint=PolarProjectionBJ(udg_BroadsideTarget,600.00,225.00)
    call PolledWait(0.25)
    call CreateNUnitsAtLoc(1,'o00G',Player(2),udg_BroadsideTarget,bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(10.00,'BTLF',GetLastCreatedUnit())
    if(Trig_Derek_Starts_Func001Func016Func001Func001Func007C())then
    call CreateNUnitsAtLoc(1,'e003',Player(2),udg_BroadsideCasterPoint,bj_UNIT_FACING)
    set udg_BroadsideCaster=GetLastCreatedUnit()
    call UnitApplyTimedLifeBJ(10.00,'BTLF',GetLastCreatedUnit())
    else
    if(Trig_Derek_Starts_Func001Func016Func001Func001Func007Func001C())then
    call CreateNUnitsAtLoc(1,'e002',Player(2),udg_BroadsideCasterPoint,bj_UNIT_FACING)
    set udg_BroadsideCaster=GetLastCreatedUnit()
    call UnitApplyTimedLifeBJ(10.00,'BTLF',GetLastCreatedUnit())
    else
    if(Trig_Derek_Starts_Func001Func016Func001Func001Func007Func001Func001C())then
    call CreateNUnitsAtLoc(1,'e004',Player(2),udg_BroadsideCasterPoint,bj_UNIT_FACING)
    set udg_BroadsideCaster=GetLastCreatedUnit()
    call UnitApplyTimedLifeBJ(10.00,'BTLF',GetLastCreatedUnit())
    else
    endif
    endif
    endif
    call EnableTrigger(gg_trg_Bombardment_On)
    call PolledWait(10.00)
    call DisableTrigger(gg_trg_Bombardment_On)
    call RemoveLocation(udg_BroadsideTarget)
    call RemoveLocation(udg_BroadsideCasterPoint)
    else
    endif
    endif
    endif
    endfunction
    function InitTrig_Derek_Starts takes nothing returns nothing
    set gg_trg_Derek_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Derek_Starts,function Trig_Derek_Starts_Actions)
    endfunction