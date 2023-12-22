function Trig_Azeroth_Throne_Gate_Life_Actions takes nothing returns nothing
    set udg_AzerothThroneBreak[1]=0.00
    endfunction
    function InitTrig_Azeroth_Throne_Gate_Life takes nothing returns nothing
    set gg_trg_Azeroth_Throne_Gate_Life=CreateTrigger()
    call TriggerRegisterDeathEvent(gg_trg_Azeroth_Throne_Gate_Life,gg_dest_LTg1_0033)
    call TriggerAddAction(gg_trg_Azeroth_Throne_Gate_Life,function Trig_Azeroth_Throne_Gate_Life_Actions)
    endfunction