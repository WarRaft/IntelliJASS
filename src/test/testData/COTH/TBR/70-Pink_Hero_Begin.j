function Trig_Pink_Hero_Begin_Actions takes nothing returns nothing
    call SetPlayerTechMaxAllowedSwap('Hpb2',0,Player(7))
    call SetPlayerTechMaxAllowedSwap('H018',0,Player(7))
    call SetPlayerTechMaxAllowedSwap('Hvsh',0,Player(7))
    call SetPlayerTechMaxAllowedSwap('Nalc',0,Player(7))
    endfunction
    function InitTrig_Pink_Hero_Begin takes nothing returns nothing
    set gg_trg_Pink_Hero_Begin=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Pink_Hero_Begin,gg_unit_n00P_0298,EVENT_UNIT_TRAIN_START)
    call TriggerRegisterUnitEvent(gg_trg_Pink_Hero_Begin,gg_unit_n00S_0289,EVENT_UNIT_TRAIN_START)
    call TriggerAddAction(gg_trg_Pink_Hero_Begin,function Trig_Pink_Hero_Begin_Actions)
    endfunction