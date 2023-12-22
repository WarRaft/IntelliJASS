function Trig_Green_Hero_Cancel_Actions takes nothing returns nothing
    call SetPlayerTechMaxAllowedSwap('Hvwd',1,Player(6))
    call SetPlayerTechMaxAllowedSwap('Hkal',1,Player(6))
    call SetPlayerTechMaxAllowedSwap('H01Q',1,Player(6))
    call SetPlayerTechMaxAllowedSwap('Hamg',1,Player(6))
    endfunction
    function InitTrig_Green_Hero_Cancel takes nothing returns nothing
    set gg_trg_Green_Hero_Cancel=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Green_Hero_Cancel,gg_unit_n00P_0284,EVENT_UNIT_TRAIN_CANCEL)
    call TriggerRegisterUnitEvent(gg_trg_Green_Hero_Cancel,gg_unit_n00V_0272,EVENT_UNIT_TRAIN_CANCEL)
    call TriggerAddAction(gg_trg_Green_Hero_Cancel,function Trig_Green_Hero_Cancel_Actions)
    endfunction