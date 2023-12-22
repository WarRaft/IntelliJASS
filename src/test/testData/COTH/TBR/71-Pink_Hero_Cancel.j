function Trig_Pink_Hero_Cancel_Actions takes nothing returns nothing
    call SetPlayerTechMaxAllowedSwap('Hpb2',1,Player(7))
    call SetPlayerTechMaxAllowedSwap('H018',1,Player(7))
    call SetPlayerTechMaxAllowedSwap('Hvsh',1,Player(7))
    call SetPlayerTechMaxAllowedSwap('Nalc',1,Player(7))
    endfunction
    function InitTrig_Pink_Hero_Cancel takes nothing returns nothing
    set gg_trg_Pink_Hero_Cancel=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Pink_Hero_Cancel,gg_unit_n00P_0298,EVENT_UNIT_TRAIN_CANCEL)
    call TriggerRegisterUnitEvent(gg_trg_Pink_Hero_Cancel,gg_unit_n00S_0289,EVENT_UNIT_TRAIN_CANCEL)
    call TriggerAddAction(gg_trg_Pink_Hero_Cancel,function Trig_Pink_Hero_Cancel_Actions)
    endfunction