function Trig_Lorthemar_Starts_Func001Func010001003001001 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(6))==true)
    endfunction
    function Trig_Lorthemar_Starts_Func001Func010001003001002 takes nothing returns boolean
    return(UnitHasBuffBJ(GetFilterUnit(),'Bams')==false)
    endfunction
    function Trig_Lorthemar_Starts_Func001Func010001003001 takes nothing returns boolean
    return GetBooleanAnd(Trig_Lorthemar_Starts_Func001Func010001003001001(),Trig_Lorthemar_Starts_Func001Func010001003001002())
    endfunction
    function Trig_Lorthemar_Starts_Func001Func010001003002001 takes nothing returns boolean
    return(UnitHasBuffBJ(GetFilterUnit(),'B03N')==false)
    endfunction
    function Trig_Lorthemar_Starts_Func001Func010001003002002001 takes nothing returns boolean
    return(UnitHasBuffBJ(GetFilterUnit(),'B01E')==false)
    endfunction
    function Trig_Lorthemar_Starts_Func001Func010001003002002002 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_GROUND)==true)
    endfunction
    function Trig_Lorthemar_Starts_Func001Func010001003002002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Lorthemar_Starts_Func001Func010001003002002001(),Trig_Lorthemar_Starts_Func001Func010001003002002002())
    endfunction
    function Trig_Lorthemar_Starts_Func001Func010001003002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Lorthemar_Starts_Func001Func010001003002001(),Trig_Lorthemar_Starts_Func001Func010001003002002())
    endfunction
    function Trig_Lorthemar_Starts_Func001Func010001003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Lorthemar_Starts_Func001Func010001003001(),Trig_Lorthemar_Starts_Func001Func010001003002())
    endfunction
    function Trig_Lorthemar_Starts_Func001Func010A takes nothing returns nothing
    call UnitDamageTargetBJ(gg_unit_H01Q_0521,GetEnumUnit(),((30.00*I2R(GetUnitAbilityLevelSwapped('A0D4',gg_unit_H01Q_0521)))+15.00),ATTACK_TYPE_PIERCE,DAMAGE_TYPE_UNIVERSAL)
    call UnitDamageTargetBJ(gg_unit_H01Q_0521,GetEnumUnit(),((30.00*I2R(GetUnitAbilityLevelSwapped('A0D4',gg_unit_H01Q_0521)))+15.00),ATTACK_TYPE_PIERCE,DAMAGE_TYPE_NORMAL)
    endfunction
    function Trig_Lorthemar_Starts_Func001Func013C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A06K'))then
    return false
    endif
    return true
    endfunction
    function Trig_Lorthemar_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A0D4'))then
    return false
    endif
    return true
    endfunction
    function Trig_Lorthemar_Starts_Actions takes nothing returns nothing
    if(Trig_Lorthemar_Starts_Func001C())then
    set udg_TempPoint=GetUnitLoc(gg_unit_H01Q_0521)
    set udg_GlaiveTarget=GetSpellTargetLoc()
    set udg_GlaiveReal=DistanceBetweenPoints(udg_TempPoint,udg_GlaiveTarget)
    call CreateNUnitsAtLoc(1,'nmdm',Player(6),udg_TempPoint,bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call IssuePointOrderLoc(GetLastCreatedUnit(),"attackground",udg_GlaiveTarget)
    call RemoveLocation(udg_TempPoint)
    call PolledWait(((udg_GlaiveReal/ 825.00)+0.15))
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsInRangeOfLocMatching(210.00,udg_GlaiveTarget,Condition(function Trig_Lorthemar_Starts_Func001Func010001003)),function Trig_Lorthemar_Starts_Func001Func010A)
    call RemoveLocation(udg_GlaiveTarget)
    else
    if(Trig_Lorthemar_Starts_Func001Func013C())then
    call UnitAddAbilityBJ('A076',GetTriggerUnit())
    call SetUnitAbilityLevelSwapped('A076',GetTriggerUnit(),GetUnitAbilityLevelSwapped('A06K',GetTriggerUnit()))
    call SetPlayerAbilityAvailableBJ(false,'A076',Player(6))
    call PolledWait(25.00)
    call UnitRemoveAbilityBJ('A076',GetTriggerUnit())
    else
    endif
    endif
    endfunction
    function InitTrig_Lorthemar_Starts takes nothing returns nothing
    set gg_trg_Lorthemar_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Lorthemar_Starts,function Trig_Lorthemar_Starts_Actions)
    endfunction