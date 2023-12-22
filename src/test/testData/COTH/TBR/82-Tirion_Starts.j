
    function Trig_Tirion_Starts_Func001Func002C takes nothing returns boolean
    if(not(UnitHasBuffBJ(GetOrderTargetUnit(),'BIsv')==false))then
    return false
    endif
    return true
    endfunction
    function Trig_Tirion_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A07L'))then
    return false
    endif
    return true
    endfunction
    function Trig_Tirion_Starts_Actions takes nothing returns nothing
    if(Trig_Tirion_Starts_Func001C())then
    if(Trig_Tirion_Starts_Func001Func002C())then
    set udg_DivineShieldTarget=GetSpellTargetUnit()
    call UnitRemoveBuffsBJ(bj_REMOVEBUFFS_NEGATIVE,udg_DivineShieldTarget)
    call UnitAddAbilityBJ('A03J',udg_DivineShieldTarget)
    call UnitAddAbilityBJ('A06N',udg_DivineShieldTarget)
    call UnitAddAbilityBJ('A07Q',udg_DivineShieldTarget)
    call PlaySoundOnUnitBJ(gg_snd_TirionShield,100,udg_DivineShieldTarget)
    call DisableTrigger(GetTriggeringTrigger())
    call PolledWait(9.00)
    call UnitRemoveBuffBJ('BHds',udg_DivineShieldTarget)
    call UnitRemoveAbilityBJ('A03J',udg_DivineShieldTarget)
    call UnitRemoveAbilityBJ('A06N',udg_DivineShieldTarget)
    call UnitRemoveAbilityBJ('A07Q',udg_DivineShieldTarget)
    set udg_DivineShieldTarget=null
    call EnableTrigger(GetTriggeringTrigger())
    else
    endif
    else
    endif
    endfunction
    function InitTrig_Tirion_Starts takes nothing returns nothing
    set gg_trg_Tirion_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Tirion_Starts,function Trig_Tirion_Starts_Actions)
    endfunction