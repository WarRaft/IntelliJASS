function Trig_Dragon_Aspect_Damage_Func001Func001Func001C takes nothing returns boolean
    if(not(UnitHasBuffBJ(GetEnumUnit(),'B029')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Dragon_Aspect_Damage_Func001Func001A takes nothing returns nothing
    if(Trig_Dragon_Aspect_Damage_Func001Func001Func001C())then
    call UnitDamageTargetBJ(gg_unit_Otch_0529,GetEnumUnit(),((((I2R(GetUnitAbilityLevelSwapped('A061',gg_unit_Otch_0529))*0.10)+0.40)*I2R(GetHeroStatBJ(bj_HEROSTAT_INT,gg_unit_Otch_0529,true)))*((I2R(GetUnitAbilityLevelSwapped('A0DW',gg_unit_Otch_0529))*0.05)+1.00)),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    else
    call GroupRemoveUnitSimple(GetEnumUnit(),udg_DragonAspectGroup)
    endif
    endfunction
    function Trig_Dragon_Aspect_Damage_Func001C takes nothing returns boolean
    if(not(udg_DragonAspectCounter>0))then
    return false
    endif
    return true
    endfunction
    function Trig_Dragon_Aspect_Damage_Actions takes nothing returns nothing
    if(Trig_Dragon_Aspect_Damage_Func001C())then
    call ForGroupBJ(udg_DragonAspectGroup,function Trig_Dragon_Aspect_Damage_Func001Func001A)
    set udg_DragonAspectCounter=(udg_DragonAspectCounter-1)
    else
    call DisableTrigger(GetTriggeringTrigger())
    call StopSoundBJ(udg_FireLoopSound,true)
    endif
    endfunction
    function InitTrig_Dragon_Aspect_Damage takes nothing returns nothing
    set gg_trg_Dragon_Aspect_Damage=CreateTrigger()
    call DisableTrigger(gg_trg_Dragon_Aspect_Damage)
    call TriggerRegisterTimerEventPeriodic(gg_trg_Dragon_Aspect_Damage,1.00)
    call TriggerAddAction(gg_trg_Dragon_Aspect_Damage,function Trig_Dragon_Aspect_Damage_Actions)
    endfunction