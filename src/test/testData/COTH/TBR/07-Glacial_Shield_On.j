

function Trig_Glacial_Shield_Off_Func003Func002Func001C takes nothing returns boolean
    if(not(udg_GlacialWait[udg_GlacialLoopIndex]<=0.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Glacial_Shield_Off_Func003Func002C takes nothing returns boolean
    if(not(udg_GlacialWait[udg_GlacialLoopIndex]>0.00))then
    return false
    endif
    if(not(udg_GlacialWait[udg_GlacialLoopIndex]<udg_GlacialWaitNew))then
    return false
    endif
    return true
    endfunction
    function Trig_Glacial_Shield_Off_Func004C takes nothing returns boolean
    if(not(udg_GlacialIndex>0))then
    return false
    endif
    return true
    endfunction
    function Trig_Glacial_Shield_Off_Actions takes nothing returns nothing
    set udg_GlacialWaitNew=8.00
    set udg_GlacialLoopIndex=1
    loop
    exitwhen udg_GlacialLoopIndex>udg_GlacialIndex
    set udg_GlacialWait[udg_GlacialLoopIndex]=(udg_GlacialWait[udg_GlacialLoopIndex]-TimerGetElapsed(udg_GlacialTimer))
    if(Trig_Glacial_Shield_Off_Func003Func002C())then
    set udg_GlacialWaitNew=udg_GlacialWait[udg_GlacialLoopIndex]
    else
    if(Trig_Glacial_Shield_Off_Func003Func002Func001C())then
    call UnitRemoveTypeBJ(UNIT_TYPE_ANCIENT,udg_GlacialUnit[udg_GlacialLoopIndex])
    set udg_GlacialUnit[udg_GlacialLoopIndex]=udg_GlacialUnit[udg_GlacialIndex]
    set udg_GlacialWait[udg_GlacialLoopIndex]=udg_GlacialWait[udg_GlacialIndex]
    set udg_GlacialLoopIndex=(udg_GlacialLoopIndex-1)
    set udg_GlacialIndex=(udg_GlacialIndex-1)
    else
    endif
    endif
    set udg_GlacialLoopIndex=udg_GlacialLoopIndex+1
    endloop
    if(Trig_Glacial_Shield_Off_Func004C())then
    call TimerStart(udg_GlacialTimer,udg_GlacialWaitNew,false, function Trig_Glacial_Shield_Off_Actions)
    else
    endif
    endfunction

function Trig_Glacial_Shield_On_Conditions takes nothing returns boolean
    if(not(GetSpellAbilityId()=='AIhb'))then
    return false
    endif
    return true
    endfunction
    function Trig_Glacial_Shield_On_Func011Func001C takes nothing returns boolean
    if(not(TimerGetRemaining(udg_GlacialTimer)<udg_GlacialWait[udg_GlacialIndex]))then
    return false
    endif
    return true
    endfunction
    function Trig_Glacial_Shield_On_Func011C takes nothing returns boolean
    if(not(udg_GlacialIndex==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Glacial_Shield_On_Actions takes nothing returns nothing
    set udg_TempPoint=GetUnitLoc(GetSpellAbilityUnit())
    call CreateNUnitsAtLoc(1,'o008',GetOwningPlayer(GetSpellAbilityUnit()),udg_TempPoint,bj_UNIT_FACING)
    call UnitAddAbilityBJ('Aams',GetLastCreatedUnit())
    call IssueTargetOrder(GetLastCreatedUnit(),"antimagicshell",GetSpellAbilityUnit())
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call RemoveLocation(udg_TempPoint)
    set udg_GlacialIndex=(udg_GlacialIndex+1)
    set udg_GlacialWait[udg_GlacialIndex]=8.00
    set udg_GlacialUnit[udg_GlacialIndex]=GetSpellTargetUnit()
    call UnitAddTypeBJ(UNIT_TYPE_ANCIENT,udg_GlacialUnit[udg_GlacialIndex])
    if(Trig_Glacial_Shield_On_Func011C())then
    call TimerStart(udg_GlacialTimer,8,false, function Trig_Glacial_Shield_Off_Actions)
    else
    if(Trig_Glacial_Shield_On_Func011Func001C())then
    set udg_GlacialWait[udg_GlacialIndex]=(8.00+TimerGetElapsed(udg_GlacialTimer))
    else
    endif
    endif
    endfunction
    function InitTrig_Glacial_Shield_On takes nothing returns nothing
    set gg_trg_Glacial_Shield_On=CreateTrigger()
    call TriggerAddCondition(gg_trg_Glacial_Shield_On,Condition(function Trig_Glacial_Shield_On_Conditions))
    call TriggerAddAction(gg_trg_Glacial_Shield_On,function Trig_Glacial_Shield_On_Actions)
    endfunction