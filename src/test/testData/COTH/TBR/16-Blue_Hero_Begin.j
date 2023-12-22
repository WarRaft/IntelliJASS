function Trig_Blue_Hero_Begin_Actions takes nothing returns nothing
    call SetPlayerTechMaxAllowedSwap('Hgam',0,Player(1))
    call SetPlayerTechMaxAllowedSwap('Hlgr',0,Player(1))
    call SetPlayerTechMaxAllowedSwap('Hpb1',0,Player(1))
    call SetPlayerTechMaxAllowedSwap('Edem',0,Player(1))
    endfunction
    function InitTrig_Blue_Hero_Begin takes nothing returns nothing
    set gg_trg_Blue_Hero_Begin=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Blue_Hero_Begin,gg_unit_negm_0075,EVENT_UNIT_TRAIN_START)
    call TriggerRegisterUnitEvent(gg_trg_Blue_Hero_Begin,gg_unit_n00P_0154,EVENT_UNIT_TRAIN_START)
    call TriggerAddAction(gg_trg_Blue_Hero_Begin,function Trig_Blue_Hero_Begin_Actions)
    endfunction