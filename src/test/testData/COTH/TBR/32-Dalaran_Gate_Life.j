function Trig_Dalaran_Gate_Life_Actions takes nothing returns nothing
    set udg_DalaranBreak[1]=0.00
    endfunction
    function InitTrig_Dalaran_Gate_Life takes nothing returns nothing
    set gg_trg_Dalaran_Gate_Life=CreateTrigger()
    call TriggerRegisterDeathEvent(gg_trg_Dalaran_Gate_Life,gg_dest_YTce_1468)
    call TriggerAddAction(gg_trg_Dalaran_Gate_Life,function Trig_Dalaran_Gate_Life_Actions)
    endfunction