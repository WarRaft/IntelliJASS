function Trig_Pyre_Damage_Func001C takes nothing returns boolean
    if(not(IsUnitAliveBJ(udg_PyreTarget)==true))then
    return false
    endif
    if(not(DistanceBetweenPoints(GetUnitLoc(udg_PyreTarget),GetUnitLoc(gg_unit_Hblm_0508))<=1200.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Pyre_Damage_Actions takes nothing returns nothing
    if(Trig_Pyre_Damage_Func001C())then
    call UnitDamageTargetBJ(gg_unit_Hblm_0508,udg_PyreTarget,((15.00*I2R(GetUnitAbilityLevelSwapped('A07N',gg_unit_Hblm_0508)))+(GetUnitStateSwap(UNIT_STATE_MAX_MANA,gg_unit_Hblm_0508)*0.04)),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    call AddSpecialEffectTargetUnitBJ("origin",udg_PyreTarget,"Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    call DisableTrigger(GetTriggeringTrigger())
    endif
    endfunction
    function InitTrig_Pyre_Damage takes nothing returns nothing
    set gg_trg_Pyre_Damage=CreateTrigger()
    call DisableTrigger(gg_trg_Pyre_Damage)
    call TriggerRegisterTimerEventPeriodic(gg_trg_Pyre_Damage,1.00)
    call TriggerAddAction(gg_trg_Pyre_Damage,function Trig_Pyre_Damage_Actions)
    endfunction