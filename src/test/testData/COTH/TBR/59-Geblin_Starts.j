function Trig_Geblin_Starts_Func001Func001Func001Func002C takes nothing returns boolean
    if((GetUnitTypeId(GetSpellTargetUnit())=='ucry'))then
    return true
    endif
    if((GetUnitTypeId(GetSpellTargetUnit())=='u004'))then
    return true
    endif
    if((GetUnitTypeId(GetSpellTargetUnit())=='u005'))then
    return true
    endif
    if((GetUnitTypeId(GetSpellTargetUnit())=='u006'))then
    return true
    endif
    return false
    endfunction
    function Trig_Geblin_Starts_Func001Func001Func001Func003Func006C takes nothing returns boolean
    if((GetUnitTypeId(GetSpellTargetUnit())=='nwe3'))then
    return true
    endif
    if((GetUnitTypeId(GetSpellTargetUnit())=='n016'))then
    return true
    endif
    if((GetUnitTypeId(GetSpellTargetUnit())=='n015'))then
    return true
    endif
    if((GetUnitTypeId(GetSpellTargetUnit())=='n017'))then
    return true
    endif
    return false
    endfunction
    function Trig_Geblin_Starts_Func001Func001Func001Func003Func007C takes nothing returns boolean
    if(not(GetUnitTypeId(GetSpellTargetUnit())=='n014'))then
    return false
    endif
    return true
    endfunction
    function Trig_Geblin_Starts_Func001Func001Func001Func003C takes nothing returns boolean
    if(not Trig_Geblin_Starts_Func001Func001Func001Func003Func006C())then
    return false
    endif
    return true
    endfunction
    function Trig_Geblin_Starts_Func001Func001Func001C takes nothing returns boolean
    if(not Trig_Geblin_Starts_Func001Func001Func001Func002C())then
    return false
    endif
    return true
    endfunction
    function Trig_Geblin_Starts_Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A0CK'))then
    return false
    endif
    return true
    endfunction
    function Trig_Geblin_Starts_Actions takes nothing returns nothing
    if(Trig_Geblin_Starts_Func001Func001C())then
    if(Trig_Geblin_Starts_Func001Func001Func001C())then
    call UnitAddAbilityBJ('A0CL',GetSpellTargetUnit())
    else
    if(Trig_Geblin_Starts_Func001Func001Func001Func003C())then
    set udg_TempPoint=GetUnitLoc(GetSpellAbilityUnit())
    call PlaySoundAtPointBJ(gg_snd_GyrocopterPissed5,100,udg_TempPoint,0)
    call RemoveLocation(udg_TempPoint)
    set udg_Gyrocopter=GetSpellTargetUnit()
    call UnitAddAbilityBJ('A0CG',udg_Gyrocopter)
    else
    if(Trig_Geblin_Starts_Func001Func001Func001Func003Func007C())then
    set udg_TempPoint=GetUnitLoc(GetSpellTargetUnit())
    call RemoveUnit(GetSpellTargetUnit())
    call CreateNUnitsAtLoc(1,'n014',Player(5),udg_TempPoint,GetUnitFacing(GetSpellTargetUnit()))
    call UnitAddAbilityBJ('A0CN',GetLastCreatedUnit())
    call UnitAddAbilityBJ('A0CM',GetLastCreatedUnit())
    call UnitAddAbilityBJ('A0BH',GetLastCreatedUnit())
    call SetUnitScalePercent(GetLastCreatedUnit(),110.00,110.00,110.00)
    call RemoveLocation(udg_TempPoint)
    else
    endif
    endif
    endif
    else
    endif
    endfunction
    function InitTrig_Geblin_Starts takes nothing returns nothing
    set gg_trg_Geblin_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Geblin_Starts,function Trig_Geblin_Starts_Actions)
    endfunction