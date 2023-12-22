function Trig_Hellish_Shroud_Damage_Func003Func011C takes nothing returns boolean
    if(not(udg_HellishShroud<1.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Hellish_Shroud_Damage_Func003C takes nothing returns boolean
    if(not(udg_HellishShroudDamageTaken>=udg_HellishShroud))then
    return false
    endif
    return true
    endfunction
    function Trig_Hellish_Shroud_Damage_Actions takes nothing returns nothing
    set udg_HellishShroudDamageTaken=GetEventDamage()
    call SetUnitLifeBJ(gg_unit_Npld_0527,(GetUnitStateSwap(UNIT_STATE_LIFE,gg_unit_Npld_0527)+udg_HellishShroudDamageTaken))
    if(Trig_Hellish_Shroud_Damage_Func003C())then
    call DisableTrigger(GetTriggeringTrigger())
    call DisableTrigger(gg_trg_Hellish_Shroud_Explode)
    set udg_HellishShroudOn=false
    set udg_HellishShroud=0.00
    set udg_HellishShroudDamage=0.00
    call UnitDamageTargetBJ(GetEventDamageSource(),gg_unit_Npld_0527,(udg_HellishShroudDamageTaken-udg_HellishShroud),ATTACK_TYPE_MELEE,DAMAGE_TYPE_NORMAL)
    call UnitRemoveAbilityBJ('A0C4',gg_unit_Npld_0527)
    call UnitRemoveBuffBJ('B03T',gg_unit_Npld_0527)
    call SetTextTagTextBJ(udg_HellishShroudText,"",10)
    else
    set udg_HellishShroud=(udg_HellishShroud-udg_HellishShroudDamageTaken)
    if(Trig_Hellish_Shroud_Damage_Func003Func011C())then
    call DisableTrigger(GetTriggeringTrigger())
    call DisableTrigger(gg_trg_Hellish_Shroud_Explode)
    set udg_HellishShroudOn=false
    set udg_HellishShroud=0.00
    set udg_HellishShroudDamage=0.00
    call UnitDamageTargetBJ(GetEventDamageSource(),gg_unit_Npld_0527,(udg_HellishShroudDamageTaken-udg_HellishShroud),ATTACK_TYPE_MELEE,DAMAGE_TYPE_NORMAL)
    call UnitRemoveAbilityBJ('A0C4',gg_unit_Npld_0527)
    call UnitRemoveBuffBJ('B03T',gg_unit_Npld_0527)
    call SetTextTagTextBJ(udg_HellishShroudText,"",10)
    else
    set udg_HellishShroudDamage=(udg_HellishShroudDamage+udg_HellishShroudDamageTaken)
    call SetTextTagPosUnitBJ(udg_HellishShroudText,gg_unit_Npld_0527,0)
    call SetTextTagTextBJ(udg_HellishShroudText,I2S(R2I(udg_HellishShroud)),10)
    endif
    endif
    endfunction
    function InitTrig_Hellish_Shroud_Damage takes nothing returns nothing
    set gg_trg_Hellish_Shroud_Damage=CreateTrigger()
    call DisableTrigger(gg_trg_Hellish_Shroud_Damage)
    call TriggerRegisterUnitEvent(gg_trg_Hellish_Shroud_Damage,gg_unit_Npld_0527,EVENT_UNIT_DAMAGED)
    call TriggerAddAction(gg_trg_Hellish_Shroud_Damage,function Trig_Hellish_Shroud_Damage_Actions)
    endfunction