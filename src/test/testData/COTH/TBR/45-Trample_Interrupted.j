function Trig_Trample_Interrupted_Func012002 takes nothing returns nothing
    call UnitRemoveAbilityBJ('Aeth',GetEnumUnit())
    endfunction
    function Trig_Trample_Interrupted_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call DisableTrigger(gg_trg_Trample_Move)
    call DisableTrigger(gg_trg_Trample_AOE_Attack)
    call UnitRemoveBuffBJ('B03W',gg_unit_Nplh_0487)
    call UnitRemoveTypeBJ(UNIT_TYPE_MAGIC_IMMUNE,gg_unit_Nplh_0487)
    call UnitRemoveAbilityBJ('A065',gg_unit_Nplh_0487)
    call GroupClear(udg_TrampleAlreadySlide)
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsInRectAll(GetPlayableMapRect()),function Trig_Trample_Interrupted_Func012002)
    set udg_TrampleTarget=null
    endfunction
    function InitTrig_Trample_Interrupted takes nothing returns nothing
    set gg_trg_Trample_Interrupted=CreateTrigger()
    call DisableTrigger(gg_trg_Trample_Interrupted)
    call TriggerRegisterUnitEvent(gg_trg_Trample_Interrupted,gg_unit_Nplh_0487,EVENT_UNIT_ISSUED_TARGET_ORDER)
    call TriggerRegisterUnitEvent(gg_trg_Trample_Interrupted,gg_unit_Nplh_0487,EVENT_UNIT_ISSUED_POINT_ORDER)
    call TriggerRegisterUnitEvent(gg_trg_Trample_Interrupted,gg_unit_Nplh_0487,EVENT_UNIT_ISSUED_ORDER)
    call TriggerAddAction(gg_trg_Trample_Interrupted,function Trig_Trample_Interrupted_Actions)
    endfunction