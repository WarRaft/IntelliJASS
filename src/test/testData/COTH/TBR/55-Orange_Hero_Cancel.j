function Trig_Orange_Hero_Cancel_Actions takes nothing returns nothing
    call SetPlayerTechMaxAllowedSwap('H005',1,Player(5))
    call SetPlayerTechMaxAllowedSwap('Hmkg',1,Player(5))
    call SetPlayerTechMaxAllowedSwap('Hpal',1,Player(5))
    call SetPlayerTechMaxAllowedSwap('Ucrl',1,Player(5))
    endfunction
    function InitTrig_Orange_Hero_Cancel takes nothing returns nothing
    set gg_trg_Orange_Hero_Cancel=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Orange_Hero_Cancel,gg_unit_halt_0257,EVENT_UNIT_TRAIN_CANCEL)
    call TriggerRegisterUnitEvent(gg_trg_Orange_Hero_Cancel,gg_unit_n00P_0266,EVENT_UNIT_TRAIN_CANCEL)
    call TriggerAddAction(gg_trg_Orange_Hero_Cancel,function Trig_Orange_Hero_Cancel_Actions)
    endfunction