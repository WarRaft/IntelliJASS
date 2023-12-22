function Trig_Starfall_Damage_Conditions takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A0E0'))then
    return false
    endif
    return true
    endfunction
    function Trig_Starfall_Damage_Func003002003001001 takes nothing returns boolean
    return(IsUnitAliveBJ(GetFilterUnit())==true)
    endfunction
    function Trig_Starfall_Damage_Func003002003001002 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_TOWNHALL)==false)
    endfunction
    function Trig_Starfall_Damage_Func003002003001 takes nothing returns boolean
    return GetBooleanAnd(Trig_Starfall_Damage_Func003002003001001(),Trig_Starfall_Damage_Func003002003001002())
    endfunction
    function Trig_Starfall_Damage_Func003002003002001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false)
    endfunction
    function Trig_Starfall_Damage_Func003002003002002 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(1))==true)
    endfunction
    function Trig_Starfall_Damage_Func003002003002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Starfall_Damage_Func003002003002001(),Trig_Starfall_Damage_Func003002003002002())
    endfunction
    function Trig_Starfall_Damage_Func003002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Starfall_Damage_Func003002003001(),Trig_Starfall_Damage_Func003002003002())
    endfunction
    function Trig_Starfall_Damage_Func004Func001002 takes nothing returns nothing
    call UnitDamageTargetBJ(gg_unit_Hgam_0513,GetEnumUnit(),((I2R(GetUnitAbilityLevelSwapped('S003',gg_unit_Hgam_0513))*50.00)+170.00),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    endfunction
    function Trig_Starfall_Damage_Func004Func003Func002002 takes nothing returns nothing
    call UnitDamageTargetBJ(gg_unit_Hgam_0513,GetEnumUnit(),((I2R(GetUnitAbilityLevelSwapped('SNin',gg_unit_Hgam_0513))*50.00)+140.00),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    endfunction
    function Trig_Starfall_Damage_Func004Func003Func003Func002002 takes nothing returns nothing
    call UnitDamageTargetBJ(gg_unit_Hgam_0513,GetEnumUnit(),((I2R(GetUnitAbilityLevelSwapped('S004',gg_unit_Hgam_0513))*50.00)+110.00),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    endfunction
    function Trig_Starfall_Damage_Func004Func003Func003Func003002 takes nothing returns nothing
    call UnitDamageTargetBJ(gg_unit_Hgam_0513,GetEnumUnit(),((I2R(GetUnitAbilityLevelSwapped('S002',gg_unit_Hgam_0513))*50.00)+80.00),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    endfunction
    function Trig_Starfall_Damage_Func004Func003Func003C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('ANeg',gg_unit_Hgam_0513)==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Starfall_Damage_Func004Func003C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('ANeg',gg_unit_Hgam_0513)==2))then
    return false
    endif
    return true
    endfunction
    function Trig_Starfall_Damage_Func004C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('ANeg',gg_unit_Hgam_0513)==3))then
    return false
    endif
    return true
    endfunction
    function Trig_Starfall_Damage_Func008C takes nothing returns boolean
    if(not(udg_StarFallCount==0))then
    return false
    endif
    return true
    endfunction
    function Trig_Starfall_Damage_Actions takes nothing returns nothing
    set udg_TempPoint=GetUnitLoc(GetTriggerUnit())
    set udg_Temp_UnitGroup=GetUnitsInRangeOfLocMatching(235.00,udg_TempPoint,Condition(function Trig_Starfall_Damage_Func003002003))
    if(Trig_Starfall_Damage_Func004C())then
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Starfall_Damage_Func004Func001002)
    else
    if(Trig_Starfall_Damage_Func004Func003C())then
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Starfall_Damage_Func004Func003Func002002)
    else
    if(Trig_Starfall_Damage_Func004Func003Func003C())then
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Starfall_Damage_Func004Func003Func003Func002002)
    else
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Starfall_Damage_Func004Func003Func003Func003002)
    endif
    endif
    endif
    call DestroyGroup(udg_Temp_UnitGroup)
    call RemoveLocation(udg_TempPoint)
    set udg_StarFallCount=(udg_StarFallCount-1)
    if(Trig_Starfall_Damage_Func008C())then
    call DisableTrigger(GetTriggeringTrigger())
    else
    endif
    endfunction
    function InitTrig_Starfall_Damage takes nothing returns nothing
    set gg_trg_Starfall_Damage=CreateTrigger()
    call DisableTrigger(gg_trg_Starfall_Damage)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Starfall_Damage,Player(1),EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_Starfall_Damage,Condition(function Trig_Starfall_Damage_Conditions))
    call TriggerAddAction(gg_trg_Starfall_Damage,function Trig_Starfall_Damage_Actions)
    endfunction