function Corrupted_Blood_Ends takes nothing returns nothing
    call UnitAddAbilityBJ('A0AV',gg_unit_Opgh_0483)
    call UnitRemoveAbilityBJ('A0AV',gg_unit_Opgh_0483)
    call UnitRemoveAbilityBJ('A0BC',gg_unit_Opgh_0483)
    call UnitRemoveAbilityBJ('A0C6',gg_unit_Opgh_0483)
    call UnitRemoveAbilityBJ('A090',gg_unit_Opgh_0483)
    call UnitRemoveAbilityBJ('A0CU',gg_unit_Opgh_0483)
    call UnitRemoveAbilityBJ('A0CW',gg_unit_Opgh_0483)
    call UnitRemoveAbilityBJ('A0CX',gg_unit_Opgh_0483)
    call DisableTrigger(GetTriggeringTrigger())
endfunction
function Trig_Corrupted_Blood_Conditions takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A09C'))then
    return false
    endif
    return true
    endfunction
    function Trig_Corrupted_Blood_Func004Func006Func006C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A09C',gg_unit_Opgh_0483)==3))then
    return false
    endif
    return true
    endfunction
    function Trig_Corrupted_Blood_Func004Func006C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A09C',gg_unit_Opgh_0483)==2))then
    return false
    endif
    return true
    endfunction
    function Trig_Corrupted_Blood_Func004C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A09C',gg_unit_Opgh_0483)==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Corrupted_Blood_Actions takes nothing returns nothing
    call UnitAddAbilityBJ('A0BC',gg_unit_Opgh_0483)
    call UnitAddAbilityBJ('A0C6',gg_unit_Opgh_0483)
    call UnitAddAbilityBJ('A090',gg_unit_Opgh_0483)
    if(Trig_Corrupted_Blood_Func004C())then
    call UnitAddAbilityBJ('A0CU',gg_unit_Opgh_0483)
    call SetUnitAbilityLevelSwapped('A0BC',gg_unit_Opgh_0483,1)
    call SetUnitAbilityLevelSwapped('A0C6',gg_unit_Opgh_0483,1)
    call SetUnitAbilityLevelSwapped('A090',gg_unit_Opgh_0483,1)
    else
    if(Trig_Corrupted_Blood_Func004Func006C())then
    call UnitAddAbilityBJ('A0CW',gg_unit_Opgh_0483)
    call SetUnitAbilityLevelSwapped('A0BC',gg_unit_Opgh_0483,2)
    call SetUnitAbilityLevelSwapped('A0C6',gg_unit_Opgh_0483,2)
    call SetUnitAbilityLevelSwapped('A090',gg_unit_Opgh_0483,2)
    else
    if(Trig_Corrupted_Blood_Func004Func006Func006C())then
    call UnitAddAbilityBJ('A0CX',gg_unit_Opgh_0483)
    call SetUnitAbilityLevelSwapped('A0BC',gg_unit_Opgh_0483,3)
    call SetUnitAbilityLevelSwapped('A0C6',gg_unit_Opgh_0483,3)
    call SetUnitAbilityLevelSwapped('A090',gg_unit_Opgh_0483,3)
    else
    endif
    endif
    endif
    call TimerStart(udg_CorruptedBloodTimer, 30, false, function Corrupted_Blood_Ends)
    endfunction
    function InitTrig_Corrupted_Blood takes nothing returns nothing
    set gg_trg_Corrupted_Blood=CreateTrigger()
    call TriggerAddCondition(gg_trg_Corrupted_Blood,Condition(function Trig_Corrupted_Blood_Conditions))
    call TriggerAddAction(gg_trg_Corrupted_Blood,function Trig_Corrupted_Blood_Actions)
    endfunction