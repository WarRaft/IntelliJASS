function Trig_Steam_Contraption_On_Conditions takes nothing returns boolean
    if(not(GetIssuedOrderIdBJ()==String2OrderIdBJ("bearform")))then
    return false
    endif
    return true
    endfunction
    function Trig_Steam_Contraption_On_Actions takes nothing returns nothing
    set udg_SteamContraption=1
    endfunction
    function InitTrig_Steam_Contraption_On takes nothing returns nothing
    set gg_trg_Steam_Contraption_On=CreateTrigger()
    call TriggerAddCondition(gg_trg_Steam_Contraption_On,Condition(function Trig_Steam_Contraption_On_Conditions))
    call TriggerAddAction(gg_trg_Steam_Contraption_On,function Trig_Steam_Contraption_On_Actions)
    endfunction