function Trig_Dark_Touch_Off_Conditions takes nothing returns boolean
    if(not(GetIssuedOrderIdBJ()==String2OrderIdBJ("unflamingarrows")))then
    return false
    endif
    return true
    endfunction
    function Trig_Dark_Touch_Off_Actions takes nothing returns nothing
    set udg_DarkTouchOn=0
    endfunction
    function InitTrig_Dark_Touch_Off takes nothing returns nothing
    set gg_trg_Dark_Touch_Off=CreateTrigger()
    call TriggerAddCondition(gg_trg_Dark_Touch_Off,Condition(function Trig_Dark_Touch_Off_Conditions))
    call TriggerAddAction(gg_trg_Dark_Touch_Off,function Trig_Dark_Touch_Off_Actions)
    endfunction