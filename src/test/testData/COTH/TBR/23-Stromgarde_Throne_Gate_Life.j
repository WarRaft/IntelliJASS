function Trig_Stromgarde_Throne_Gate_Life_Actions takes nothing returns nothing
    set udg_StromgardeThroneBreak[1]=0.00
    endfunction
    function InitTrig_Stromgarde_Throne_Gate_Life takes nothing returns nothing
    set gg_trg_Stromgarde_Throne_Gate_Life=CreateTrigger()
    call TriggerRegisterDeathEvent(gg_trg_Stromgarde_Throne_Gate_Life,gg_dest_LTg1_0392)
    call TriggerAddAction(gg_trg_Stromgarde_Throne_Gate_Life,function Trig_Stromgarde_Throne_Gate_Life_Actions)
    endfunction