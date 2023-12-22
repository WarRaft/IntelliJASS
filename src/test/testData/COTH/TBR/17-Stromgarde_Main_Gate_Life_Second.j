function Trig_Stromgarde_Main_Gate_Life_Second_Actions takes nothing returns nothing
    set udg_StromgardeMainBreakSecond[1]=0.00
    endfunction
    function InitTrig_Stromgarde_Main_Gate_Life_Second takes nothing returns nothing
    set gg_trg_Stromgarde_Main_Gate_Life_Second=CreateTrigger()
    call TriggerRegisterDeathEvent(gg_trg_Stromgarde_Main_Gate_Life_Second,gg_dest_DTg5_0407)
    call TriggerAddAction(gg_trg_Stromgarde_Main_Gate_Life_Second,function Trig_Stromgarde_Main_Gate_Life_Second_Actions)
    endfunction