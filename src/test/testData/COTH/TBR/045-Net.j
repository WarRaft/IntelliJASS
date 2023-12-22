function Trig_Net_Conditions takes nothing returns boolean
    if(not(GetSpellAbilityId()=='Aens'))then
    return false
    endif
    return true
    endfunction
    function Trig_Net_Func001Func002001001 takes nothing returns boolean
    return(GetFilterPlayer()==Player(2))
    endfunction
    function Trig_Net_Func001C takes nothing returns boolean
    if(not(UnitHasBuffBJ(GetSpellTargetUnit(),'Bams')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Net_Actions takes nothing returns nothing
    if(Trig_Net_Func001C())then
    call IssueImmediateOrder(GetSpellAbilityUnit(),"stop")
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Net_Func001Func002001001)),"|c00FFD700That unit is immune to magic.|r ")
    else
    endif
    endfunction
    function InitTrig_Net takes nothing returns nothing
    set gg_trg_Net=CreateTrigger()
    call TriggerAddCondition(gg_trg_Net,Condition(function Trig_Net_Conditions))
    call TriggerAddAction(gg_trg_Net,function Trig_Net_Actions)
    endfunction