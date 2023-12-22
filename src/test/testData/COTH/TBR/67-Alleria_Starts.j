function Trig_Alleria_Starts_Func001Func001Func001Func001Func021C takes nothing returns boolean
    if(not(udg_ArrowStormInt==0))then
    return false
    endif
    return true
    endfunction
    function Trig_Alleria_Starts_Func001Func001Func001Func001Func023C takes nothing returns boolean
    if(not(udg_ArrowStormInt==0))then
    return false
    endif
    return true
    endfunction
    function Trig_Alleria_Starts_Func001Func001Func001Func001Func025C takes nothing returns boolean
    if(not(udg_ArrowStormInt==0))then
    return false
    endif
    return true
    endfunction
    function Trig_Alleria_Starts_Func001Func001Func001Func001Func027C takes nothing returns boolean
    if(not(udg_ArrowStormInt==0))then
    return false
    endif
    return true
    endfunction
    function Trig_Alleria_Starts_Func001Func001Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A0D3'))then
    return false
    endif
    return true
    endfunction
    function Trig_Alleria_Starts_Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A022'))then
    return false
    endif
    return true
    endfunction
    function Trig_Alleria_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='AIrr'))then
    return false
    endif
    return true
    endfunction
    function Trig_Alleria_Starts_Actions takes nothing returns nothing
    if(Trig_Alleria_Starts_Func001C())then
    call UnitAddAbilityBJ('A030',gg_unit_Hvwd_0525)
    call SetUnitAbilityLevelSwapped('A030',gg_unit_Hvwd_0525,GetUnitAbilityLevelSwapped('AIrr',gg_unit_Hvwd_0525))
    call TriggerSleepAction(15.00)
    call UnitRemoveAbilityBJ('A030',gg_unit_Hvwd_0525)
    else
    if(Trig_Alleria_Starts_Func001Func001C())then
    set udg_EvasionCounter=0
    call UnitAddAbilityBJ('A05S',gg_unit_Hvwd_0525)
    call EnableTrigger(gg_trg_Evade)
    call PolledWait(6.00)
    call UnitRemoveAbilityBJ('A05S',gg_unit_Hvwd_0525)
    call DisableTrigger(gg_trg_Evade)
    else
    if(Trig_Alleria_Starts_Func001Func001Func001Func001C())then
    set udg_ArrowStormInt=0
    call SetUnitTimeScalePercent(gg_unit_Hvwd_0525,165.00)
    set udg_ArrowStormPoint[6]=GetUnitLoc(gg_unit_Hvwd_0525)
    set udg_ArrowStormTarget[6]=GetSpellTargetLoc()
    set udg_TempPoint3=PolarProjectionBJ(udg_ArrowStormPoint[6],20.00,AngleBetweenPoints(udg_ArrowStormPoint[6],udg_ArrowStormTarget[6]))
    set udg_ArrowStormPoint[1]=PolarProjectionBJ(udg_ArrowStormPoint[6],90.00,AngleBetweenPoints(udg_ArrowStormPoint[6],udg_ArrowStormTarget[6]))
    set udg_ArrowStormPoint[2]=PolarProjectionBJ(udg_TempPoint3,190.00,(AngleBetweenPoints(udg_ArrowStormPoint[6],udg_ArrowStormTarget[6])-90.00))
    set udg_ArrowStormPoint[3]=PolarProjectionBJ(udg_TempPoint3,190.00,(AngleBetweenPoints(udg_ArrowStormPoint[6],udg_ArrowStormTarget[6])+90.00))
    call RemoveLocation(udg_TempPoint3)
    set udg_TempPoint3=PolarProjectionBJ(udg_ArrowStormPoint[6],50.00,AngleBetweenPoints(udg_ArrowStormPoint[6],udg_ArrowStormTarget[6]))
    set udg_ArrowStormPoint[4]=PolarProjectionBJ(udg_TempPoint3,95.00,(AngleBetweenPoints(udg_ArrowStormPoint[6],udg_ArrowStormTarget[6])-90.00))
    set udg_ArrowStormPoint[5]=PolarProjectionBJ(udg_TempPoint3,95.00,(AngleBetweenPoints(udg_ArrowStormPoint[6],udg_ArrowStormTarget[6])+90.00))
    call RemoveLocation(udg_TempPoint3)
    set udg_ArrowStormTarget[1]=PolarProjectionBJ(udg_ArrowStormPoint[6],1100.00,AngleBetweenPoints(udg_ArrowStormPoint[6],udg_ArrowStormTarget[6]))
    set udg_ArrowStormTarget[2]=PolarProjectionBJ(udg_ArrowStormPoint[2],1100.00,AngleBetweenPoints(udg_ArrowStormPoint[6],udg_ArrowStormTarget[6]))
    set udg_ArrowStormTarget[3]=PolarProjectionBJ(udg_ArrowStormPoint[3],1100.00,AngleBetweenPoints(udg_ArrowStormPoint[6],udg_ArrowStormTarget[6]))
    set udg_ArrowStormTarget[4]=PolarProjectionBJ(udg_ArrowStormPoint[4],1100.00,AngleBetweenPoints(udg_ArrowStormPoint[6],udg_ArrowStormTarget[6]))
    set udg_ArrowStormTarget[5]=PolarProjectionBJ(udg_ArrowStormPoint[5],1100.00,AngleBetweenPoints(udg_ArrowStormPoint[6],udg_ArrowStormTarget[6]))
    call ConditionalTriggerExecute(gg_trg_Arrow_Storm)
    call PolledWait(0.75)
    if(Trig_Alleria_Starts_Func001Func001Func001Func001Func021C())then
    call ConditionalTriggerExecute(gg_trg_Arrow_Storm)
    else
    return
    endif
    call PolledWait(0.75)
    if(Trig_Alleria_Starts_Func001Func001Func001Func001Func023C())then
    call ConditionalTriggerExecute(gg_trg_Arrow_Storm)
    else
    return
    endif
    call PolledWait(0.75)
    if(Trig_Alleria_Starts_Func001Func001Func001Func001Func025C())then
    call ConditionalTriggerExecute(gg_trg_Arrow_Storm)
    else
    return
    endif
    call PolledWait(0.75)
    if(Trig_Alleria_Starts_Func001Func001Func001Func001Func027C())then
    call ConditionalTriggerExecute(gg_trg_Arrow_Storm)
    else
    return
    endif
    call SetUnitTimeScalePercent(gg_unit_Hvwd_0525,100.00)
    call RemoveLocation(udg_ArrowStormPoint[1])
    call RemoveLocation(udg_ArrowStormPoint[2])
    call RemoveLocation(udg_ArrowStormPoint[3])
    call RemoveLocation(udg_ArrowStormPoint[4])
    call RemoveLocation(udg_ArrowStormPoint[5])
    call RemoveLocation(udg_ArrowStormPoint[6])
    call RemoveLocation(udg_ArrowStormTarget[1])
    call RemoveLocation(udg_ArrowStormTarget[2])
    call RemoveLocation(udg_ArrowStormTarget[3])
    call RemoveLocation(udg_ArrowStormTarget[4])
    call RemoveLocation(udg_ArrowStormTarget[5])
    call RemoveLocation(udg_ArrowStormTarget[6])
    else
    endif
    endif
    endif
    endfunction
    function InitTrig_Alleria_Starts takes nothing returns nothing
    set gg_trg_Alleria_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Alleria_Starts,function Trig_Alleria_Starts_Actions)
    endfunction