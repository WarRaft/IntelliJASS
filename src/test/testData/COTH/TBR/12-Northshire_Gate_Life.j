function Trig_Northshire_Gate_Life_Actions takes nothing returns nothing
    set udg_NorthshireBreak[1]=0.00
    endfunction
    function InitTrig_Northshire_Gate_Life takes nothing returns nothing
    set gg_trg_Northshire_Gate_Life=CreateTrigger()
    call TriggerRegisterDeathEvent(gg_trg_Northshire_Gate_Life,gg_dest_YTcx_0268)
    call TriggerAddAction(gg_trg_Northshire_Gate_Life,function Trig_Northshire_Gate_Life_Actions)
    endfunction