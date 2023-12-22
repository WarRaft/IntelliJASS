function Trig_Purple_Hero_Begin_Actions takes nothing returns nothing
    call SetPlayerTechMaxAllowedSwap('Hant',0,Player(3))
    call SetPlayerTechMaxAllowedSwap('Hjai',0,Player(3))
    call SetPlayerTechMaxAllowedSwap('Hblm',0,Player(3))
    call SetPlayerTechMaxAllowedSwap('Ewar',0,Player(3))
    endfunction
    function InitTrig_Purple_Hero_Begin takes nothing returns nothing
    set gg_trg_Purple_Hero_Begin=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Purple_Hero_Begin,gg_unit_nmgv_0202,EVENT_UNIT_TRAIN_START)
    call TriggerRegisterUnitEvent(gg_trg_Purple_Hero_Begin,gg_unit_n00P_0210,EVENT_UNIT_TRAIN_START)
    call TriggerAddAction(gg_trg_Purple_Hero_Begin,function Trig_Purple_Hero_Begin_Actions)
    endfunction