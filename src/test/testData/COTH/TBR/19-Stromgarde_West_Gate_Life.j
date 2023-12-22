function Trig_Stromgarde_West_Gate_Life_Actions takes nothing returns nothing
    set udg_StromgardeWestBreak[1]=0.00
    endfunction
    function InitTrig_Stromgarde_West_Gate_Life takes nothing returns nothing
    set gg_trg_Stromgarde_West_Gate_Life=CreateTrigger()
    call TriggerRegisterDeathEvent(gg_trg_Stromgarde_West_Gate_Life,gg_dest_LTg3_0390)
    call TriggerAddAction(gg_trg_Stromgarde_West_Gate_Life,function Trig_Stromgarde_West_Gate_Life_Actions)
    endfunction