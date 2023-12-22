function Trig_Quelthalas_Gate_Life_Actions takes nothing returns nothing
    set udg_QuelthalasBreak[1]=0.00
    endfunction
    function InitTrig_Quelthalas_Gate_Life takes nothing returns nothing
    set gg_trg_Quelthalas_Gate_Life=CreateTrigger()
    call TriggerRegisterDeathEvent(gg_trg_Quelthalas_Gate_Life,gg_dest_LTe4_0614)
    call TriggerAddAction(gg_trg_Quelthalas_Gate_Life,function Trig_Quelthalas_Gate_Life_Actions)
    endfunction