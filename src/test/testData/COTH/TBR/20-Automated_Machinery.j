function Trig_Automated_Machinery_Func001C takes nothing returns boolean
    if((GetSpellAbilityId()=='A08B'))then
    return true
    endif
    if((GetSpellAbilityId()=='A0DS'))then
    return true
    endif
    return false
    endfunction
    function Trig_Automated_Machinery_Conditions takes nothing returns boolean
    if(not Trig_Automated_Machinery_Func001C())then
    return false
    endif
    return true
    endfunction
    function Trig_Automated_Machinery_Actions takes nothing returns nothing
    call PolledWait(0.25)
    set udg_AutomatedMachinery=(udg_AutomatedMachinery+(1*I2R(GetUnitAbilityLevelSwapped('SCae',GetTriggerUnit()))))
    endfunction
    function InitTrig_Automated_Machinery takes nothing returns nothing
    set gg_trg_Automated_Machinery=CreateTrigger()
    call TriggerAddCondition(gg_trg_Automated_Machinery,Condition(function Trig_Automated_Machinery_Conditions))
    call TriggerAddAction(gg_trg_Automated_Machinery,function Trig_Automated_Machinery_Actions)
    endfunction