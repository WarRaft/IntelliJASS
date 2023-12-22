function Trig_Blackrock_Warning_Conditions takes nothing returns boolean
    if(not(IsUnitEnemy(GetAttacker(),Player(11))==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Blackrock_Warning_Actions takes nothing returns nothing
    call DisplayTextToForce(GetPlayersAllies(Player(4)),"Blackrock Spire is under attack by the human slime! Defend our citadel at all costs!")
    call DisableTrigger(GetTriggeringTrigger())
    call TriggerSleepAction(60.00)
    call EnableTrigger(GetTriggeringTrigger())
    endfunction
    function InitTrig_Blackrock_Warning takes nothing returns nothing
    set gg_trg_Blackrock_Warning=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Blackrock_Warning,gg_unit_otto_0421,EVENT_UNIT_ATTACKED)
    call TriggerAddCondition(gg_trg_Blackrock_Warning,Condition(function Trig_Blackrock_Warning_Conditions))
    call TriggerAddAction(gg_trg_Blackrock_Warning,function Trig_Blackrock_Warning_Actions)
    endfunction