function Trig_Smite_Actions takes nothing returns nothing
    call PolledWait(2.00)
    set udg_Smite=0.00
    endfunction
    function InitTrig_Smite takes nothing returns nothing
    set gg_trg_Smite=CreateTrigger()
    call TriggerAddAction(gg_trg_Smite,function Trig_Smite_Actions)
    endfunction