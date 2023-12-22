function Trig_Shieldwall_Off_Func003Func002Func001C takes nothing returns boolean
    if(not(udg_ShieldwallWait[udg_ShieldwallLoopIndex]<=0.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Shieldwall_Off_Func003Func002C takes nothing returns boolean
    if(not(udg_ShieldwallWait[udg_ShieldwallLoopIndex]>0.00))then
    return false
    endif
    if(not(udg_ShieldwallWait[udg_ShieldwallLoopIndex]<udg_ShieldwallWaitNew))then
    return false
    endif
    return true
    endfunction
    function Trig_Shieldwall_Off_Func004C takes nothing returns boolean
    if(not(udg_ShieldwallIndex>0))then
    return false
    endif
    return true
    endfunction
    function Trig_Shieldwall_Off_Actions takes nothing returns nothing
    set udg_ShieldwallWaitNew=8.00
    set udg_ShieldwallLoopIndex=1
    loop
    exitwhen udg_ShieldwallLoopIndex>udg_ShieldwallIndex
    set udg_ShieldwallWait[udg_ShieldwallLoopIndex]=(udg_ShieldwallWait[udg_ShieldwallLoopIndex]-TimerGetElapsed(udg_ShieldwallTimer))
    if(Trig_Shieldwall_Off_Func003Func002C())then
    set udg_ShieldwallWaitNew=udg_ShieldwallWait[udg_ShieldwallLoopIndex]
    else
    if(Trig_Shieldwall_Off_Func003Func002Func001C())then
    call SetUnitAbilityLevelSwapped('A0F8',udg_ShieldwallUnit[udg_ShieldwallLoopIndex],1)
    call SetUnitAbilityLevelSwapped('A0F8',udg_ShieldwallUnit[udg_ShieldwallLoopIndex],1)
    call SetUnitAbilityLevelSwapped('A0F8',udg_ShieldwallUnit[udg_ShieldwallLoopIndex],1)
    call SetUnitAbilityLevelSwapped('A0F8',udg_ShieldwallUnit[udg_ShieldwallLoopIndex],1)
    call SetUnitAbilityLevelSwapped('A0F8',udg_ShieldwallUnit[udg_ShieldwallLoopIndex],1)
    call SetUnitAbilityLevelSwapped('A0F8',udg_ShieldwallUnit[udg_ShieldwallLoopIndex],1)
    set udg_ShieldwallUnit[udg_ShieldwallLoopIndex]=udg_ShieldwallUnit[udg_ShieldwallIndex]
    set udg_ShieldwallWait[udg_ShieldwallLoopIndex]=udg_ShieldwallWait[udg_ShieldwallIndex]
    set udg_ShieldwallLoopIndex=(udg_ShieldwallLoopIndex-1)
    set udg_ShieldwallIndex=(udg_ShieldwallIndex-1)
    else
    endif
    endif
    set udg_ShieldwallLoopIndex=udg_ShieldwallLoopIndex+1
    endloop
    if(Trig_Shieldwall_Off_Func004C())then
    call TimerStart(udg_ShieldwallTimer,udg_ShieldwallWaitNew, false, function Trig_Shieldwall_Off_Actions)
    else
    endif
    endfunction

function Trig_Item_Activate_Func001Func001Func001Func010Func001C takes nothing returns boolean
    if(not(TimerGetRemaining(udg_ShieldwallTimer)<udg_ShieldwallWait[udg_ShieldwallIndex]))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Activate_Func001Func001Func001Func010C takes nothing returns boolean
    if(not(udg_ShieldwallIndex==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Activate_Func001Func001Func001Func012Func001Func001C takes nothing returns boolean
    if(not(GetItemTypeId(UnitItemInSlotBJ(GetTriggerUnit(),GetForLoopIndexA()))=='stel'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Activate_Func001Func001Func001Func012Func003Func001C takes nothing returns boolean
    if(not(GetItemPlayer(GetEnumItem())==GetOwningPlayer(GetTriggerUnit())))then
    return false
    endif
    if(not(GetItemTypeId(GetEnumItem())=='stel'))then
    return false
    endif
    if(not(GetItemUserData(GetEnumItem())>0))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Activate_Func001Func001Func001Func012Func003A takes nothing returns nothing
    if(Trig_Item_Activate_Func001Func001Func001Func012Func003Func001C())then
    call UnitAddItemSwapped(GetEnumItem(),GetTriggerUnit())
    call UnitDropItemSlotBJ(GetTriggerUnit(),GetEnumItem(),GetItemUserData(GetEnumItem()))
    else
    endif
    endfunction
    function Trig_Item_Activate_Func001Func001Func001Func012C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='stel'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Activate_Func001Func001Func001C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='moon'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Activate_Func001Func001C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='esaz'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Activate_Func001C takes nothing returns boolean
    if(not(GetItemTypeId(GetManipulatedItem())=='I026'))then
    return false
    endif
    return true
    endfunction
    function Trig_Item_Activate_Actions takes nothing returns nothing
    if(Trig_Item_Activate_Func001C())then
    call UnitRemoveBuffBJ('B006',GetTriggerUnit())
    call UnitRemoveBuffBJ('B00D',GetTriggerUnit())
    call UnitRemoveBuffBJ('B00K',GetTriggerUnit())
    call UnitRemoveBuffBJ('B010',GetTriggerUnit())
    call UnitRemoveBuffBJ('Bbsk',GetTriggerUnit())
    call UnitRemoveBuffBJ('Bcmg',GetTriggerUnit())
    else
    if(Trig_Item_Activate_Func001Func001C())then
    call SetUnitLifePercentBJ(GetTriggerUnit(),(GetUnitLifePercent(GetTriggerUnit())+20.00))
    else
    if(Trig_Item_Activate_Func001Func001Func001C())then
    set udg_ShieldwallIndex=(udg_ShieldwallIndex+1)
    set udg_ShieldwallWait[udg_ShieldwallIndex]=8.00
    set udg_ShieldwallUnit[udg_ShieldwallIndex]=GetTriggerUnit()
    call SetUnitAbilityLevelSwapped('A0F8',udg_ShieldwallUnit[udg_ShieldwallIndex],2)
    call SetUnitAbilityLevelSwapped('A0F8',udg_ShieldwallUnit[udg_ShieldwallIndex],2)
    call SetUnitAbilityLevelSwapped('A0F8',udg_ShieldwallUnit[udg_ShieldwallIndex],2)
    call SetUnitAbilityLevelSwapped('A0F8',udg_ShieldwallUnit[udg_ShieldwallIndex],2)
    call SetUnitAbilityLevelSwapped('A0F8',udg_ShieldwallUnit[udg_ShieldwallIndex],2)
    call SetUnitAbilityLevelSwapped('A0F8',udg_ShieldwallUnit[udg_ShieldwallIndex],2)
    if(Trig_Item_Activate_Func001Func001Func001Func010C())then
    call TimerStart(udg_ShieldwallTimer,8, false, function Trig_Shieldwall_Off_Actions)
    else
    if(Trig_Item_Activate_Func001Func001Func001Func010Func001C())then
    set udg_ShieldwallWait[udg_ShieldwallIndex]=(8.00+TimerGetElapsed(udg_ShieldwallTimer))
    else
    endif
    endif
    else
    if(Trig_Item_Activate_Func001Func001Func001Func012C())then
    set bj_forLoopAIndex=1
    set bj_forLoopAIndexEnd=6
    loop
    exitwhen bj_forLoopAIndex>bj_forLoopAIndexEnd
    if(Trig_Item_Activate_Func001Func001Func001Func012Func001Func001C())then
    call SetItemUserData(UnitItemInSlotBJ(GetTriggerUnit(),GetForLoopIndexA()),GetForLoopIndexA())
    call UnitRemoveItemSwapped(UnitItemInSlotBJ(GetTriggerUnit(),GetForLoopIndexA()),GetTriggerUnit())
    else
    endif
    set bj_forLoopAIndex=bj_forLoopAIndex+1
    endloop
    call UnitResetCooldown(GetTriggerUnit())
    call EnumItemsInRectBJ(GetPlayableMapRect(),function Trig_Item_Activate_Func001Func001Func001Func012Func003A)
    else
    endif
    endif
    endif
    endif
    endfunction
    function InitTrig_Item_Activate takes nothing returns nothing
    set gg_trg_Item_Activate=CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Item_Activate,EVENT_PLAYER_UNIT_USE_ITEM)
    call TriggerAddAction(gg_trg_Item_Activate,function Trig_Item_Activate_Actions)
    endfunction