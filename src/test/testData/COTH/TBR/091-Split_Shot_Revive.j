function Trig_Split_Shot_Revive_Func001Func001Func001C takes nothing returns boolean
    if(not(GetItemTypeId(UnitItemInSlotBJ(gg_unit_Hvwd_0525,GetForLoopIndexB()))=='dsum'))then
    return false
    endif
    return true
    endfunction
    function Trig_Split_Shot_Revive_Func001Func001C takes nothing returns boolean
    if(not(GetItemTypeId(UnitItemInSlotBJ(gg_unit_Hvwd_0525,GetForLoopIndexB()))=='ajen'))then
    return false
    endif
    return true
    endfunction
    function Trig_Split_Shot_Revive_Actions takes nothing returns nothing
    set bj_forLoopBIndex=1
    set bj_forLoopBIndexEnd=6
    loop
    exitwhen bj_forLoopBIndex>bj_forLoopBIndexEnd
    if(Trig_Split_Shot_Revive_Func001Func001C())then
    call UnitRemoveItemFromSlotSwapped(GetForLoopIndexB(),gg_unit_Hvwd_0525)
    call RemoveItem(GetLastRemovedItem())
    call UnitAddItemByIdSwapped('ajen',gg_unit_Hvwd_0525)
    call UnitDropItemSlotBJ(gg_unit_Hvwd_0525,GetLastCreatedItem(),GetForLoopIndexB())
    else
    if(Trig_Split_Shot_Revive_Func001Func001Func001C())then
    call UnitRemoveItemFromSlotSwapped(GetForLoopIndexB(),gg_unit_Hvwd_0525)
    call RemoveItem(GetLastRemovedItem())
    call UnitAddItemByIdSwapped('dsum',gg_unit_Hvwd_0525)
    call UnitDropItemSlotBJ(gg_unit_Hvwd_0525,GetLastCreatedItem(),GetForLoopIndexB())
    else
    endif
    endif
    set bj_forLoopBIndex=bj_forLoopBIndex+1
    endloop
    endfunction
    function InitTrig_Split_Shot_Revive takes nothing returns nothing
    set gg_trg_Split_Shot_Revive=CreateTrigger()
    call TriggerAddAction(gg_trg_Split_Shot_Revive,function Trig_Split_Shot_Revive_Actions)
    endfunction