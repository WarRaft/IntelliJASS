 function Trig_Sanctuary_Conditions takes nothing returns boolean
    if(not(GetSpellAbilityId()=='Aivs'))then
    return false
    endif
    return true
    endfunction
    function Trig_Sanctuary_Func001C takes nothing returns boolean
    if(not(UnitHasBuffBJ(GetOrderTargetUnit(),'BHds')==false))then
    return false
    endif
    return true
    endfunction
    function Trig_Sanctuary_Actions takes nothing returns nothing
    if(Trig_Sanctuary_Func001C())then
    set udg_SanctuaryTarget=GetSpellTargetUnit()
    call UnitRemoveBuffsBJ(bj_REMOVEBUFFS_NEGATIVE,udg_SanctuaryTarget)
    call UnitAddAbilityBJ('A03J',udg_SanctuaryTarget)
    call UnitAddAbilityBJ('A06N',udg_SanctuaryTarget)
    call UnitAddAbilityBJ('A02Z',udg_SanctuaryTarget)
    call PauseUnitBJ(true,udg_SanctuaryTarget)
    call PlaySoundOnUnitBJ(gg_snd_ResurrectTarget,100,udg_SanctuaryTarget)
    call DisableTrigger(GetTriggeringTrigger())
    call EnableTrigger(gg_trg_Sanctuary_Heal)
    call PolledWait((1.50*I2R(GetUnitAbilityLevelSwapped('Aivs',gg_unit_H018_0506))))
    call UnitRemoveBuffBJ('BIsv',udg_SanctuaryTarget)
    call UnitRemoveAbilityBJ('A02Z',udg_SanctuaryTarget)
    call UnitRemoveAbilityBJ('A03J',udg_SanctuaryTarget)
    call UnitRemoveAbilityBJ('A06N',udg_SanctuaryTarget)
    call UnitRemoveAbilityBJ('A02Z',udg_SanctuaryTarget)
    call PauseUnitBJ(false,udg_SanctuaryTarget)
    set udg_SanctuaryTarget=null
    call DisableTrigger(gg_trg_Sanctuary_Heal)
    call EnableTrigger(GetTriggeringTrigger())
    else
    endif
    endfunction
    function InitTrig_Sanctuary takes nothing returns nothing
    set gg_trg_Sanctuary=CreateTrigger()
    call TriggerAddCondition(gg_trg_Sanctuary,Condition(function Trig_Sanctuary_Conditions))
    call TriggerAddAction(gg_trg_Sanctuary,function Trig_Sanctuary_Actions)
    endfunction