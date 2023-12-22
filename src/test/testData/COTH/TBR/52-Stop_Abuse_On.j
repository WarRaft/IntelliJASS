function Trig_Stop_Abuse_Off_Func002Func002Func001C takes nothing returns boolean
    if(not(udg_StopWait[udg_StopLoopIndex]<=0.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Stop_Abuse_Off_Func002Func002C takes nothing returns boolean
    if(not(udg_StopWait[udg_StopLoopIndex]>0.00))then
    return false
    endif
    if(not(udg_StopWait[udg_StopLoopIndex]<udg_StopWaitNew))then
    return false
    endif
    return true
    endfunction
    function Trig_Stop_Abuse_Off_Func003C takes nothing returns boolean
    if(not(udg_StopIndex>0))then
    return false
    endif
    return true
    endfunction
    function Trig_Stop_Abuse_Off_Actions takes nothing returns nothing
    set udg_StopWaitNew=1.25
    set udg_StopLoopIndex=1
    loop
    exitwhen udg_StopLoopIndex>udg_StopIndex
    set udg_StopWait[udg_StopLoopIndex]=(udg_StopWait[udg_StopLoopIndex]-TimerGetElapsed(udg_StopTimer))
    if(Trig_Stop_Abuse_Off_Func002Func002C())then
    set udg_StopWaitNew=udg_StopWait[udg_StopLoopIndex]
    else
    if(Trig_Stop_Abuse_Off_Func002Func002Func001C())then
    call GroupRemoveUnitSimple(udg_StopUnit[udg_StopLoopIndex],udg_StopGroup)
    set udg_StopUnit[udg_StopLoopIndex]=udg_StopUnit[udg_StopIndex]
    set udg_StopWait[udg_StopLoopIndex]=udg_StopWait[udg_StopIndex]
    set udg_StopLoopIndex=(udg_StopLoopIndex-1)
    set udg_StopIndex=(udg_StopIndex-1)
    else
    endif
    endif
    set udg_StopLoopIndex=udg_StopLoopIndex+1
    endloop
    if(Trig_Stop_Abuse_Off_Func003C())then
    call TimerStart(udg_StopTimer,udg_StopWaitNew, false, function Trig_Stop_Abuse_Off_Actions)
    else
    endif
    endfunction

function Trig_Stop_Abuse_On_Func008C takes nothing returns boolean
    if((GetIssuedOrderIdBJ()==String2OrderIdBJ("stop")))then
    return true
    endif
    if((GetIssuedOrderIdBJ()==String2OrderIdBJ("holdposition")))then
    return true
    endif
    return false
    endfunction
    function Trig_Stop_Abuse_On_Func009C takes nothing returns boolean
    if((GetUnitTypeId(GetOrderedUnit())=='Hmkg'))then
    return true
    endif
    if((GetUnitTypeId(GetOrderedUnit())=='Harf'))then
    return true
    endif
    if((GetUnitTypeId(GetOrderedUnit())=='H01I'))then
    return true
    endif
    if((GetUnitTypeId(GetOrderedUnit())=='H01Q'))then
    return true
    endif
    if((GetUnitTypeId(GetOrderedUnit())=='Hmgd'))then
    return true
    endif
    if((GetUnitTypeId(GetOrderedUnit())=='Opgh'))then
    return true
    endif
    if((GetUnitTypeId(GetOrderedUnit())=='Utic'))then
    return true
    endif
    if((GetUnitTypeId(GetOrderedUnit())=='Odrt'))then
    return true
    endif
    if((UnitHasBuffBJ(GetOrderedUnit(),'Bspl')==true))then
    return true
    endif
    if((UnitHasItemOfTypeBJ(GetOrderedUnit(),'I002')==true))then
    return true
    endif
    if((UnitHasItemOfTypeBJ(GetOrderedUnit(),'I007')==true))then
    return true
    endif
    if((UnitHasItemOfTypeBJ(GetOrderedUnit(),'I00A')==true))then
    return true
    endif
    if((UnitHasItemOfTypeBJ(GetOrderedUnit(),'I00L')==true))then
    return true
    endif
    if((UnitHasItemOfTypeBJ(GetOrderedUnit(),'I000')==true))then
    return true
    endif
    if((UnitHasItemOfTypeBJ(GetOrderedUnit(),'I01Z')==true))then
    return true
    endif
    if((UnitHasItemOfTypeBJ(GetOrderedUnit(),'lhst')==true))then
    return true
    endif
    if((UnitHasItemOfTypeBJ(GetOrderedUnit(),'I00X')==true))then
    return true
    endif
    if((UnitHasItemOfTypeBJ(GetOrderedUnit(),'I025')==true))then
    return true
    endif
    return false
    endfunction
    function Trig_Stop_Abuse_On_Conditions takes nothing returns boolean
    if(not(IsUnitType(GetOrderedUnit(),UNIT_TYPE_HERO)==true))then
    return false
    endif
    if(not(IsUnitInGroup(GetOrderedUnit(),udg_StopGroup)==false))then
    return false
    endif
    if(not Trig_Stop_Abuse_On_Func008C())then
    return false
    endif
    if(not Trig_Stop_Abuse_On_Func009C())then
    return false
    endif
    return true
    endfunction
    function Trig_Stop_Abuse_On_Func005C takes nothing returns boolean
    if(not(udg_StopIndex==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Stop_Abuse_On_Actions takes nothing returns nothing
    set udg_StopIndex=(udg_StopIndex+1)
    set udg_StopWait[udg_StopIndex]=1.25
    set udg_StopUnit[udg_StopIndex]=GetOrderedUnit()
    call GroupAddUnitSimple(GetOrderedUnit(),udg_StopGroup)
    if(Trig_Stop_Abuse_On_Func005C())then
    call TimerStart(udg_StopTimer, 1.25, false, function Trig_Stop_Abuse_Off_Actions)
    else
    set udg_StopWait[udg_StopIndex]=(1.25+TimerGetElapsed(udg_StopTimer))
    endif
    endfunction
    function InitTrig_Stop_Abuse_On takes nothing returns nothing
    set gg_trg_Stop_Abuse_On=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Stop_Abuse_On,EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerAddCondition(gg_trg_Stop_Abuse_On,Condition(function Trig_Stop_Abuse_On_Conditions))
    call TriggerAddAction(gg_trg_Stop_Abuse_On,function Trig_Stop_Abuse_On_Actions)
    endfunction