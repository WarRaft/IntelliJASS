function Trig_Steam_Contraption_Off_Conditions takes nothing returns boolean
    if(not(GetIssuedOrderIdBJ()==String2OrderIdBJ("unbearform")))then
    return false
    endif
    return true
    endfunction
    function Trig_Steam_Contraption_Off_Actions takes nothing returns nothing
    set udg_SteamContraption=0
    endfunction
    function InitTrig_Steam_Contraption_Off takes nothing returns nothing
    set gg_trg_Steam_Contraption_Off=CreateTrigger()
    call TriggerAddCondition(gg_trg_Steam_Contraption_Off,Condition(function Trig_Steam_Contraption_Off_Conditions))
    call TriggerAddAction(gg_trg_Steam_Contraption_Off,function Trig_Steam_Contraption_Off_Actions)
    endfunction