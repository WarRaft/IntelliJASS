function Trig_Stromgarde_Main_Gate_Life_First_Actions takes nothing returns nothing
    set udg_StromgardeMainBreakFirst[1]=0.00
    endfunction
    function InitTrig_Stromgarde_Main_Gate_Life_First takes nothing returns nothing
    set gg_trg_Stromgarde_Main_Gate_Life_First=CreateTrigger()
    call TriggerRegisterDeathEvent(gg_trg_Stromgarde_Main_Gate_Life_First,gg_dest_DTg5_0274)
    call TriggerAddAction(gg_trg_Stromgarde_Main_Gate_Life_First,function Trig_Stromgarde_Main_Gate_Life_First_Actions)
    endfunction