function Trig_Mannoroth_Orders_Func001Func004C takes nothing returns boolean
    if(not(GetIssuedOrderIdBJ()==String2OrderIdBJ("unimmolation")))then
    return false
    endif
    return true
    endfunction
    function Trig_Mannoroth_Orders_Func001C takes nothing returns boolean
    if(not(GetIssuedOrderIdBJ()==String2OrderIdBJ("immolation")))then
    return false
    endif
    return true
    endfunction
    function Trig_Mannoroth_Orders_Actions takes nothing returns nothing
    if(Trig_Mannoroth_Orders_Func001C())then
    call UnitAddAbilityBJ('A066',GetTriggerUnit())
    call SetUnitAbilityLevelSwapped('A066',GetTriggerUnit(),GetUnitAbilityLevelSwapped('AEim',GetTriggerUnit()))
    else
    if(Trig_Mannoroth_Orders_Func001Func004C())then
    call UnitRemoveAbilityBJ('A066',GetTriggerUnit())
    else
    endif
    endif
    endfunction
    function InitTrig_Mannoroth_Orders takes nothing returns nothing
    set gg_trg_Mannoroth_Orders=CreateTrigger()
    call TriggerAddAction(gg_trg_Mannoroth_Orders,function Trig_Mannoroth_Orders_Actions)
    endfunction