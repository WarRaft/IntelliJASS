function Trig_Team_Killing_Alliance_Func001Func001Func001Func002C takes nothing returns boolean
    if((GetItemPlayer(GetOrderTargetItem())==Player(0)))then
    return true
    endif
    if((GetItemPlayer(GetOrderTargetItem())==Player(1)))then
    return true
    endif
    if((GetItemPlayer(GetOrderTargetItem())==Player(2)))then
    return true
    endif
    if((GetItemPlayer(GetOrderTargetItem())==Player(3)))then
    return true
    endif
    if((GetItemPlayer(GetOrderTargetItem())==Player(5)))then
    return true
    endif
    if((GetItemPlayer(GetOrderTargetItem())==Player(6)))then
    return true
    endif
    if((GetItemPlayer(GetOrderTargetItem())==Player(7)))then
    return true
    endif
    if((GetItemPlayer(GetOrderTargetItem())==Player(8)))then
    return true
    endif
    return false
    endfunction
    function Trig_Team_Killing_Alliance_Func001Func001Func001C takes nothing returns boolean
    if(not Trig_Team_Killing_Alliance_Func001Func001Func001Func002C())then
    return false
    endif
    return true
    endfunction
    function Trig_Team_Killing_Alliance_Func001Func001Func002Func004C takes nothing returns boolean
    if((GetUnitTypeId(GetTriggerUnit())=='hgtw'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='hctw'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='hatw'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='negt'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='h00T'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='h01T'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='h00S'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='n00L'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='h00Q'))then
    return true
    endif
    return false
    endfunction
    function Trig_Team_Killing_Alliance_Func001Func001Func002C takes nothing returns boolean
    if(not Trig_Team_Killing_Alliance_Func001Func001Func002Func004C())then
    return false
    endif
    return true
    endfunction
    function Trig_Team_Killing_Alliance_Func001Func001Func003C takes nothing returns boolean
    if((GetOwningPlayer(GetOrderTargetUnit())==Player(0)))then
    return true
    endif
    if((GetOwningPlayer(GetOrderTargetUnit())==Player(1)))then
    return true
    endif
    if((GetOwningPlayer(GetOrderTargetUnit())==Player(2)))then
    return true
    endif
    if((GetOwningPlayer(GetOrderTargetUnit())==Player(3)))then
    return true
    endif
    if((GetOwningPlayer(GetOrderTargetUnit())==Player(5)))then
    return true
    endif
    if((GetOwningPlayer(GetOrderTargetUnit())==Player(6)))then
    return true
    endif
    if((GetOwningPlayer(GetOrderTargetUnit())==Player(7)))then
    return true
    endif
    if((GetOwningPlayer(GetOrderTargetUnit())==Player(8)))then
    return true
    endif
    if((GetOwningPlayer(GetOrderTargetUnit())==Player(8)))then
    return true
    endif
    if((GetOrderTargetUnit()==gg_unit_h01X_0534))then
    return true
    endif
    return false
    endfunction
    function Trig_Team_Killing_Alliance_Func001Func001Func004C takes nothing returns boolean
    if((IsUnitType(GetOrderTargetUnit(),UNIT_TYPE_HERO)==true))then
    return true
    endif
    if((IsUnitType(GetOrderTargetUnit(),UNIT_TYPE_STRUCTURE)==true))then
    return true
    endif
    return false
    endfunction
    function Trig_Team_Killing_Alliance_Func001Func001C takes nothing returns boolean
    if(not Trig_Team_Killing_Alliance_Func001Func001Func003C())then
    return false
    endif
    if(not Trig_Team_Killing_Alliance_Func001Func001Func004C())then
    return false
    endif
    return true
    endfunction
    function Trig_Team_Killing_Alliance_Func001C takes nothing returns boolean
    if(not(GetIssuedOrderIdBJ()==String2OrderIdBJ("attack")))then
    return false
    endif
    return true
    endfunction
    function Trig_Team_Killing_Alliance_Actions takes nothing returns nothing
    if(Trig_Team_Killing_Alliance_Func001C())then
    if(Trig_Team_Killing_Alliance_Func001Func001C())then
    if(Trig_Team_Killing_Alliance_Func001Func001Func002C())then
    call TriggerSleepAction(0.05)
    call IssueImmediateOrder(GetTriggerUnit(),"stop")
    else
    call IssueTargetOrder(GetTriggerUnit(),"smart",GetOrderTargetUnit())
    endif
    else
    if(Trig_Team_Killing_Alliance_Func001Func001Func001C())then
    call IssueTargetOrder(GetTriggerUnit(),"smart",GetOrderTargetItem())
    else
    endif
    endif
    else
    endif
    endfunction
    function InitTrig_Team_Killing_Alliance takes nothing returns nothing
    set gg_trg_Team_Killing_Alliance=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Team_Killing_Alliance,Player(0),EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Team_Killing_Alliance,Player(1),EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Team_Killing_Alliance,Player(2),EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Team_Killing_Alliance,Player(3),EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Team_Killing_Alliance,Player(5),EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Team_Killing_Alliance,Player(6),EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Team_Killing_Alliance,Player(7),EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Team_Killing_Alliance,Player(8),EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
    call TriggerAddAction(gg_trg_Team_Killing_Alliance,function Trig_Team_Killing_Alliance_Actions)
    endfunction