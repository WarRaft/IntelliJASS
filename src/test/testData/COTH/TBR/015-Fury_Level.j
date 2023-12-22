function Trig_Fury_Level_Conditions takes nothing returns boolean
    if(not(GetLearnedSkillBJ()=='A06Y'))then
    return false
    endif
    return true
    endfunction
    function Trig_Fury_Level_Func001Func001C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A06Y',gg_unit_H01I_0514)==3))then
    return false
    endif
    return true
    endfunction
    function Trig_Fury_Level_Func001C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A06Y',gg_unit_H01I_0514)==2))then
    return false
    endif
    return true
    endfunction
    function Trig_Fury_Level_Actions takes nothing returns nothing
    if(Trig_Fury_Level_Func001C())then
    call ModifyHeroStat(bj_HEROSTAT_AGI,gg_unit_H01I_0514,bj_MODIFYMETHOD_ADD,(1*udg_Fury))
    else
    if(Trig_Fury_Level_Func001Func001C())then
    call ModifyHeroStat(bj_HEROSTAT_AGI,gg_unit_H01I_0514,bj_MODIFYMETHOD_ADD,(1*udg_Fury))
    call DisableTrigger(GetTriggeringTrigger())
    else
    endif
    endif
    endfunction
    function InitTrig_Fury_Level takes nothing returns nothing
    set gg_trg_Fury_Level=CreateTrigger()
    call TriggerAddCondition(gg_trg_Fury_Level,Condition(function Trig_Fury_Level_Conditions))
    call TriggerAddAction(gg_trg_Fury_Level,function Trig_Fury_Level_Actions)
    endfunction