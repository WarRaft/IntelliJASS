function Trig_Refuge_Zone_Warning_Conditions takes nothing returns boolean
    if(not(IsUnitAlly(GetTriggerUnit(),Player(4))==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Refuge_Zone_Warning_Func001Func001001001 takes nothing returns boolean
    return(GetOwningPlayer(GetTriggerUnit())==GetFilterPlayer())
    endfunction
    function Trig_Refuge_Zone_Warning_Func001Func006001001 takes nothing returns boolean
    return(GetOwningPlayer(GetTriggerUnit())==GetFilterPlayer())
    endfunction
    function Trig_Refuge_Zone_Warning_Func001C takes nothing returns boolean
    if(not(GetOwningPlayer(GetTriggerUnit())!=Player(4)))then
    return false
    endif
    return true
    endfunction
    function Trig_Refuge_Zone_Warning_Actions takes nothing returns nothing
    if(Trig_Refuge_Zone_Warning_Func001C())then
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Refuge_Zone_Warning_Func001Func006001001)),"Warchief, instead of chasing these dogs in the mountains where there is nothing to gain, we should concentrate on destroying their last major cities! ")
    call DisableTrigger(GetTriggeringTrigger())
    call TriggerSleepAction(60.00)
    call EnableTrigger(GetTriggeringTrigger())
    else
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Refuge_Zone_Warning_Func001Func001001001)),"Commander, instead of chasing these dogs in the mountains where there is nothing to gain, we should concentrate on destroying their last major cities! ")
    call DisableTrigger(GetTriggeringTrigger())
    call TriggerSleepAction(60.00)
    call EnableTrigger(GetTriggeringTrigger())
    endif
    endfunction
    function InitTrig_Refuge_Zone_Warning takes nothing returns nothing
    set gg_trg_Refuge_Zone_Warning=CreateTrigger()
    call TriggerRegisterEnterRectSimple(gg_trg_Refuge_Zone_Warning,gg_rct_Refuge_Zepplin)
    call TriggerAddCondition(gg_trg_Refuge_Zone_Warning,Condition(function Trig_Refuge_Zone_Warning_Conditions))
    call TriggerAddAction(gg_trg_Refuge_Zone_Warning,function Trig_Refuge_Zone_Warning_Actions)
    endfunction