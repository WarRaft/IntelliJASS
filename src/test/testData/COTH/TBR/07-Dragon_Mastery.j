function Trig_Dragon_Mastery_Conditions takes nothing returns boolean
    if(not(IsUnitInGroup(GetDyingUnit(),udg_DragonMasterGroup)==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Dragon_Mastery_Func005001003001 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(4))==true)
    endfunction
    function Trig_Dragon_Mastery_Func005001003002 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false)
    endfunction
    function Trig_Dragon_Mastery_Func005001003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Dragon_Mastery_Func005001003001(),Trig_Dragon_Mastery_Func005001003002())
    endfunction
    function Trig_Dragon_Mastery_Func005A takes nothing returns nothing
    call UnitDamageTargetBJ(gg_unit_Otch_0529,GetEnumUnit(),(I2R(GetUnitAbilityLevelSwapped('A0DW',gg_unit_Otch_0529))*75.00),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    endfunction
    function Trig_Dragon_Mastery_Func007C takes nothing returns boolean
    if(not(CountUnitsInGroup(udg_DragonMasterGroup)==0))then
    return false
    endif
    return true
    endfunction
    function Trig_Dragon_Mastery_Actions takes nothing returns nothing
    set udg_TempPoint=GetUnitLoc(GetDyingUnit())
    call AddSpecialEffectLocBJ(udg_TempPoint,"Abilities\\Spells\\Other\\Incinerate\\FireLordDeathExplode.mdl")
    call GroupRemoveUnitSimple(GetDyingUnit(),udg_DragonMasterGroup)
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsInRangeOfLocMatching(250.00,udg_TempPoint,Condition(function Trig_Dragon_Mastery_Func005001003)),function Trig_Dragon_Mastery_Func005A)
    call RemoveLocation(udg_TempPoint)
    if(Trig_Dragon_Mastery_Func007C())then
    call DisableTrigger(GetTriggeringTrigger())
    else
    endif
    endfunction
    function InitTrig_Dragon_Mastery takes nothing returns nothing
    set gg_trg_Dragon_Mastery=CreateTrigger()
    call DisableTrigger(gg_trg_Dragon_Mastery)
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Dragon_Mastery,EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_Dragon_Mastery,Condition(function Trig_Dragon_Mastery_Conditions))
    call TriggerAddAction(gg_trg_Dragon_Mastery,function Trig_Dragon_Mastery_Actions)
    endfunction