 function Trig_Shade_End_Actions takes nothing returns nothing
    call DisableTrigger(gg_trg_Shade_Death)
    endfunction
    function InitTrig_Shade_End takes nothing returns nothing
    set gg_trg_Shade_End=CreateTrigger()
    call TriggerRegisterVariableEvent(gg_trg_Shade_End,"udg_Shade",EQUAL,0)
    call TriggerAddAction(gg_trg_Shade_End,function Trig_Shade_End_Actions)
    endfunction