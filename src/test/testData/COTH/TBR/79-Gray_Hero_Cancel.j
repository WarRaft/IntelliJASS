function Trig_Gray_Hero_Cancel_Actions takes nothing returns nothing
    call SetPlayerTechMaxAllowedSwap('H01S',1,Player(8))
    call SetPlayerTechMaxAllowedSwap('Hart',1,Player(8))
    call SetPlayerTechMaxAllowedSwap('Harf',1,Player(8))
    call SetPlayerTechMaxAllowedSwap('Hmgd',1,Player(8))
    endfunction
    function InitTrig_Gray_Hero_Cancel takes nothing returns nothing
    set gg_trg_Gray_Hero_Cancel=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Gray_Hero_Cancel,gg_unit_n00T_0340,EVENT_UNIT_TRAIN_CANCEL)
    call TriggerRegisterUnitEvent(gg_trg_Gray_Hero_Cancel,gg_unit_n00P_0337,EVENT_UNIT_TRAIN_CANCEL)
    call TriggerAddAction(gg_trg_Gray_Hero_Cancel,function Trig_Gray_Hero_Cancel_Actions)
    endfunction