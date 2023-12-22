function Trig_Gilneas_South_Gate_Life_Actions takes nothing returns nothing
    set udg_GilneasSouthBreak[1]=0.00
    endfunction
    function InitTrig_Gilneas_South_Gate_Life takes nothing returns nothing
    set gg_trg_Gilneas_South_Gate_Life=CreateTrigger()
    call TriggerRegisterDeathEvent(gg_trg_Gilneas_South_Gate_Life,gg_dest_LTg1_3263)
    call TriggerAddAction(gg_trg_Gilneas_South_Gate_Life,function Trig_Gilneas_South_Gate_Life_Actions)
    endfunction