    function Trig_Kilrogg_Starts_Func001Func009C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A03Y'))then
    return false
    endif
    return true
    endfunction
    function Trig_Kilrogg_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='AOww'))then
    return false
    endif
    return true
    endfunction
    function Trig_Kilrogg_Starts_Actions takes nothing returns nothing
    if(Trig_Kilrogg_Starts_Func001C())then
    call EnableTrigger(gg_trg_Bladestorm_Damage_Reduce)
    call EnableTrigger(gg_trg_Bladestorm_Damage)
    call UnitAddAbilityBJ('A0BM',gg_unit_Osam_0526)
    call PolledWait((1+I2R(GetUnitAbilityLevelSwapped('AOww',gg_unit_Osam_0526))))
    call UnitRemoveAbilityBJ('A0BM',gg_unit_Osam_0526)
    call DisableTrigger(gg_trg_Bladestorm_Damage_Reduce)
    call DisableTrigger(gg_trg_Bladestorm_Damage)
    else
    if(Trig_Kilrogg_Starts_Func001Func009C())then
    call UnitDamageTargetBJ(GetTriggerUnit(),GetSpellTargetUnit(),((I2R(GetUnitAbilityLevelSwapped('A03Y',GetTriggerUnit()))*75.00)+75.00),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    else
    endif
    endif
    endfunction
    function InitTrig_Kilrogg_Starts takes nothing returns nothing
    set gg_trg_Kilrogg_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Kilrogg_Starts,function Trig_Kilrogg_Starts_Actions)
    endfunction