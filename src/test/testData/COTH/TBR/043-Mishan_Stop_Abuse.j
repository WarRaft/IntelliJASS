function Trig_Mishan_Stop_Abuse_Func003C takes nothing returns boolean
    if((GetIssuedOrderIdBJ()==String2OrderIdBJ("stop")))then
    return true
    endif
    if((GetIssuedOrderIdBJ()==String2OrderIdBJ("holdposition")))then
    return true
    endif
    return false
    endfunction
    function Trig_Mishan_Stop_Abuse_Conditions takes nothing returns boolean
    if(not Trig_Mishan_Stop_Abuse_Func003C())then
    return false
    endif
    return true
    endfunction
    function Trig_Mishan_Stop_Abuse_Func002C takes nothing returns boolean
    if(not(udg_DuelDamage<udg_WaycrestDamage))then
    return false
    endif
    return true
    endfunction
    function Trig_Mishan_Stop_Abuse_Actions takes nothing returns nothing
    set udg_DuelCounter=(udg_DuelCounter-1)
    if(Trig_Mishan_Stop_Abuse_Func002C())then
    set udg_DuelDamage=0.00
    else
    set udg_DuelDamage=(udg_DuelDamage-udg_WaycrestDamage)
    endif
    endfunction
    function InitTrig_Mishan_Stop_Abuse takes nothing returns nothing
    set gg_trg_Mishan_Stop_Abuse=CreateTrigger()
    call TriggerAddCondition(gg_trg_Mishan_Stop_Abuse,Condition(function Trig_Mishan_Stop_Abuse_Conditions))
    call TriggerAddAction(gg_trg_Mishan_Stop_Abuse,function Trig_Mishan_Stop_Abuse_Actions)
    endfunction