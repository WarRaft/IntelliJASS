function Trig_Orange_Hero_Begin_Actions takes nothing returns nothing
    call SetPlayerTechMaxAllowedSwap('H005',0,Player(5))
    call SetPlayerTechMaxAllowedSwap('Hmkg',0,Player(5))
    call SetPlayerTechMaxAllowedSwap('Hpal',0,Player(5))
    call SetPlayerTechMaxAllowedSwap('Ucrl',0,Player(5))
    endfunction
    function InitTrig_Orange_Hero_Begin takes nothing returns nothing
    set gg_trg_Orange_Hero_Begin=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Orange_Hero_Begin,gg_unit_halt_0257,EVENT_UNIT_TRAIN_START)
    call TriggerRegisterUnitEvent(gg_trg_Orange_Hero_Begin,gg_unit_n00P_0266,EVENT_UNIT_TRAIN_START)
    call TriggerAddAction(gg_trg_Orange_Hero_Begin,function Trig_Orange_Hero_Begin_Actions)
    endfunction