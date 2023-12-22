function Trig_Sanctuary_Heal_Actions takes nothing returns nothing
    call SetUnitLifeBJ(udg_SanctuaryTarget,(GetUnitStateSwap(UNIT_STATE_LIFE,udg_SanctuaryTarget)+40.00))
    endfunction
    function InitTrig_Sanctuary_Heal takes nothing returns nothing
    set gg_trg_Sanctuary_Heal=CreateTrigger()
    call DisableTrigger(gg_trg_Sanctuary_Heal)
    call TriggerRegisterTimerEventPeriodic(gg_trg_Sanctuary_Heal,0.49)
    call TriggerAddAction(gg_trg_Sanctuary_Heal,function Trig_Sanctuary_Heal_Actions)
    endfunction