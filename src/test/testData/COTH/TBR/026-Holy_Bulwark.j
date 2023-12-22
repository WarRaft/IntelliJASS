function Trig_Holy_Bulwark_Func003Func010C takes nothing returns boolean
    if(not(udg_HolyShield<1.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Holy_Bulwark_Func003C takes nothing returns boolean
    if(not(udg_HolyShieldDamage>=udg_HolyShield))then
    return false
    endif
    return true
    endfunction
    function Trig_Holy_Bulwark_Actions takes nothing returns nothing
    set udg_HolyShieldDamage=GetEventDamage()
    call SetUnitLifeBJ(gg_unit_Edem_0550,(GetUnitStateSwap(UNIT_STATE_LIFE,gg_unit_Edem_0550)+udg_HolyShieldDamage))
    if(Trig_Holy_Bulwark_Func003C())then
    call DisableTrigger(GetTriggeringTrigger())
    set udg_HolyShieldDamage=(udg_HolyShieldDamage-udg_HolyShield)
    call UnitDamageTargetBJ(GetEventDamageSource(),gg_unit_Edem_0550,udg_HolyShieldDamage,ATTACK_TYPE_MELEE,DAMAGE_TYPE_NORMAL)
    call SetTextTagTextBJ(udg_MaraShieldText,"",10)
    call UnitRemoveAbilityBJ('A01E',gg_unit_Edem_0550)
    set udg_HolyShield=0.00
    set udg_HolyBulkwark=0
    call PauseTimerBJ(true,udg_HolyBulkwarkTimer)
    else
    set udg_HolyShield=(udg_HolyShield-udg_HolyShieldDamage)
    if(Trig_Holy_Bulwark_Func003Func010C())then
    call DisableTrigger(GetTriggeringTrigger())
    set udg_HolyShieldDamage=(udg_HolyShieldDamage-udg_HolyShield)
    call UnitDamageTargetBJ(GetEventDamageSource(),gg_unit_Edem_0550,udg_HolyShieldDamage,ATTACK_TYPE_MELEE,DAMAGE_TYPE_NORMAL)
    call SetTextTagTextBJ(udg_MaraShieldText,"",10)
    call UnitRemoveAbilityBJ('A01E',gg_unit_Edem_0550)
    set udg_HolyShield=0.00
    set udg_HolyBulkwark=0
    call PauseTimerBJ(true,udg_HolyBulkwarkTimer)
    else
    call SetTextTagTextBJ(udg_MaraShieldText,I2S(R2I(udg_HolyShield)),10)
    endif
    endif
    endfunction
    function InitTrig_Holy_Bulwark takes nothing returns nothing
    set gg_trg_Holy_Bulwark=CreateTrigger()
    call DisableTrigger(gg_trg_Holy_Bulwark)
    call TriggerRegisterUnitEvent(gg_trg_Holy_Bulwark,gg_unit_Edem_0550,EVENT_UNIT_DAMAGED)
    call TriggerAddAction(gg_trg_Holy_Bulwark,function Trig_Holy_Bulwark_Actions)
    endfunction