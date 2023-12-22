function Trig_Kul_Tiras_Gate_Life_Actions takes nothing returns nothing
    set udg_KulTirasBreak[1]=0.00
    endfunction
    function InitTrig_Kul_Tiras_Gate_Life takes nothing returns nothing
    set gg_trg_Kul_Tiras_Gate_Life=CreateTrigger()
    call TriggerRegisterDeathEvent(gg_trg_Kul_Tiras_Gate_Life,gg_dest_LTg1_1918)
    call TriggerAddAction(gg_trg_Kul_Tiras_Gate_Life,function Trig_Kul_Tiras_Gate_Life_Actions)
    endfunction