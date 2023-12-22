function Trig_Shade_Start_Actions takes nothing returns nothing
    call EnableTrigger(gg_trg_Shade_Death)
    endfunction
    function InitTrig_Shade_Start takes nothing returns nothing
    set gg_trg_Shade_Start=CreateTrigger()
    call TriggerRegisterVariableEvent(gg_trg_Shade_Start,"udg_Shade",GREATER_THAN,0)
    call TriggerAddAction(gg_trg_Shade_Start,function Trig_Shade_Start_Actions)
    endfunction