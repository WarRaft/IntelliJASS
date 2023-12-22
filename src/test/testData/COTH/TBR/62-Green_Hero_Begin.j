function Trig_Green_Hero_Begin_Actions takes nothing returns nothing
    call SetPlayerTechMaxAllowedSwap('Hvwd',0,Player(6))
    call SetPlayerTechMaxAllowedSwap('Hkal',0,Player(6))
    call SetPlayerTechMaxAllowedSwap('H01Q',0,Player(6))
    call SetPlayerTechMaxAllowedSwap('Hamg',0,Player(6))
    endfunction
    function InitTrig_Green_Hero_Begin takes nothing returns nothing
    set gg_trg_Green_Hero_Begin=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Green_Hero_Begin,gg_unit_n00V_0272,EVENT_UNIT_TRAIN_START)
    call TriggerRegisterUnitEvent(gg_trg_Green_Hero_Begin,gg_unit_n00P_0284,EVENT_UNIT_TRAIN_START)
    call TriggerAddAction(gg_trg_Green_Hero_Begin,function Trig_Green_Hero_Begin_Actions)
    endfunction