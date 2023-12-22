function Trig_Maim_Starts_Func001Func007Func001Func001Func005Func001Func001C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A05N',GetTriggerUnit())==3))then
    return false
    endif
    return true
    endfunction
    function Trig_Maim_Starts_Func001Func007Func001Func001Func005Func001C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A05N',GetTriggerUnit())==2))then
    return false
    endif
    return true
    endfunction
    function Trig_Maim_Starts_Func001Func007Func001Func001Func005C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A05N',GetTriggerUnit())==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Maim_Starts_Func001Func007Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A0AP'))then
    return false
    endif
    return true
    endfunction
    function Trig_Maim_Starts_Func001Func007C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A0B8'))then
    return false
    endif
    if(not(UnitHasBuffBJ(GetSpellTargetUnit(),'BHds')==false))then
    return false
    endif
    if(not(UnitHasBuffBJ(GetSpellTargetUnit(),'B03N')==false))then
    return false
    endif
    if(not(UnitHasBuffBJ(GetSpellTargetUnit(),'BIsv')==false))then
    return false
    endif
    return true
    endfunction
    function Trig_Maim_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='ACro'))then
    return false
    endif
    return true
    endfunction
    function Trig_Maim_Starts_Actions takes nothing returns nothing
    if(Trig_Maim_Starts_Func001C())then
    set udg_MaimCounter=(udg_MaimCounter+1)
    call PlaySoundOnUnitBJ(gg_snd_CentaurYesAttack1,100,gg_unit_Obla_0496)
    call PolledWait(12.00)
    call UnitRemoveAbilityBJ('A0B7',gg_unit_Obla_0496)
    call UnitRemoveAbilityBJ('A069',gg_unit_Obla_0496)
    else
    if(Trig_Maim_Starts_Func001Func007C())then
    call UnitDamageTargetBJ(gg_unit_Obla_0496,GetSpellTargetUnit(),((GetUnitLifePercent(GetSpellTargetUnit())*(I2R(GetUnitAbilityLevelSwapped('A0B8',gg_unit_Obla_0496))+3.00))/ 2.00),ATTACK_TYPE_MELEE,DAMAGE_TYPE_UNIVERSAL)
    call UnitDamageTargetBJ(gg_unit_Obla_0496,GetSpellTargetUnit(),((GetUnitLifePercent(GetSpellTargetUnit())*(I2R(GetUnitAbilityLevelSwapped('A0B8',gg_unit_Obla_0496))+3.00))/ 2.00),ATTACK_TYPE_MELEE,DAMAGE_TYPE_NORMAL)
    else
    if(Trig_Maim_Starts_Func001Func007Func001Func001C())then
    set udg_MaimCounter=(udg_MaimCounter+3)
    call UnitAddAbilityBJ('Aspb',GetTriggerUnit())
    call SetPlayerAbilityAvailableBJ(false,'Aspb',GetOwningPlayer(gg_unit_Obla_0496))
    call PlaySoundOnUnitBJ(gg_snd_TaurenWarcry1,100,gg_unit_Obla_0496)
    if(Trig_Maim_Starts_Func001Func007Func001Func001Func005C())then
    call SetUnitAbilityLevelSwapped('Aspb',GetTriggerUnit(),1)
    call UnitAddAbilityBJ('A095',GetTriggerUnit())
    else
    if(Trig_Maim_Starts_Func001Func007Func001Func001Func005Func001C())then
    call SetUnitAbilityLevelSwapped('Aspb',GetTriggerUnit(),2)
    call UnitAddAbilityBJ('A096',GetTriggerUnit())
    else
    if(Trig_Maim_Starts_Func001Func007Func001Func001Func005Func001Func001C())then
    call SetUnitAbilityLevelSwapped('Aspb',GetTriggerUnit(),3)
    call UnitAddAbilityBJ('A094',GetTriggerUnit())
    else
    endif
    endif
    endif
    call PolledWait(30.00)
    set udg_MaimCounter=(udg_MaimCounter-3)
    call UnitRemoveAbilityBJ('Aspb',gg_unit_Obla_0496)
    call UnitRemoveAbilityBJ('A095',gg_unit_Obla_0496)
    call UnitRemoveAbilityBJ('A096',gg_unit_Obla_0496)
    call UnitRemoveAbilityBJ('A094',gg_unit_Obla_0496)
    else
    endif
    endif
    endif
    endfunction
    function InitTrig_Maim_Starts takes nothing returns nothing
    set gg_trg_Maim_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Maim_Starts,function Trig_Maim_Starts_Actions)
    endfunction