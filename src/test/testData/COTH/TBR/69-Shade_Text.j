function Trig_Shade_Text_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call TriggerSleepAction(8.00)
    set udg_ShadeText=0.00
    call EnableTrigger(GetTriggeringTrigger())
    endfunction
    function InitTrig_Shade_Text takes nothing returns nothing
    set gg_trg_Shade_Text=CreateTrigger()
    call TriggerRegisterVariableEvent(gg_trg_Shade_Text,"udg_ShadeText",GREATER_THAN,0)
    call TriggerAddAction(gg_trg_Shade_Text,function Trig_Shade_Text_Actions)
    endfunction