function Trig_Blue_Hero_Cancel_Actions takes nothing returns nothing
    call SetPlayerTechMaxAllowedSwap('Hgam',1,Player(1))
    call SetPlayerTechMaxAllowedSwap('Hlgr',1,Player(1))
    call SetPlayerTechMaxAllowedSwap('Hpb1',1,Player(1))
    call SetPlayerTechMaxAllowedSwap('Edem',1,Player(1))
    endfunction
    function InitTrig_Blue_Hero_Cancel takes nothing returns nothing
    set gg_trg_Blue_Hero_Cancel=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Blue_Hero_Cancel,gg_unit_negm_0075,EVENT_UNIT_TRAIN_CANCEL)
    call TriggerRegisterUnitEvent(gg_trg_Blue_Hero_Cancel,gg_unit_n00P_0154,EVENT_UNIT_TRAIN_CANCEL)
    call TriggerAddAction(gg_trg_Blue_Hero_Cancel,function Trig_Blue_Hero_Cancel_Actions)
    endfunction