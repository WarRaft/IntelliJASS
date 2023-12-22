function Trig_Refuge_Buildings_2_Actions takes nothing returns nothing
    call ShowUnitShow(gg_unit_h01W_0537)
    endfunction
    function InitTrig_Refuge_Buildings_2 takes nothing returns nothing
    set gg_trg_Refuge_Buildings_2=CreateTrigger()
    call TriggerRegisterVariableEvent(gg_trg_Refuge_Buildings_2,"udg_Refuge2",EQUAL,1.00)
    call TriggerAddAction(gg_trg_Refuge_Buildings_2,function Trig_Refuge_Buildings_2_Actions)
    endfunction