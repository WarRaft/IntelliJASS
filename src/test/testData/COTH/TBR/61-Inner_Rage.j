function Trig_Inner_Rage_Func003C takes nothing returns boolean
    if(not(UnitHasBuffBJ(udg_InnerRageTarget,'Bams')==false))then
    return false
    endif
    return true
    endfunction
    function Trig_Inner_Rage_Actions takes nothing returns nothing
    set udg_InnerRage=GetEventDamage()
    if(Trig_Inner_Rage_Func003C())then
    call UnitDamageTargetBJ(gg_unit_o00Q_0445,udg_InnerRageTarget,udg_InnerRage,ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    else
    set udg_InnerRageTarget=null
    endif
    endfunction
    function InitTrig_Inner_Rage takes nothing returns nothing
    set gg_trg_Inner_Rage=CreateTrigger()
    call DisableTrigger(gg_trg_Inner_Rage)
    call TriggerRegisterUnitEvent(gg_trg_Inner_Rage,gg_unit_Nbst_0519,EVENT_UNIT_DAMAGED)
    call TriggerAddAction(gg_trg_Inner_Rage,function Trig_Inner_Rage_Actions)
    endfunction