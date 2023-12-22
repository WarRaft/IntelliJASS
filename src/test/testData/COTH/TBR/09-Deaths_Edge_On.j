function Trig_Deaths_Edge_Damage_Off_Func003Func002Func001Func001C takes nothing returns boolean
    if(not(IsUnitInGroup(udg_DeathsUnitDamage[udg_DeathsLoopIndexDamage],udg_DeathGroup)==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Deaths_Edge_Damage_Off_Func003Func002Func001C takes nothing returns boolean
    if(not(udg_DeathsWaitDamage[udg_DeathsLoopIndexDamage]<=0.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Deaths_Edge_Damage_Off_Func003Func002C takes nothing returns boolean
    if(not(udg_DeathsWaitDamage[udg_DeathsLoopIndexDamage]>0.00))then
    return false
    endif
    if(not(udg_DeathsWaitDamage[udg_DeathsLoopIndexDamage]<udg_DeathsWaitDamageNew))then
    return false
    endif
    return true
    endfunction
    function Trig_Deaths_Edge_Damage_Off_Func004C takes nothing returns boolean
    if(not(udg_DeathsIndexDamage>0))then
    return false
    endif
    return true
    endfunction
    function Trig_Deaths_Edge_Damage_Off_Actions takes nothing returns nothing
    set udg_DeathsWaitDamageNew=5.00
    set udg_DeathsLoopIndexDamage=1
    loop
    exitwhen udg_DeathsLoopIndexDamage>udg_DeathsIndexDamage
    set udg_DeathsWaitDamage[udg_DeathsLoopIndexDamage]=(udg_DeathsWaitDamage[udg_DeathsLoopIndexDamage]-TimerGetElapsed(udg_DeathsTimerDamage))
    if(Trig_Deaths_Edge_Damage_Off_Func003Func002C())then
    set udg_DeathsWaitDamageNew=udg_DeathsWaitDamage[udg_DeathsLoopIndexDamage]
    else
    if(Trig_Deaths_Edge_Damage_Off_Func003Func002Func001C())then
    if(Trig_Deaths_Edge_Damage_Off_Func003Func002Func001Func001C())then
    call UnitDamageTargetBJ(udg_DeathsCasterDamage[udg_DeathsLoopIndexDamage],udg_DeathsUnitDamage[udg_DeathsLoopIndexDamage],150.00,ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    call GroupRemoveUnitSimple(udg_DeathsUnitDamage[udg_DeathsLoopIndexDamage],udg_DeathGroup)
    else
    endif
    set udg_DeathsCasterDamage[udg_DeathsLoopIndexDamage]=udg_DeathsCasterDamage[udg_DeathsIndexDamage]
    set udg_DeathsUnitDamage[udg_DeathsLoopIndexDamage]=udg_DeathsUnitDamage[udg_DeathsIndexDamage]
    set udg_DeathsWaitDamage[udg_DeathsLoopIndexDamage]=udg_DeathsWaitDamage[udg_DeathsIndexDamage]
    set udg_DeathsLoopIndexDamage=(udg_DeathsLoopIndexDamage-1)
    set udg_DeathsIndexDamage=(udg_DeathsIndexDamage-1)
    else
    endif
    endif
    set udg_DeathsLoopIndexDamage=udg_DeathsLoopIndexDamage+1
    endloop
    if(Trig_Deaths_Edge_Damage_Off_Func004C())then
    call TimerStart(udg_DeathsTimerDamage, udg_DeathsWaitDamageNew, false, function Trig_Deaths_Edge_Damage_Off_Actions)
    else
    endif
    endfunction

function Trig_Deaths_Edge_Off_Func003Func002Func001C takes nothing returns boolean
    if(not(udg_DeathsWait[udg_DeathsLoopIndex]<=0.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Deaths_Edge_Off_Func003Func002C takes nothing returns boolean
    if(not(udg_DeathsWait[udg_DeathsLoopIndex]>0.00))then
    return false
    endif
    if(not(udg_DeathsWait[udg_DeathsLoopIndex]<udg_DeathsWaitNew))then
    return false
    endif
    return true
    endfunction
    function Trig_Deaths_Edge_Off_Func004C takes nothing returns boolean
    if(not(udg_DeathsIndex>0))then
    return false
    endif
    return true
    endfunction
    function Trig_Deaths_Edge_Off_Actions takes nothing returns nothing
    set udg_DeathsWaitNew=10.00
    set udg_DeathsLoopIndex=1
    loop
    exitwhen udg_DeathsLoopIndex>udg_DeathsIndex
    set udg_DeathsWait[udg_DeathsLoopIndex]=(udg_DeathsWait[udg_DeathsLoopIndex]-TimerGetElapsed(udg_DeathsTimer))
    if(Trig_Deaths_Edge_Off_Func003Func002C())then
    set udg_DeathsWaitNew=udg_DeathsWait[udg_DeathsLoopIndex]
    else
    if(Trig_Deaths_Edge_Off_Func003Func002Func001C())then
    call UnitRemoveAbilityBJ('A0BL',udg_DeathsUnit[udg_DeathsLoopIndex])
    set udg_DeathsUnit[udg_DeathsLoopIndex]=udg_DeathsUnit[udg_DeathsIndex]
    set udg_DeathsWait[udg_DeathsLoopIndex]=udg_DeathsWait[udg_DeathsIndex]
    set udg_DeathsLoopIndex=(udg_DeathsLoopIndex-1)
    set udg_DeathsIndex=(udg_DeathsIndex-1)
    else
    endif
    endif
    set udg_DeathsLoopIndex=udg_DeathsLoopIndex+1
    endloop
    if(Trig_Deaths_Edge_Off_Func004C())then
    call TimerStart(udg_DeathsTimer,udg_DeathsWaitNew,false, function Trig_Deaths_Edge_Off_Actions)
    else
    endif
    endfunction

function Trig_Deaths_Edge_On_Conditions takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A034'))then
    return false
    endif
    return true
    endfunction
    function Trig_Deaths_Edge_On_Func005Func001C takes nothing returns boolean
    if(not(TimerGetRemaining(udg_DeathsTimer)<udg_DeathsWait[udg_DeathsIndex]))then
    return false
    endif
    return true
    endfunction
    function Trig_Deaths_Edge_On_Func005C takes nothing returns boolean
    if(not(udg_DeathsIndex==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Deaths_Edge_On_Func016Func001C takes nothing returns boolean
    if(not(TimerGetRemaining(udg_DeathsTimerDamage)<udg_DeathsWaitDamage[udg_DeathsIndexDamage]))then
    return false
    endif
    return true
    endfunction
    function Trig_Deaths_Edge_On_Func016C takes nothing returns boolean
    if(not(udg_DeathsIndexDamage==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Deaths_Edge_On_Actions takes nothing returns nothing
    set udg_DeathsIndex=(udg_DeathsIndex+1)
    set udg_DeathsWait[udg_DeathsIndex]=10.00
    set udg_DeathsUnit[udg_DeathsIndex]=GetSpellTargetUnit()
    call UnitAddAbilityBJ('A0BL',udg_DeathsUnit[udg_DeathsIndex])
    if(Trig_Deaths_Edge_On_Func005C())then
    call TimerStart(udg_DeathsTimer,10, false, function Trig_Deaths_Edge_Damage_Off_Actions)
    else
    if(Trig_Deaths_Edge_On_Func005Func001C())then
    set udg_DeathsWait[udg_DeathsIndex]=(10.00+TimerGetElapsed(udg_DeathsTimer))
    else
    endif
    endif
    set udg_TempPoint=GetUnitLoc(GetSpellAbilityUnit())
    set udg_TempPoint2=GetUnitLoc(GetSpellTargetUnit())
    set udg_DeathInt=R2I(DistanceBetweenPoints(udg_TempPoint,udg_TempPoint2))
    call RemoveLocation(udg_TempPoint)
    call RemoveLocation(udg_TempPoint2)
    set udg_DeathsIndexDamage=(udg_DeathsIndexDamage+1)
    set udg_DeathsWaitDamage[udg_DeathsIndexDamage]=((I2R(udg_DeathInt)/ 900.00)+0.15)
    set udg_DeathsCasterDamage[udg_DeathsIndexDamage]=GetSpellAbilityUnit()
    set udg_DeathsUnitDamage[udg_DeathsIndexDamage]=GetSpellTargetUnit()
    call GroupAddUnitSimple(udg_DeathsUnitDamage[udg_DeathsIndexDamage],udg_DeathGroup)
    if(Trig_Deaths_Edge_On_Func016C())then
    call TimerStart(udg_DeathsTimerDamage,udg_DeathsWaitDamage[udg_DeathsIndexDamage],false, function Trig_Deaths_Edge_Damage_Off_Actions)
    else
    if(Trig_Deaths_Edge_On_Func016Func001C())then
    set udg_DeathsWaitDamage[udg_DeathsIndexDamage]=(udg_DeathsWaitDamage[udg_DeathsIndexDamage]+TimerGetElapsed(udg_DeathsTimerDamage))
    else
    endif
    endif
    endfunction
    function InitTrig_Deaths_Edge_On takes nothing returns nothing
    set gg_trg_Deaths_Edge_On=CreateTrigger()
    call TriggerAddCondition(gg_trg_Deaths_Edge_On,Condition(function Trig_Deaths_Edge_On_Conditions))
    call TriggerAddAction(gg_trg_Deaths_Edge_On,function Trig_Deaths_Edge_On_Actions)
    endfunction