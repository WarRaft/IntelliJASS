function Trig_Split_Shot_Off_Conditions takes nothing returns boolean
    if(not(GetIssuedOrderIdBJ()==String2OrderIdBJ("unflamingarrows")))then
    return false
    endif
    return true
    endfunction
    function Trig_Split_Shot_Off_Func008Func002Func001Func001C takes nothing returns boolean
    if(not(GetItemTypeId(UnitItemInSlotBJ(gg_unit_Hvwd_0525,GetForLoopIndexB()))=='dsum'))then
    return false
    endif
    return true
    endfunction
    function Trig_Split_Shot_Off_Func008Func002Func001C takes nothing returns boolean
    if(not(GetItemTypeId(UnitItemInSlotBJ(gg_unit_Hvwd_0525,GetForLoopIndexB()))=='ajen'))then
    return false
    endif
    return true
    endfunction
    function Trig_Split_Shot_Off_Func008C takes nothing returns boolean
    if(not(IsUnitAliveBJ(gg_unit_Hvwd_0525)==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Split_Shot_Off_Actions takes nothing returns nothing
    set udg_SplitShot=1
    call DisableTrigger(gg_trg_Split_Shot_Mana_Low)
    call DisableTrigger(gg_trg_Split_Shot_Mana_Increase)
    call SetUnitOwner(gg_unit_hpxe_0482,Player(PLAYER_NEUTRAL_AGGRESSIVE),false)
    call UnitRemoveBuffBJ('B042',gg_unit_Hvwd_0525)
    call UnitRemoveAbilityBJ('Aroc',gg_unit_Hvwd_0525)
    if(Trig_Split_Shot_Off_Func008C())then
    set bj_forLoopBIndex=1
    set bj_forLoopBIndexEnd=6
    loop
    exitwhen bj_forLoopBIndex>bj_forLoopBIndexEnd
    if(Trig_Split_Shot_Off_Func008Func002Func001C())then
    call UnitRemoveItemFromSlotSwapped(GetForLoopIndexB(),gg_unit_Hvwd_0525)
    call RemoveItem(GetLastRemovedItem())
    call UnitAddItemByIdSwapped('ajen',gg_unit_Hvwd_0525)
    call UnitDropItemSlotBJ(gg_unit_Hvwd_0525,GetLastCreatedItem(),GetForLoopIndexB())
    else
    if(Trig_Split_Shot_Off_Func008Func002Func001Func001C())then
    call UnitRemoveItemFromSlotSwapped(GetForLoopIndexB(),gg_unit_Hvwd_0525)
    call RemoveItem(GetLastRemovedItem())
    call UnitAddItemByIdSwapped('dsum',gg_unit_Hvwd_0525)
    call UnitDropItemSlotBJ(gg_unit_Hvwd_0525,GetLastCreatedItem(),GetForLoopIndexB())
    else
    endif
    endif
    set bj_forLoopBIndex=bj_forLoopBIndex+1
    endloop
    else
    endif
    endfunction
    function InitTrig_Split_Shot_Off takes nothing returns nothing
    set gg_trg_Split_Shot_Off=CreateTrigger()
    call TriggerAddCondition(gg_trg_Split_Shot_Off,Condition(function Trig_Split_Shot_Off_Conditions))
    call TriggerAddAction(gg_trg_Split_Shot_Off,function Trig_Split_Shot_Off_Actions)
    endfunction