function Trig_Team_Killing_Horde_Func001Func001Func001Func002C takes nothing returns boolean
    if((GetItemPlayer(GetOrderTargetItem())==Player(4)))then
    return true
    endif
    if((GetItemPlayer(GetOrderTargetItem())==Player(9)))then
    return true
    endif
    if((GetItemPlayer(GetOrderTargetItem())==Player(10)))then
    return true
    endif
    if((GetItemPlayer(GetOrderTargetItem())==Player(11)))then
    return true
    endif
    return false
    endfunction
    function Trig_Team_Killing_Horde_Func001Func001Func001C takes nothing returns boolean
    if(not Trig_Team_Killing_Horde_Func001Func001Func001Func002C())then
    return false
    endif
    return true
    endfunction
    function Trig_Team_Killing_Horde_Func001Func001Func002Func004C takes nothing returns boolean
    if((GetUnitTypeId(GetTriggerUnit())=='ntt1'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='nbt1'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='owtw'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='o004'))then
    return true
    endif
    return false
    endfunction
    function Trig_Team_Killing_Horde_Func001Func001Func002C takes nothing returns boolean
    if(not Trig_Team_Killing_Horde_Func001Func001Func002Func004C())then
    return false
    endif
    return true
    endfunction
    function Trig_Team_Killing_Horde_Func001Func001Func003Func001C takes nothing returns boolean
    if(not(GetOwningPlayer(GetOrderTargetUnit())==Player(4)))then
    return false
    endif
    if(not(IsUnitType(GetOrderTargetUnit(),UNIT_TYPE_HERO)==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Team_Killing_Horde_Func001Func001Func003Func002C takes nothing returns boolean
    if(not(GetOwningPlayer(GetOrderTargetUnit())==Player(9)))then
    return false
    endif
    if(not(IsUnitType(GetOrderTargetUnit(),UNIT_TYPE_HERO)==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Team_Killing_Horde_Func001Func001Func003Func003C takes nothing returns boolean
    if(not(GetOwningPlayer(GetOrderTargetUnit())==Player(10)))then
    return false
    endif
    if(not(IsUnitType(GetOrderTargetUnit(),UNIT_TYPE_HERO)==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Team_Killing_Horde_Func001Func001Func003Func004C takes nothing returns boolean
    if(not(GetOwningPlayer(GetOrderTargetUnit())==Player(11)))then
    return false
    endif
    if(not(IsUnitType(GetOrderTargetUnit(),UNIT_TYPE_HERO)==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Team_Killing_Horde_Func001Func001Func003C takes nothing returns boolean
    if(Trig_Team_Killing_Horde_Func001Func001Func003Func001C())then
    return true
    endif
    if(Trig_Team_Killing_Horde_Func001Func001Func003Func002C())then
    return true
    endif
    if(Trig_Team_Killing_Horde_Func001Func001Func003Func003C())then
    return true
    endif
    if(Trig_Team_Killing_Horde_Func001Func001Func003Func004C())then
    return true
    endif
    if((GetOrderTargetUnit()==gg_unit_h01X_0238))then
    return true
    endif
    if((GetOrderTargetUnit()==gg_unit_otto_0421))then
    return true
    endif
    if((GetOrderTargetUnit()==gg_unit_ndmg_0236))then
    return true
    endif
    return false
    endfunction
    function Trig_Team_Killing_Horde_Func001Func001C takes nothing returns boolean
    if(not Trig_Team_Killing_Horde_Func001Func001Func003C())then
    return false
    endif
    return true
    endfunction
    function Trig_Team_Killing_Horde_Func001C takes nothing returns boolean
    if(not(GetIssuedOrderIdBJ()==String2OrderIdBJ("attack")))then
    return false
    endif
    return true
    endfunction
    function Trig_Team_Killing_Horde_Actions takes nothing returns nothing
    if(Trig_Team_Killing_Horde_Func001C())then
    if(Trig_Team_Killing_Horde_Func001Func001C())then
    if(Trig_Team_Killing_Horde_Func001Func001Func002C())then
    call TriggerSleepAction(0.05)
    call IssueImmediateOrder(GetTriggerUnit(),"stop")
    else
    call IssueTargetOrder(GetTriggerUnit(),"smart",GetOrderTargetUnit())
    endif
    else
    if(Trig_Team_Killing_Horde_Func001Func001Func001C())then
    call IssueTargetOrder(GetTriggerUnit(),"smart",GetOrderTargetItem())
    else
    endif
    endif
    else
    endif
    endfunction
    function InitTrig_Team_Killing_Horde takes nothing returns nothing
    set gg_trg_Team_Killing_Horde=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Team_Killing_Horde,Player(4),EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Team_Killing_Horde,Player(9),EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Team_Killing_Horde,Player(10),EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Team_Killing_Horde,Player(11),EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
    call TriggerAddAction(gg_trg_Team_Killing_Horde,function Trig_Team_Killing_Horde_Actions)
    endfunction