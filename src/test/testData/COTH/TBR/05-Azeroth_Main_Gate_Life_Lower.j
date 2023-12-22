function Trig_Azeroth_Main_Gate_Life_Lower_Actions takes nothing returns nothing
    set udg_AzerothMainbreakLower[1]=0.00
    endfunction
    function InitTrig_Azeroth_Main_Gate_Life_Lower takes nothing returns nothing
    set gg_trg_Azeroth_Main_Gate_Life_Lower=CreateTrigger()
    call TriggerRegisterDeathEvent(gg_trg_Azeroth_Main_Gate_Life_Lower,gg_dest_LTg3_0139)
    call TriggerAddAction(gg_trg_Azeroth_Main_Gate_Life_Lower,function Trig_Azeroth_Main_Gate_Life_Lower_Actions)
    endfunction