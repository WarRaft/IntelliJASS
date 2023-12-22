function Trig_Warmth_Conditions takes nothing returns boolean
    return GetSpellAbilityId()=='AHfs' or GetSpellAbilityId()=='A06I' or GetSpellAbilityId()=='AUcs'
endfunction

function ChangeLevelWarmath takes nothing returns nothing
    call UnitRemoveAbility(gg_unit_Hkal_0491, 'A0G2')
    call UnitRemoveAbility(gg_unit_Hkal_0491, 'A0G0')
    call UnitRemoveAbility(gg_unit_Hkal_0491, 'A0G7')
    call UnitRemoveAbility(gg_unit_Hkal_0491, 'A0G1')
    call UnitRemoveAbility(gg_unit_Hkal_0491, 'A0G5')
    call UnitRemoveAbility(gg_unit_Hkal_0491, 'A0G8')
    call UnitRemoveAbility(gg_unit_Hkal_0491, 'A0G3')
    call UnitRemoveAbility(gg_unit_Hkal_0491, 'A0G6')
    call UnitRemoveAbility(gg_unit_Hkal_0491, 'A0G4')
    call UnitRemoveAbility(gg_unit_Hkal_0491, 'A07B')
    call UnitRemoveAbility(gg_unit_Hkal_0491, 'A0GD')
    call UnitRemoveAbility(gg_unit_Hkal_0491, 'A0GH')
    call UnitRemoveAbility(gg_unit_Hkal_0491, 'A0GB')
    call UnitRemoveAbility(gg_unit_Hkal_0491, 'A0GA')
    call UnitRemoveAbility(gg_unit_Hkal_0491, 'A0G9')
    call UnitRemoveAbility(gg_unit_Hkal_0491, 'A02W')
    call UnitRemoveAbility(gg_unit_Hkal_0491, 'A0GE')
    call UnitRemoveAbility(gg_unit_Hkal_0491, 'A0GF')
    call UnitRemoveAbility(gg_unit_Hkal_0491, 'A0GG')
    call UnitRemoveAbility(gg_unit_Hkal_0491, 'A0GC')
    if (udg_Warmth == 1) then
        call UnitAddAbility(gg_unit_Hkal_0491, 'A0G2')
        call UnitAddAbility(gg_unit_Hkal_0491, 'A0GD')
    elseif (udg_Warmth == 2) then
        call UnitAddAbility(gg_unit_Hkal_0491, 'A0G0')
        call UnitAddAbility(gg_unit_Hkal_0491, 'A0GH')
    elseif (udg_Warmth == 3) then
        call UnitAddAbility(gg_unit_Hkal_0491, 'A0G7')
        call UnitAddAbility(gg_unit_Hkal_0491, 'A0GB')
    elseif (udg_Warmth == 4) then
        call UnitAddAbility(gg_unit_Hkal_0491, 'A0G1')
        call UnitAddAbility(gg_unit_Hkal_0491, 'A0GA')
    elseif (udg_Warmth == 5) then
        call UnitAddAbility(gg_unit_Hkal_0491, 'A0G5')
        call UnitAddAbility(gg_unit_Hkal_0491, 'A0G9')
    elseif (udg_Warmth == 6) then
        call UnitAddAbility(gg_unit_Hkal_0491, 'A0G8')
        call UnitAddAbility(gg_unit_Hkal_0491, 'A02W')
    elseif (udg_Warmth == 7) then
        call UnitAddAbility(gg_unit_Hkal_0491, 'A0G3')
        call UnitAddAbility(gg_unit_Hkal_0491, 'A0GE')
    elseif (udg_Warmth == 8) then
        call UnitAddAbility(gg_unit_Hkal_0491, 'A0G6')
        call UnitAddAbility(gg_unit_Hkal_0491, 'A0GF')
    elseif (udg_Warmth == 9) then
        call UnitAddAbility(gg_unit_Hkal_0491, 'A0G4')
        call UnitAddAbility(gg_unit_Hkal_0491, 'A0GG')
    elseif (udg_Warmth == 10) then
        call UnitAddAbility(gg_unit_Hkal_0491, 'A07B')
        call UnitAddAbility(gg_unit_Hkal_0491, 'A0GC')
    endif
endfunction

function Trig_Warmth_End_Actions takes nothing returns nothing
    set udg_Warmth = udg_Warmth - 1
    call ChangeLevelWarmath()
endfunction

function Trig_Warmth_Actions takes nothing returns nothing
    local timer Warmth_Timer = CreateTimer()
    call TimerStart(Warmth_Timer, 3 * I2R(GetUnitAbilityLevel(gg_unit_Hkal_0491, 'A02X')), false, function Trig_Warmth_End_Actions)
    set udg_Warmth = udg_Warmth + 1
    call ChangeLevelWarmath()
    call PolledWait(3 * I2R(GetUnitAbilityLevel(gg_unit_Hkal_0491, 'A02X')))
    call DestroyTimer(Warmth_Timer)
    set Warmth_Timer = null
endfunction

function InitTrig_Warmth takes nothing returns nothing
    set gg_trg_Warmth=CreateTrigger()
    call TriggerAddCondition(gg_trg_Warmth,Condition(function Trig_Warmth_Conditions))
    call TriggerAddAction(gg_trg_Warmth,function Trig_Warmth_Actions)
endfunction