function Trig_Pyre_Reset_Actions takes nothing returns nothing
    call DisableTrigger(gg_trg_Pyre_Damage)
    endfunction
    function InitTrig_Pyre_Reset takes nothing returns nothing
    set gg_trg_Pyre_Reset=CreateTrigger()
    call TriggerAddAction(gg_trg_Pyre_Reset,function Trig_Pyre_Reset_Actions)
    endfunction