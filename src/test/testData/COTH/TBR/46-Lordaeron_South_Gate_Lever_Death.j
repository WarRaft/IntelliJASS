function Trig_Lordaeron_South_Gate_Lever_Death_Actions takes nothing returns nothing
    call ConditionalTriggerExecute(gg_trg_Lordaeron_Fountain_Destroyed)
    endfunction
    function InitTrig_Lordaeron_South_Gate_Lever_Death takes nothing returns nothing
    set gg_trg_Lordaeron_South_Gate_Lever_Death=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Lordaeron_South_Gate_Lever_Death,gg_unit_h001_0350,EVENT_UNIT_DEATH)
    call TriggerAddAction(gg_trg_Lordaeron_South_Gate_Lever_Death,function Trig_Lordaeron_South_Gate_Lever_Death_Actions)
    endfunction