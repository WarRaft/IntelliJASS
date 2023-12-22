function Trig_Lordaeron_First_Gate_Life_Actions takes nothing returns nothing
    set udg_LordaeronFirstBreak[1]=0.00
    endfunction
    function InitTrig_Lordaeron_First_Gate_Life takes nothing returns nothing
    set gg_trg_Lordaeron_First_Gate_Life=CreateTrigger()
    call TriggerRegisterDeathEvent(gg_trg_Lordaeron_First_Gate_Life,gg_dest_LTg3_1293)
    call TriggerAddAction(gg_trg_Lordaeron_First_Gate_Life,function Trig_Lordaeron_First_Gate_Life_Actions)
    endfunction