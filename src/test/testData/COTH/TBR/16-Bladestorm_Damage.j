function Trig_Bladestorm_Damage_Conditions takes nothing returns boolean
    if(not(IsUnitAliveBJ(gg_unit_Osam_0526)==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Bladestorm_Damage_Func004001003001001 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(9))==true)
    endfunction
    function Trig_Bladestorm_Damage_Func004001003001002 takes nothing returns boolean
    return(UnitHasBuffBJ(GetFilterUnit(),'BIsv')==false)
    endfunction
    function Trig_Bladestorm_Damage_Func004001003001 takes nothing returns boolean
    return GetBooleanAnd(Trig_Bladestorm_Damage_Func004001003001001(),Trig_Bladestorm_Damage_Func004001003001002())
    endfunction
    function Trig_Bladestorm_Damage_Func004001003002001 takes nothing returns boolean
    return(UnitHasBuffBJ(GetFilterUnit(),'BHds')==false)
    endfunction
    function Trig_Bladestorm_Damage_Func004001003002002 takes nothing returns boolean
    return(UnitHasBuffBJ(GetFilterUnit(),'B03N')==false)
    endfunction
    function Trig_Bladestorm_Damage_Func004001003002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Bladestorm_Damage_Func004001003002001(),Trig_Bladestorm_Damage_Func004001003002002())
    endfunction
    function Trig_Bladestorm_Damage_Func004001003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Bladestorm_Damage_Func004001003001(),Trig_Bladestorm_Damage_Func004001003002())
    endfunction
    function Trig_Bladestorm_Damage_Func004A takes nothing returns nothing
    call UnitDamageTargetBJ(gg_unit_Osam_0526,GetEnumUnit(),(I2R(GetUnitAbilityLevelSwapped('AOww',gg_unit_Osam_0526))+8.00),ATTACK_TYPE_MELEE,DAMAGE_TYPE_NORMAL)
    call UnitDamageTargetBJ(gg_unit_Osam_0526,GetEnumUnit(),(I2R(GetUnitAbilityLevelSwapped('AOww',gg_unit_Osam_0526))+8.00),ATTACK_TYPE_MELEE,DAMAGE_TYPE_UNIVERSAL)
    endfunction
    function Trig_Bladestorm_Damage_Actions takes nothing returns nothing
    set udg_TempPoint=GetUnitLoc(gg_unit_Osam_0526)
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsInRangeOfLocMatching(250.00,udg_TempPoint,Condition(function Trig_Bladestorm_Damage_Func004001003)),function Trig_Bladestorm_Damage_Func004A)
    call RemoveLocation(udg_TempPoint)
    endfunction
    function InitTrig_Bladestorm_Damage takes nothing returns nothing
    set gg_trg_Bladestorm_Damage=CreateTrigger()
    call DisableTrigger(gg_trg_Bladestorm_Damage)
    call TriggerRegisterTimerEventPeriodic(gg_trg_Bladestorm_Damage,0.20)
    call TriggerAddCondition(gg_trg_Bladestorm_Damage,Condition(function Trig_Bladestorm_Damage_Conditions))
    call TriggerAddAction(gg_trg_Bladestorm_Damage,function Trig_Bladestorm_Damage_Actions)
    endfunction