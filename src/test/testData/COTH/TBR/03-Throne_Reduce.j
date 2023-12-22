function Trig_Throne_Reduce_Func001Func001C takes nothing returns boolean
    if(not(GetEventDamage()>20.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Throne_Reduce_Func001C takes nothing returns boolean
    if(not(IsUnitAlly(GetEventDamageSource(),Player(0))==true))then
    return false
    endif
    if(not(IsUnitAlly(GetTriggerUnit(),Player(0))==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Throne_Reduce_Actions takes nothing returns nothing
    if(Trig_Throne_Reduce_Func001C())then
    call SetUnitLifeBJ(GetAttackedUnitBJ(),(GetUnitStateSwap(UNIT_STATE_LIFE,GetAttackedUnitBJ())+GetEventDamage()))
    else
    if(Trig_Throne_Reduce_Func001Func001C())then
    call SetUnitLifeBJ(GetAttackedUnitBJ(),((GetUnitStateSwap(UNIT_STATE_LIFE,GetAttackedUnitBJ())+GetEventDamage())-20.00))
    else
    endif
    endif
    endfunction
    function InitTrig_Throne_Reduce takes nothing returns nothing
    set gg_trg_Throne_Reduce=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Throne_Reduce,gg_unit_n00T_0340,EVENT_UNIT_DAMAGED)
    call TriggerRegisterUnitEvent(gg_trg_Throne_Reduce,gg_unit_n00S_0289,EVENT_UNIT_DAMAGED)
    call TriggerRegisterUnitEvent(gg_trg_Throne_Reduce,gg_unit_hkee_0203,EVENT_UNIT_DAMAGED)
    call TriggerRegisterUnitEvent(gg_trg_Throne_Reduce,gg_unit_n00O_0016,EVENT_UNIT_DAMAGED)
    call TriggerRegisterUnitEvent(gg_trg_Throne_Reduce,gg_unit_n00V_0272,EVENT_UNIT_DAMAGED)
    call TriggerRegisterUnitEvent(gg_trg_Throne_Reduce,gg_unit_halt_0257,EVENT_UNIT_DAMAGED)
    call TriggerRegisterUnitEvent(gg_trg_Throne_Reduce,gg_unit_n00A_0168,EVENT_UNIT_DAMAGED)
    call TriggerRegisterUnitEvent(gg_trg_Throne_Reduce,gg_unit_negm_0075,EVENT_UNIT_DAMAGED)
    call TriggerRegisterUnitEvent(gg_trg_Throne_Reduce,gg_unit_h00V_0535,EVENT_UNIT_DAMAGED)
    call TriggerRegisterUnitEvent(gg_trg_Throne_Reduce,gg_unit_otto_0421,EVENT_UNIT_DAMAGED)
    call TriggerRegisterUnitEvent(gg_trg_Throne_Reduce,gg_unit_ndmg_0236,EVENT_UNIT_DAMAGED)
    call TriggerAddAction(gg_trg_Throne_Reduce,function Trig_Throne_Reduce_Actions)
    endfunction