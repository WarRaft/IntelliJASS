function Trig_Dark_Touch_On_Conditions takes nothing returns boolean
    if(not(GetIssuedOrderIdBJ()==String2OrderIdBJ("flamingarrows")))then
    return false
    endif
    return true
    endfunction
    function Trig_Dark_Touch_On_Actions takes nothing returns nothing
    set udg_DarkTouchOn=1
    endfunction
    function InitTrig_Dark_Touch_On takes nothing returns nothing
    set gg_trg_Dark_Touch_On=CreateTrigger()
    call TriggerAddCondition(gg_trg_Dark_Touch_On,Condition(function Trig_Dark_Touch_On_Conditions))
    call TriggerAddAction(gg_trg_Dark_Touch_On,function Trig_Dark_Touch_On_Actions)
    endfunction