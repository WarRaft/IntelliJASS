function Trig_Shields_Move_Func001C takes nothing returns boolean
    if(not(udg_HolyBulkwark==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Shields_Move_Func002C takes nothing returns boolean
    if(not(udg_ManaShieldCounter==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Shields_Move_Func003C takes nothing returns boolean
    if(not(udg_HellishShroudOn==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Shields_Move_Func004C takes nothing returns boolean
    if(not(udg_HolyBulkwark==0))then
    return false
    endif
    if(not(udg_ManaShieldCounter==0))then
    return false
    endif
    if(not(udg_HellishShroudOn==false))then
    return false
    endif
    return true
    endfunction
    function Trig_Shields_Move_Actions takes nothing returns nothing
    if(Trig_Shields_Move_Func001C())then
    call SetTextTagPosUnitBJ(udg_MaraShieldText,gg_unit_Edem_0550,0)
    call SetTextTagTextBJ(udg_MaraShieldText,I2S(R2I(udg_HolyShield)),10)
    else
    endif
    if(Trig_Shields_Move_Func002C())then
    call SetTextTagPosUnitBJ(udg_RhoninShieldText,gg_unit_Hjai_0459,0)
    call SetTextTagTextBJ(udg_RhoninShieldText,I2S(R2I(udg_ManaShield)),10)
    else
    endif
    if(Trig_Shields_Move_Func003C())then
    call SetTextTagPosUnitBJ(udg_HellishShroudText,gg_unit_Npld_0527,0)
    call SetTextTagTextBJ(udg_HellishShroudText,I2S(R2I(udg_HellishShroud)),10)
    else
    endif
    if(Trig_Shields_Move_Func004C())then
    call DisableTrigger(GetTriggeringTrigger())
    else
    endif
    endfunction
    function InitTrig_Shields_Move takes nothing returns nothing
    set gg_trg_Shields_Move=CreateTrigger()
    call DisableTrigger(gg_trg_Shields_Move)
    call TriggerRegisterTimerEventPeriodic(gg_trg_Shields_Move,0.03)
    call TriggerAddAction(gg_trg_Shields_Move,function Trig_Shields_Move_Actions)
    endfunction