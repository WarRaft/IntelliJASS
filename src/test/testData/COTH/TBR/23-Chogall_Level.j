function Trig_Chogall_Level_Func001Func003Func001Func003Func003C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A04N',GetTriggerUnit())==3))then
    return false
    endif
    return true
    endfunction
    function Trig_Chogall_Level_Func001Func003Func001Func003C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A04N',GetTriggerUnit())==2))then
    return false
    endif
    return true
    endfunction
    function Trig_Chogall_Level_Func001Func003Func001C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A04N',GetTriggerUnit())==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Chogall_Level_Func001Func003C takes nothing returns boolean
    if(not(GetLearnedSkillBJ()=='A04N'))then
    return false
    endif
    return true
    endfunction
    function Trig_Chogall_Level_Func001C takes nothing returns boolean
    if(not(GetLearnedSkillBJ()=='A06B'))then
    return false
    endif
    return true
    endfunction
    function Trig_Chogall_Level_Actions takes nothing returns nothing
    if(Trig_Chogall_Level_Func001C())then
    call SetUnitAbilityLevelSwapped('A04R',gg_unit_o003_0442,GetUnitAbilityLevelSwapped('A06B',gg_unit_Orex_0465))
    else
    if(Trig_Chogall_Level_Func001Func003C())then
    if(Trig_Chogall_Level_Func001Func003Func001C())then
    set udg_SelfMutilate=0.64
    else
    if(Trig_Chogall_Level_Func001Func003Func001Func003C())then
    set udg_SelfMutilate=0.72
    else
    if(Trig_Chogall_Level_Func001Func003Func001Func003Func003C())then
    set udg_SelfMutilate=0.79
    else
    endif
    endif
    endif
    else
    endif
    endif
    endfunction
    function InitTrig_Chogall_Level takes nothing returns nothing
    set gg_trg_Chogall_Level=CreateTrigger()
    call TriggerAddAction(gg_trg_Chogall_Level,function Trig_Chogall_Level_Actions)
    endfunction