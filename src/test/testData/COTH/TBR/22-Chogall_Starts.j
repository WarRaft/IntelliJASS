    function Trig_Chogall_Starts_Func001Func003Func010Func001Func004Func001Func002C takes nothing returns boolean
    if((UnitItemInSlotBJ(gg_unit_Orex_0465,GetForLoopIndexA())==null))then
    return true
    endif
    return false
    endfunction
    function Trig_Chogall_Starts_Func001Func003Func010Func001Func004Func001C takes nothing returns boolean
    if(not Trig_Chogall_Starts_Func001Func003Func010Func001Func004Func001Func002C())then
    return false
    endif
    return true
    endfunction
    function Trig_Chogall_Starts_Func001Func003Func010Func001Func005Func001Func005C takes nothing returns boolean
    if((GetItemTypeId(UnitItemInSlotBJ(gg_unit_Orex_0465,GetForLoopIndexA()))=='hval'))then
    return true
    endif
    if((GetItemTypeId(UnitItemInSlotBJ(gg_unit_Orex_0465,GetForLoopIndexA()))=='kpin'))then
    return true
    endif
    if((GetItemTypeId(UnitItemInSlotBJ(gg_unit_Orex_0465,GetForLoopIndexA()))=='rde4'))then
    return true
    endif
    if((GetItemTypeId(UnitItemInSlotBJ(gg_unit_Orex_0465,GetForLoopIndexA()))=='I010'))then
    return true
    endif
    if((GetItemTypeId(UnitItemInSlotBJ(gg_unit_Orex_0465,GetForLoopIndexA()))=='I023'))then
    return true
    endif
    if((GetItemTypeId(UnitItemInSlotBJ(gg_unit_Orex_0465,GetForLoopIndexA()))=='I00T'))then
    return true
    endif
    if((GetItemTypeId(UnitItemInSlotBJ(gg_unit_Orex_0465,GetForLoopIndexA()))=='ofro'))then
    return true
    endif
    if((GetItemTypeId(UnitItemInSlotBJ(gg_unit_Orex_0465,GetForLoopIndexA()))=='ward'))then
    return true
    endif
    if((GetItemTypeId(UnitItemInSlotBJ(gg_unit_Orex_0465,GetForLoopIndexA()))=='odef'))then
    return true
    endif
    if((GetItemTypeId(UnitItemInSlotBJ(gg_unit_Orex_0465,GetForLoopIndexA()))=='I00K'))then
    return true
    endif
    if((GetItemTypeId(UnitItemInSlotBJ(gg_unit_Orex_0465,GetForLoopIndexA()))=='esaz'))then
    return true
    endif
    if((GetItemTypeId(UnitItemInSlotBJ(gg_unit_Orex_0465,GetForLoopIndexA()))=='I026'))then
    return true
    endif
    if((GetItemTypeId(UnitItemInSlotBJ(gg_unit_Orex_0465,GetForLoopIndexA()))=='penr'))then
    return true
    endif
    if((GetItemTypeId(UnitItemInSlotBJ(gg_unit_Orex_0465,GetForLoopIndexA()))=='ssil'))then
    return true
    endif
    if((GetItemTypeId(UnitItemInSlotBJ(gg_unit_Orex_0465,GetForLoopIndexA()))=='I00V'))then
    return true
    endif
    if((GetItemTypeId(UnitItemInSlotBJ(gg_unit_Orex_0465,GetForLoopIndexA()))=='crys'))then
    return true
    endif
    return false
    endfunction
    function Trig_Chogall_Starts_Func001Func003Func010Func001Func005Func001C takes nothing returns boolean
    if(not Trig_Chogall_Starts_Func001Func003Func010Func001Func005Func001Func005C())then
    return false
    endif
    return true
    endfunction
    function Trig_Chogall_Starts_Func001Func003Func010Func001Func008Func001Func001C takes nothing returns boolean
    if(not(GetItemPlayer(GetEnumItem())==GetOwningPlayer(gg_unit_Orex_0465)))then
    return false
    endif
    if(not(GetItemUserData(GetEnumItem())==GetForLoopIndexA()))then
    return false
    endif
    return true
    endfunction
    function Trig_Chogall_Starts_Func001Func003Func010Func001Func008Func001A takes nothing returns nothing
    if(Trig_Chogall_Starts_Func001Func003Func010Func001Func008Func001Func001C())then
    call UnitAddItemSwapped(GetEnumItem(),gg_unit_Orex_0465)
    else
    endif
    endfunction
    function Trig_Chogall_Starts_Func001Func003Func010Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A04N'))then
    return false
    endif
    return true
    endfunction
    function Trig_Chogall_Starts_Func001Func003Func010C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A06B'))then
    return false
    endif
    return true
    endfunction
    function Trig_Chogall_Starts_Func001Func003C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A04O'))then
    return false
    endif
    return true
    endfunction
    function Trig_Chogall_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A04L'))then
    return false
    endif
    return true
    endfunction
    function Trig_Chogall_Starts_Actions takes nothing returns nothing
    if(Trig_Chogall_Starts_Func001C())then
    call UnitDamageTargetBJ(GetTriggerUnit(),GetSpellTargetUnit(),(((I2R(GetUnitAbilityLevelSwapped('A04L',GetTriggerUnit()))*90.00)+40.00)+(GetUnitStateSwap(UNIT_STATE_MAX_LIFE,GetSpellTargetUnit())*0.04)),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    else
    if(Trig_Chogall_Starts_Func001Func003C())then
    set udg_LifeRipTarget=GetSpellTargetUnit()
    call UnitDamageTargetBJ(GetTriggerUnit(),GetSpellTargetUnit(),((I2R(GetUnitAbilityLevelSwapped('A04O',gg_unit_Orex_0465))*50.00)+85.00),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    call SetUnitLifeBJ(GetTriggerUnit(),(GetUnitStateSwap(UNIT_STATE_LIFE,GetTriggerUnit())+(85.00+(50.00*I2R(GetUnitAbilityLevelSwapped('A04O',GetTriggerUnit()))))))
    call EnableTrigger(gg_trg_Life_Rip_Move)
    call SetUnitPathing(udg_LifeRipTarget,false)
    call PolledWait(((I2R(GetUnitAbilityLevelSwapped('A04O',GetTriggerUnit()))*0.25)+0.70))
    call DisableTrigger(gg_trg_Life_Rip_Move)
    call SetUnitPathing(udg_LifeRipTarget,true)
    else
    if(Trig_Chogall_Starts_Func001Func003Func010C())then
    set udg_TempPoint=GetSpellTargetLoc()
    call IssuePointOrderLoc(gg_unit_o003_0442,"healingward",udg_TempPoint)
    call RemoveLocation(udg_TempPoint)
    else
    if(Trig_Chogall_Starts_Func001Func003Func010Func001C())then
    call SetUnitLifeBJ(GetTriggerUnit(),(GetUnitStateSwap(UNIT_STATE_LIFE,GetTriggerUnit())*udg_SelfMutilate))
    set bj_forLoopAIndex=1
    set bj_forLoopAIndexEnd=6
    loop
    exitwhen bj_forLoopAIndex>bj_forLoopAIndexEnd
    if(Trig_Chogall_Starts_Func001Func003Func010Func001Func004Func001C())then
    call UnitAddItemByIdSwapped('vddl',GetTriggerUnit())
    else
    endif
    set bj_forLoopAIndex=bj_forLoopAIndex+1
    endloop
    set bj_forLoopAIndex=1
    set bj_forLoopAIndexEnd=6
    loop
    exitwhen bj_forLoopAIndex>bj_forLoopAIndexEnd
    if(Trig_Chogall_Starts_Func001Func003Func010Func001Func005Func001C())then
    call DisableTrigger(gg_trg_Self_Mutilate_Drop)
    call SetItemUserData(UnitItemInSlotBJ(gg_unit_Orex_0465,GetForLoopIndexA()),GetForLoopIndexA())
    call UnitRemoveItemFromSlotSwapped(GetForLoopIndexA(),gg_unit_Orex_0465)
    call EnableTrigger(gg_trg_Self_Mutilate_Drop)
    else
    endif
    set bj_forLoopAIndex=bj_forLoopAIndex+1
    endloop
    call UnitResetCooldown(GetTriggerUnit())
    call SetUnitManaPercentBJ(GetTriggerUnit(),100)
    set bj_forLoopAIndex=1
    set bj_forLoopAIndexEnd=6
    loop
    exitwhen bj_forLoopAIndex>bj_forLoopAIndexEnd
    call EnumItemsInRectBJ(GetPlayableMapRect(),function Trig_Chogall_Starts_Func001Func003Func010Func001Func008Func001A)
    set bj_forLoopAIndex=bj_forLoopAIndex+1
    endloop
    call UnitRemoveItemSwapped(GetItemOfTypeFromUnitBJ(gg_unit_Orex_0465,'vddl'),gg_unit_Orex_0465)
    call RemoveItem(GetLastRemovedItem())
    call UnitRemoveItemSwapped(GetItemOfTypeFromUnitBJ(gg_unit_Orex_0465,'vddl'),gg_unit_Orex_0465)
    call RemoveItem(GetLastRemovedItem())
    call UnitRemoveItemSwapped(GetItemOfTypeFromUnitBJ(gg_unit_Orex_0465,'vddl'),gg_unit_Orex_0465)
    call RemoveItem(GetLastRemovedItem())
    call UnitRemoveItemSwapped(GetItemOfTypeFromUnitBJ(gg_unit_Orex_0465,'vddl'),gg_unit_Orex_0465)
    call RemoveItem(GetLastRemovedItem())
    call UnitRemoveItemSwapped(GetItemOfTypeFromUnitBJ(gg_unit_Orex_0465,'vddl'),gg_unit_Orex_0465)
    call RemoveItem(GetLastRemovedItem())
    call UnitRemoveItemSwapped(GetItemOfTypeFromUnitBJ(gg_unit_Orex_0465,'vddl'),gg_unit_Orex_0465)
    call RemoveItem(GetLastRemovedItem())
    else
    endif
    endif
    endif
    endif
    endfunction
    function InitTrig_Chogall_Starts takes nothing returns nothing
    set gg_trg_Chogall_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Chogall_Starts,function Trig_Chogall_Starts_Actions)
    endfunction