function Trig_Corpse_Explosion_Reset_Conditions takes nothing returns boolean
    if(not(GetSpellAbilityId()=='ANcl'))then
    return false
    endif
    return true
    endfunction
    function Trig_Corpse_Explosion_Reset_Actions takes nothing returns nothing
    call TriggerSleepAction(0.20)
    call ResetUnitAnimation(gg_unit_Hvsh_0480)
    endfunction
    function InitTrig_Corpse_Explosion_Reset takes nothing returns nothing
    set gg_trg_Corpse_Explosion_Reset=CreateTrigger()
    call TriggerAddCondition(gg_trg_Corpse_Explosion_Reset,Condition(function Trig_Corpse_Explosion_Reset_Conditions))
    call TriggerAddAction(gg_trg_Corpse_Explosion_Reset,function Trig_Corpse_Explosion_Reset_Actions)
    endfunction