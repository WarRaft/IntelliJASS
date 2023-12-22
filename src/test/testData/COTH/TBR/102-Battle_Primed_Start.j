function Trig_Battle_Primed_End_Actions takes nothing returns nothing
    call SetUnitOwner(gg_unit_o008_0533,Player(PLAYER_NEUTRAL_AGGRESSIVE),true)
    endfunction

function Trig_Battle_Primed_Start_Func002C takes nothing returns boolean
    if((GetSpellAbilityId()=='A0DT'))then
    return true
    endif
    if((GetSpellAbilityId()=='A0FG'))then
    return true
    endif
    return false
    endfunction
    function Trig_Battle_Primed_Start_Conditions takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A0FH',gg_unit_Nalc_0495)>=1))then
    return false
    endif
    if(not Trig_Battle_Primed_Start_Func002C())then
    return false
    endif
    return true
    endfunction
    function Trig_Battle_Primed_Start_Func003C takes nothing returns boolean
    if(not(GetOwningPlayer(gg_unit_o008_0533)!=Player(7)))then
    return false
    endif
    return true
    endfunction
    function Trig_Battle_Primed_Start_Actions takes nothing returns nothing
    if(Trig_Battle_Primed_Start_Func003C())then
    call SetUnitOwner(gg_unit_o008_0533,Player(7),true)
    call SetUnitAbilityLevelSwapped('A0FI',gg_unit_o008_0533,GetUnitAbilityLevelSwapped('A0FH',gg_unit_Nalc_0495))
    call TimerStart(udg_BattlePrimedTimer,8, false, function Trig_Battle_Primed_End_Actions)
    else
    call SetUnitAbilityLevelSwapped('A0FI',gg_unit_o008_0533,GetUnitAbilityLevelSwapped('A0FH',gg_unit_Nalc_0495))
    call PauseTimerBJ(true,udg_BattlePrimedTimer)
    call TimerStart(udg_BattlePrimedTimer,8, false, function Trig_Battle_Primed_End_Actions)
    endif
    endfunction
    function InitTrig_Battle_Primed_Start takes nothing returns nothing
    set gg_trg_Battle_Primed_Start=CreateTrigger()
    call TriggerAddCondition(gg_trg_Battle_Primed_Start,Condition(function Trig_Battle_Primed_Start_Conditions))
    call TriggerAddAction(gg_trg_Battle_Primed_Start,function Trig_Battle_Primed_Start_Actions)
    endfunction