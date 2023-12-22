globals
timer msSylvana = CreateTimer()
endglobals

function removeMsSylvana takes nothing returns nothing
    call UnitRemoveAbility(gg_unit_Hamg_0499, 'A0H0')
endfunction

function Trig_Sylvanas_Starts_Func001Func001Func009C takes nothing returns boolean
    if(not(udg_HailCounter==0))then
    return false
    endif
    return true
    endfunction
    function Trig_Sylvanas_Starts_Func001Func001Func011C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A013'))then
    return false
    endif
    return true
    endfunction
    function Trig_Sylvanas_Starts_Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A08F'))then
    return false
    endif
    return true
    endfunction
    function Trig_Sylvanas_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A08L'))then
    return false
    endif
    return true
    endfunction
    function Trig_Sylvanas_Starts_Actions takes nothing returns nothing
    if(Trig_Sylvanas_Starts_Func001C())then
    call PlaySoundOnUnitBJ(gg_snd_ArrowAttack1,100,gg_unit_Hamg_0499)
    set udg_Arrow_TargetPoint=GetSpellTargetLoc()
    set udg_Arrow_Caster[udg_Arrow_Counts]=GetSpellAbilityUnit()
    set udg_TempPoint=GetUnitLoc(udg_Arrow_Caster[udg_Arrow_Counts])
    set udg_Arrow_CasterLoc=PolarProjectionBJ(udg_TempPoint,50.00,AngleBetweenPoints(udg_TempPoint,udg_Arrow_TargetPoint))
    set udg_Arrow_Angle=AngleBetweenPoints(udg_Arrow_CasterLoc,udg_Arrow_TargetPoint)
    call CreateNUnitsAtLoc(1,'nmpe',Player(6),udg_Arrow_CasterLoc,udg_Arrow_Angle)
    call SetUnitUserData(GetLastCreatedUnit(),udg_Arrow_Counts)
    call GroupAddUnitSimple(GetLastCreatedUnit(),udg_Arrow_StartGroup)
    set udg_Arrow_Distance[udg_Arrow_Counts]=1600.00
    set udg_Arrow_DistanceTravel[udg_Arrow_Counts]=0.00
    set udg_Arrow_StunDuration[udg_Arrow_Counts]=1
    set udg_Arrow_DistanceCount[udg_Arrow_Counts]=0.00
    call EnableTrigger(gg_trg_Wind_Shot_Move)
    call RemoveLocation(udg_TempPoint)
    call RemoveLocation(udg_Arrow_CasterLoc)
    call RemoveLocation(udg_Arrow_TargetPoint)
    else
    if(Trig_Sylvanas_Starts_Func001Func001C())then
    call PlaySoundOnUnitBJ(gg_snd_ArrowAttack1,100,gg_unit_Hamg_0499)
    call EnableTrigger(gg_trg_Hail_of_Arrows_Deactivate)
    set udg_HailTarget=GetSpellTargetLoc()
    set udg_HailCounter=0
    call DestroyTimer(msSylvana)
    set msSylvana = CreateTimer()
    call TimerStart(msSylvana, 10, false, function removeMsSylvana)
    call UnitRemoveAbility(gg_unit_Hamg_0499, 'A0H0')
    call UnitAddAbility(gg_unit_Hamg_0499, 'A0H0')
    call PolledWait(0.90)
    call EnableTrigger(gg_trg_Hail_of_Arrows_Damage)
    call EnableTrigger(gg_trg_Hail_of_Arrows_Graphic)
    call PolledWait(3.00)
    if(Trig_Sylvanas_Starts_Func001Func001Func009C())then
    call DisableTrigger(gg_trg_Hail_of_Arrows_Damage)
    call DisableTrigger(gg_trg_Hail_of_Arrows_Graphic)
    call DisableTrigger(gg_trg_Hail_of_Arrows_Deactivate)
    call RemoveLocation(udg_HailTarget)
    else
    endif
    else
    if(Trig_Sylvanas_Starts_Func001Func001Func011C())then
    call UnitAddAbilityBJ('A006',gg_unit_Hamg_0499)
    call SetUnitAbilityLevelSwapped('A006',gg_unit_Hamg_0499,5)
    call PolledWait(((I2R(GetUnitAbilityLevelSwapped('A013',gg_unit_Hamg_0499))*0.55)+0.30))
    call UnitRemoveAbilityBJ('A006',gg_unit_Hamg_0499)
    else
    endif
    endif
    endif
    endfunction
    function InitTrig_Sylvanas_Starts takes nothing returns nothing
    set gg_trg_Sylvanas_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Sylvanas_Starts,function Trig_Sylvanas_Starts_Actions)
    endfunction