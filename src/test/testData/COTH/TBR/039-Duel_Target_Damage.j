function Trig_Duel_Target_Damage_Conditions takes nothing returns boolean
    if(not(GetAttackedUnitBJ()==udg_DuelTarget))then
    return false
    endif
    if(not(GetAttacker()==gg_unit_Emoo_0488))then
    return false
    endif
    return true
    endfunction
    function Trig_Duel_Target_Damage_Actions takes nothing returns nothing
    set udg_DuelCounter=(udg_DuelCounter+1)
    set udg_DuelDamage=(udg_DuelDamage+udg_WaycrestDamage)
    endfunction
    function InitTrig_Duel_Target_Damage takes nothing returns nothing
    set gg_trg_Duel_Target_Damage=CreateTrigger()
    call DisableTrigger(gg_trg_Duel_Target_Damage)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Duel_Target_Damage,Player(PLAYER_NEUTRAL_AGGRESSIVE),EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Duel_Target_Damage,Player(4),EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Duel_Target_Damage,Player(9),EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Duel_Target_Damage,Player(10),EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Duel_Target_Damage,Player(11),EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(gg_trg_Duel_Target_Damage,Condition(function Trig_Duel_Target_Damage_Conditions))
    call TriggerAddAction(gg_trg_Duel_Target_Damage,function Trig_Duel_Target_Damage_Actions)
    endfunction