function Trig_Inferno_Level_Conditions takes nothing returns boolean
    if(not(GetLearnedSkillBJ()=='A07M'))then
    return false
    endif
    return true
    endfunction
    function Trig_Inferno_Level_Func002001 takes nothing returns boolean
    return(GetUnitAbilityLevelSwapped('A07M',GetTriggerUnit())==1)
    endfunction
    function Trig_Inferno_Level_Func003001 takes nothing returns boolean
    return(GetUnitAbilityLevelSwapped('A07M',GetTriggerUnit())==1)
    endfunction
    function Trig_Inferno_Level_Func004001 takes nothing returns boolean
    return(GetUnitAbilityLevelSwapped('A07M',GetTriggerUnit())==2)
    endfunction
    function Trig_Inferno_Level_Func005001 takes nothing returns boolean
    return(GetUnitAbilityLevelSwapped('A07M',GetTriggerUnit())==2)
    endfunction
    function Trig_Inferno_Level_Func006001 takes nothing returns boolean
    return(GetUnitAbilityLevelSwapped('A07M',GetTriggerUnit())==3)
    endfunction
    function Trig_Inferno_Level_Func007001 takes nothing returns boolean
    return(GetUnitAbilityLevelSwapped('A07M',GetTriggerUnit())==3)
    endfunction
    function Trig_Inferno_Level_Actions takes nothing returns nothing
    if(Trig_Inferno_Level_Func002001())then
    set udg_InfernoDamage=225.00
    else
    call DoNothing()
    endif
    if(Trig_Inferno_Level_Func003001())then
    set udg_InfernoLevel=0.20
    else
    call DoNothing()
    endif
    if(Trig_Inferno_Level_Func004001())then
    set udg_InfernoDamage=300.00
    else
    call DoNothing()
    endif
    if(Trig_Inferno_Level_Func005001())then
    set udg_InfernoLevel=0.30
    else
    call DoNothing()
    endif
    if(Trig_Inferno_Level_Func006001())then
    set udg_InfernoDamage=375.00
    else
    call DoNothing()
    endif
    if(Trig_Inferno_Level_Func007001())then
    set udg_InfernoLevel=0.40
    else
    call DoNothing()
    endif
    endfunction
    function InitTrig_Inferno_Level takes nothing returns nothing
    set gg_trg_Inferno_Level=CreateTrigger()
    call TriggerAddCondition(gg_trg_Inferno_Level,Condition(function Trig_Inferno_Level_Conditions))
    call TriggerAddAction(gg_trg_Inferno_Level,function Trig_Inferno_Level_Actions)
    endfunction