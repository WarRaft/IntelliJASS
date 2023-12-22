function Trig_Split_Shot_On_Conditions takes nothing returns boolean
    if(not(GetIssuedOrderIdBJ()==String2OrderIdBJ("flamingarrows")))then
    return false
    endif
    return true
    endfunction
    function Trig_Split_Shot_On_Func007Func003Func001Func001C takes nothing returns boolean
    if((GetItemTypeId(UnitItemInSlotBJ(gg_unit_Hvwd_0525,GetForLoopIndexA()))=='ajen'))then
    return true
    endif
    if((GetItemTypeId(UnitItemInSlotBJ(gg_unit_Hvwd_0525,GetForLoopIndexA()))=='dsum'))then
    return true
    endif
    return false
    endfunction
    function Trig_Split_Shot_On_Func007Func003Func001C takes nothing returns boolean
    if(not Trig_Split_Shot_On_Func007Func003Func001Func001C())then
    return false
    endif
    return true
    endfunction
    function Trig_Split_Shot_On_Func007C takes nothing returns boolean
    if(not(udg_SplitShot==0))then
    return false
    endif
    return true
    endfunction
    function Trig_Split_Shot_On_Actions takes nothing returns nothing
    set udg_SplitShot=0
    call EnableTrigger(gg_trg_Split_Shot_Mana_Low)
    call SetUnitAbilityLevelSwapped('A0CQ',gg_unit_hpxe_0482,GetUnitAbilityLevelSwapped('A0D1',gg_unit_Hvwd_0525))
    call SetUnitOwner(gg_unit_hpxe_0482,Player(6),false)
    call PolledWait(0.50)
    if(Trig_Split_Shot_On_Func007C())then
    call UnitAddAbilityBJ('Aroc',gg_unit_Hvwd_0525)
    set bj_forLoopAIndex=1
    set bj_forLoopAIndexEnd=6
    loop
    exitwhen bj_forLoopAIndex>bj_forLoopAIndexEnd
    if(Trig_Split_Shot_On_Func007Func003Func001C())then
    call UnitRemoveAbilityBJ('A0A9',gg_unit_Hvwd_0525)
    else
    endif
    set bj_forLoopAIndex=bj_forLoopAIndex+1
    endloop
    else
    endif
    endfunction
    function InitTrig_Split_Shot_On takes nothing returns nothing
    set gg_trg_Split_Shot_On=CreateTrigger()
    call TriggerAddCondition(gg_trg_Split_Shot_On,Condition(function Trig_Split_Shot_On_Conditions))
    call TriggerAddAction(gg_trg_Split_Shot_On,function Trig_Split_Shot_On_Actions)
    endfunction