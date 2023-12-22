function Trig_Holy_Bulwark_Ends_Actions takes nothing returns nothing
    call DisableTrigger(gg_trg_Holy_Bulwark)
    call SetTextTagTextBJ(udg_MaraShieldText,"",10)
    set udg_HolyBulkwark=0
    set udg_HolyShield=0.00
    call UnitRemoveAbilityBJ('A01E',gg_unit_Edem_0550)
    endfunction

function Trig_Holy_Bulwark_Starts_Func004C takes nothing returns boolean
    if((GetSpellAbilityId()=='A05G'))then
    return true
    endif
    if((GetSpellAbilityId()=='Aspl'))then
    return true
    endif
    if((GetSpellAbilityId()=='A033'))then
    return true
    endif
    return false
    endfunction
    function Trig_Holy_Bulwark_Starts_Conditions takes nothing returns boolean
    if(not(udg_HolyBulkwarkOn==true))then
    return false
    endif
    if(not Trig_Holy_Bulwark_Starts_Func004C())then
    return false
    endif
    return true
    endfunction
    function Trig_Holy_Bulwark_Starts_Func002C takes nothing returns boolean
    if(not(udg_HolyBulkwark==0))then
    return false
    endif
    return true
    endfunction
    function Trig_Holy_Bulwark_Starts_Actions takes nothing returns nothing
    call PolledWait(0.50)
    if(Trig_Holy_Bulwark_Starts_Func002C())then
    call UnitAddAbilityBJ('A01E',gg_unit_Edem_0550)
    set udg_HolyShield=((I2R(GetUnitAbilityLevelSwapped('AIba',gg_unit_Edem_0550))*60.00)+(GetUnitStateSwap(UNIT_STATE_MAX_LIFE,gg_unit_Edem_0550)*0.08))
    call SetTextTagPosUnitBJ(udg_MaraShieldText,gg_unit_Edem_0550,0)
    call SetTextTagTextBJ(udg_MaraShieldText,I2S(R2I(udg_HolyShield)),10)
    set udg_HolyBulkwark=1
    call EnableTrigger(gg_trg_Holy_Bulwark)
    call EnableTrigger(gg_trg_Shields_Move)
    call TimerStart(udg_HolyBulkwarkTimer,7.5, false, function Trig_Holy_Bulwark_Ends_Actions)
    else
    set udg_HolyShield=(udg_HolyShield+((I2R(GetUnitAbilityLevelSwapped('AIba',gg_unit_Edem_0550))*60.00)+(GetUnitStateSwap(UNIT_STATE_MAX_LIFE,gg_unit_Edem_0550)*0.08)))
    call SetTextTagPosUnitBJ(udg_MaraShieldText,gg_unit_Edem_0550,0)
    call SetTextTagTextBJ(udg_MaraShieldText,I2S(R2I(udg_HolyShield)),10)
    call PauseTimerBJ(true, udg_HolyBulkwarkTimer)
    call TimerStart(udg_HolyBulkwarkTimer,7.5, false, function Trig_Holy_Bulwark_Ends_Actions)
    endif
    endfunction
    function InitTrig_Holy_Bulwark_Starts takes nothing returns nothing
    set gg_trg_Holy_Bulwark_Starts=CreateTrigger()
    call TriggerAddCondition(gg_trg_Holy_Bulwark_Starts,Condition(function Trig_Holy_Bulwark_Starts_Conditions))
    call TriggerAddAction(gg_trg_Holy_Bulwark_Starts,function Trig_Holy_Bulwark_Starts_Actions)
    endfunction