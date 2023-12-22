function Trig_Lordaeron_South_Gate_Life_Actions takes nothing returns nothing
    set udg_LordaeronSecondBreak[1]=0.00
    call ConditionalTriggerExecute(gg_trg_Lordaeron_Fountain_Destroyed)
    call DisableTrigger(gg_trg_Lordaeron_South_Gate_Lever_Death)
    endfunction
    function InitTrig_Lordaeron_South_Gate_Life takes nothing returns nothing
    set gg_trg_Lordaeron_South_Gate_Life=CreateTrigger()
    call TriggerRegisterDeathEvent(gg_trg_Lordaeron_South_Gate_Life,gg_dest_LTg3_1292)
    call TriggerAddAction(gg_trg_Lordaeron_South_Gate_Life,function Trig_Lordaeron_South_Gate_Life_Actions)
    endfunction