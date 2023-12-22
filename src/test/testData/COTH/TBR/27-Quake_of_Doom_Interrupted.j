function Trig_Quake_of_Doom_Interrupted_Conditions takes nothing returns boolean
    if(not(GetSpellAbilityId()=='AOeq'))then
    return false
    endif
    return true
    endfunction
    function Trig_Quake_of_Doom_Interrupted_Func001C takes nothing returns boolean
    if(not(UnitHasBuffBJ(gg_unit_N007_0522,'B02V')==false))then
    return false
    endif
    return true
    endfunction
    function Trig_Quake_of_Doom_Interrupted_Actions takes nothing returns nothing
    if(Trig_Quake_of_Doom_Interrupted_Func001C())then
    call IssueImmediateOrder(gg_unit_o00S_0248,"stop")
    else
    endif
    endfunction
    function InitTrig_Quake_of_Doom_Interrupted takes nothing returns nothing
    set gg_trg_Quake_of_Doom_Interrupted=CreateTrigger()
    call TriggerAddCondition(gg_trg_Quake_of_Doom_Interrupted,Condition(function Trig_Quake_of_Doom_Interrupted_Conditions))
    call TriggerAddAction(gg_trg_Quake_of_Doom_Interrupted,function Trig_Quake_of_Doom_Interrupted_Actions)
    endfunction