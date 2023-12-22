function Trig_Invulerability_Remove_Actions takes nothing returns nothing
    call UnitRemoveAbilityBJ('A06N',GetRevivingUnit())
    call UnitRemoveAbilityBJ('A03J',GetRevivingUnit())
    endfunction
    function InitTrig_Invulerability_Remove takes nothing returns nothing
    set gg_trg_Invulerability_Remove=CreateTrigger()
    call DisableTrigger(gg_trg_Invulerability_Remove)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Invulerability_Remove,Player(0),EVENT_PLAYER_HERO_REVIVE_FINISH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Invulerability_Remove,Player(1),EVENT_PLAYER_HERO_REVIVE_FINISH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Invulerability_Remove,Player(2),EVENT_PLAYER_HERO_REVIVE_FINISH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Invulerability_Remove,Player(3),EVENT_PLAYER_HERO_REVIVE_FINISH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Invulerability_Remove,Player(5),EVENT_PLAYER_HERO_REVIVE_FINISH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Invulerability_Remove,Player(6),EVENT_PLAYER_HERO_REVIVE_FINISH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Invulerability_Remove,Player(7),EVENT_PLAYER_HERO_REVIVE_FINISH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Invulerability_Remove,Player(8),EVENT_PLAYER_HERO_REVIVE_FINISH)
    call TriggerAddAction(gg_trg_Invulerability_Remove,function Trig_Invulerability_Remove_Actions)
    endfunction