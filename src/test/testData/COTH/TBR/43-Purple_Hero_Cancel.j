function Trig_Purple_Hero_Cancel_Actions takes nothing returns nothing
    call SetPlayerTechMaxAllowedSwap('Hant',1,Player(3))
    call SetPlayerTechMaxAllowedSwap('Hjai',1,Player(3))
    call SetPlayerTechMaxAllowedSwap('Hblm',1,Player(3))
    call SetPlayerTechMaxAllowedSwap('Ewar',1,Player(3))
    endfunction
    function InitTrig_Purple_Hero_Cancel takes nothing returns nothing
    set gg_trg_Purple_Hero_Cancel=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Purple_Hero_Cancel,gg_unit_nmgv_0202,EVENT_UNIT_TRAIN_CANCEL)
    call TriggerRegisterUnitEvent(gg_trg_Purple_Hero_Cancel,gg_unit_n00P_0210,EVENT_UNIT_TRAIN_CANCEL)
    call TriggerAddAction(gg_trg_Purple_Hero_Cancel,function Trig_Purple_Hero_Cancel_Actions)
    endfunction