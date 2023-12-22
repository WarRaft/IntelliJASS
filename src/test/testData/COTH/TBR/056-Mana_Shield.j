function Trig_Mana_Shield_Func003Func002C takes nothing returns boolean
    if(not(udg_ManaShield<1.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Mana_Shield_Func003C takes nothing returns boolean
    if(not(udg_ManaShieldDamage>=udg_ManaShield))then
    return false
    endif
    return true
    endfunction
    function Trig_Mana_Shield_Actions takes nothing returns nothing
    call SetUnitLifeBJ(gg_unit_Hjai_0459,(GetUnitStateSwap(UNIT_STATE_LIFE,gg_unit_Hjai_0459)+GetEventDamage()))
    set udg_ManaShieldDamage=GetEventDamage()
    if(Trig_Mana_Shield_Func003C())then
    call DisableTrigger(GetTriggeringTrigger())
    call UnitRemoveBuffBJ('BNms',gg_unit_Hjai_0459)
    set udg_ManaShieldDamage=(udg_ManaShieldDamage-udg_ManaShield)
    call UnitDamageTargetBJ(GetEventDamageSource(),gg_unit_Hjai_0459,udg_ManaShieldDamage,ATTACK_TYPE_MELEE,DAMAGE_TYPE_NORMAL)
    call SetTextTagTextBJ(udg_RhoninShieldText,"",10)
    set udg_ManaShield=0.00
    set udg_ManaShieldCounter=0
    call PauseTimerBJ(true,udg_ManaShieldTimer)
    else
    set udg_ManaShield=(udg_ManaShield-udg_ManaShieldDamage)
    if(Trig_Mana_Shield_Func003Func002C())then
    call DisableTrigger(GetTriggeringTrigger())
    call UnitRemoveBuffBJ('BNms',gg_unit_Hjai_0459)
    set udg_ManaShieldDamage=(udg_ManaShieldDamage-udg_ManaShield)
    call UnitDamageTargetBJ(GetEventDamageSource(),gg_unit_Hjai_0459,udg_ManaShieldDamage,ATTACK_TYPE_MELEE,DAMAGE_TYPE_NORMAL)
    call SetTextTagTextBJ(udg_RhoninShieldText,"",10)
    set udg_ManaShield=0.00
    set udg_ManaShieldCounter=0
    call PauseTimerBJ(true,udg_ManaShieldTimer)
    else
    call SetTextTagTextBJ(udg_RhoninShieldText,I2S(R2I(udg_ManaShield)),10)
    call SetUnitManaBJ(gg_unit_Hjai_0459,(GetUnitStateSwap(UNIT_STATE_MANA,gg_unit_Hjai_0459)+(GetEventDamage()*0.10)))
    endif
    endif
    endfunction
    function InitTrig_Mana_Shield takes nothing returns nothing
    set gg_trg_Mana_Shield=CreateTrigger()
    call DisableTrigger(gg_trg_Mana_Shield)
    call TriggerRegisterUnitEvent(gg_trg_Mana_Shield,gg_unit_Hjai_0459,EVENT_UNIT_DAMAGED)
    call TriggerAddAction(gg_trg_Mana_Shield,function Trig_Mana_Shield_Actions)
    endfunction