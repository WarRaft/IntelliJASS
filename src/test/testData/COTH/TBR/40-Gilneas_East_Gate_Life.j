function Trig_Gilneas_East_Gate_Life_Actions takes nothing returns nothing
    set udg_GilneasEastBreak[1]=0.00
    endfunction
    function InitTrig_Gilneas_East_Gate_Life takes nothing returns nothing
    set gg_trg_Gilneas_East_Gate_Life=CreateTrigger()
    call TriggerRegisterDeathEvent(gg_trg_Gilneas_East_Gate_Life,gg_dest_LTg3_3264)
    call TriggerAddAction(gg_trg_Gilneas_East_Gate_Life,function Trig_Gilneas_East_Gate_Life_Actions)
    endfunction