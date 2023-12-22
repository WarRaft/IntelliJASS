function Trig_Duel_Mishan_Damage_Actions takes nothing returns nothing
    call SetUnitLifeBJ(gg_unit_Emoo_0488,(GetUnitStateSwap(UNIT_STATE_LIFE,gg_unit_Emoo_0488)+(GetEventDamage()*(0.15+(0.05*I2R(GetUnitAbilityLevelSwapped('A02F',gg_unit_Emoo_0488)))))))
    endfunction
    function InitTrig_Duel_Mishan_Damage takes nothing returns nothing
    set gg_trg_Duel_Mishan_Damage=CreateTrigger()
    call DisableTrigger(gg_trg_Duel_Mishan_Damage)
    call TriggerRegisterUnitEvent(gg_trg_Duel_Mishan_Damage,gg_unit_Emoo_0488,EVENT_UNIT_DAMAGED)
    call TriggerAddAction(gg_trg_Duel_Mishan_Damage,function Trig_Duel_Mishan_Damage_Actions)
    endfunction