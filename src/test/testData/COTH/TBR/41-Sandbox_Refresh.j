function Trig_Sandbox_Refresh_Func002A takes nothing returns nothing
    call UnitResetCooldown(GetEnumUnit())
    call SetUnitLifePercentBJ(GetEnumUnit(),100)
    call SetUnitManaPercentBJ(GetEnumUnit(),100)
    endfunction
    function Trig_Sandbox_Refresh_Actions takes nothing returns nothing
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsInRectAll(GetPlayableMapRect()),function Trig_Sandbox_Refresh_Func002A)
    endfunction
    function InitTrig_Sandbox_Refresh takes nothing returns nothing
    set gg_trg_Sandbox_Refresh=CreateTrigger()
    call DisableTrigger(gg_trg_Sandbox_Refresh)
    call TriggerRegisterPlayerChatEvent(gg_trg_Sandbox_Refresh,Player(0),"-refresh",true)
    call TriggerRegisterPlayerChatEvent(gg_trg_Sandbox_Refresh,Player(1),"-refresh",true)
    call TriggerRegisterPlayerChatEvent(gg_trg_Sandbox_Refresh,Player(2),"-refresh",true)
    call TriggerRegisterPlayerChatEvent(gg_trg_Sandbox_Refresh,Player(3),"-refresh",true)
    call TriggerRegisterPlayerChatEvent(gg_trg_Sandbox_Refresh,Player(4),"-refresh",true)
    call TriggerRegisterPlayerChatEvent(gg_trg_Sandbox_Refresh,Player(5),"-refresh",true)
    call TriggerRegisterPlayerChatEvent(gg_trg_Sandbox_Refresh,Player(6),"-refresh",true)
    call TriggerRegisterPlayerChatEvent(gg_trg_Sandbox_Refresh,Player(7),"-refresh",true)
    call TriggerRegisterPlayerChatEvent(gg_trg_Sandbox_Refresh,Player(8),"-refresh",true)
    call TriggerRegisterPlayerChatEvent(gg_trg_Sandbox_Refresh,Player(9),"-refresh",true)
    call TriggerRegisterPlayerChatEvent(gg_trg_Sandbox_Refresh,Player(10),"-refresh",true)
    call TriggerRegisterPlayerChatEvent(gg_trg_Sandbox_Refresh,Player(11),"-refresh",true)
    call TriggerAddAction(gg_trg_Sandbox_Refresh,function Trig_Sandbox_Refresh_Actions)
    endfunction