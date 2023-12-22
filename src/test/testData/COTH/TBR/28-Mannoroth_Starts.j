
    function Trig_Mannoroth_Starts_Func001Func019002 takes nothing returns nothing
    call UnitRemoveAbilityBJ('Aeth',GetEnumUnit())
    endfunction
    function Trig_Mannoroth_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A05U'))then
    return false
    endif
    return true
    endfunction
    function Trig_Mannoroth_Starts_Actions takes nothing returns nothing
    if(Trig_Mannoroth_Starts_Func001C())then
    set udg_TrampleTarget=GetSpellTargetUnit()
    call UnitAddAbilityBJ('Aeth',GetTriggerUnit())
    call UnitAddAbilityBJ('A065',GetTriggerUnit())
    call UnitAddTypeBJ(UNIT_TYPE_MAGIC_IMMUNE,GetTriggerUnit())
    call GroupClear(udg_TrampleAlreadySlide)
    call EnableTrigger(gg_trg_Trample_AOE_Attack)
    call EnableTrigger(gg_trg_Trample_Move)
    call PolledWait(0.01)
    call IssueTargetOrder(gg_unit_Nplh_0487,"attack",GetSpellTargetUnit())
    call EnableTrigger(gg_trg_Trample_Interrupted)
    call PlaySoundOnUnitBJ(gg_snd_StampedeCaster1,100,gg_unit_Nplh_0487)
    call PolledWait(2.69)
    call UnitRemoveTypeBJ(UNIT_TYPE_MAGIC_IMMUNE,GetTriggerUnit())
    call UnitRemoveAbilityBJ('A065',GetTriggerUnit())
    call UnitRemoveBuffBJ('B03W',gg_unit_Nplh_0487)
    call GroupClear(udg_TrampleAlreadySlide)
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsInRectAll(GetPlayableMapRect()),function Trig_Mannoroth_Starts_Func001Func019002)
    call DisableTrigger(gg_trg_Trample_Interrupted)
    call DisableTrigger(gg_trg_Trample_AOE_Attack)
    call DisableTrigger(gg_trg_Trample_Move)
    set udg_TrampleTarget=null
    else
    endif
    endfunction
    function InitTrig_Mannoroth_Starts takes nothing returns nothing
    set gg_trg_Mannoroth_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Mannoroth_Starts,function Trig_Mannoroth_Starts_Actions)
    endfunction