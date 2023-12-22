function Trig_Dark_Portal_Warning_Conditions takes nothing returns boolean
    if(not(IsUnitEnemy(GetAttacker(),Player(4))==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Dark_Portal_Warning_Actions takes nothing returns nothing
    call DisplayTextToForce(GetPlayersAllies(Player(4)),"The Dark Portal is under attack! This invasion will surely fail if it falls!")
    call DisableTrigger(GetTriggeringTrigger())
    call TriggerSleepAction(60.00)
    call EnableTrigger(GetTriggeringTrigger())
    endfunction
    function InitTrig_Dark_Portal_Warning takes nothing returns nothing
    set gg_trg_Dark_Portal_Warning=CreateTrigger()
    call DisableTrigger(gg_trg_Dark_Portal_Warning)
    call TriggerRegisterUnitEvent(gg_trg_Dark_Portal_Warning,gg_unit_ndmg_0236,EVENT_UNIT_ATTACKED)
    call TriggerAddCondition(gg_trg_Dark_Portal_Warning,Condition(function Trig_Dark_Portal_Warning_Conditions))
    call TriggerAddAction(gg_trg_Dark_Portal_Warning,function Trig_Dark_Portal_Warning_Actions)
    endfunction