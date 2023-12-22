function Trig_Refuge_Buildings_1_Actions takes nothing returns nothing
    call ShowUnitShow(gg_unit_h01W_0538)
    endfunction
    function InitTrig_Refuge_Buildings_1 takes nothing returns nothing
    set gg_trg_Refuge_Buildings_1=CreateTrigger()
    call TriggerRegisterVariableEvent(gg_trg_Refuge_Buildings_1,"udg_Refuge1",EQUAL,1.00)
    call TriggerAddAction(gg_trg_Refuge_Buildings_1,function Trig_Refuge_Buildings_1_Actions)
    endfunction