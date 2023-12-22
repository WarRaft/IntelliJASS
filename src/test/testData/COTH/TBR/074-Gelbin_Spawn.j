function Trig_Gelbin_Spawn_Func001Func001Func001Func001C takes nothing returns boolean
    if((GetUnitTypeId(GetSummonedUnit())=='ucry'))then
    return true
    endif
    if((GetUnitTypeId(GetSummonedUnit())=='u004'))then
    return true
    endif
    if((GetUnitTypeId(GetSummonedUnit())=='u005'))then
    return true
    endif
    if((GetUnitTypeId(GetSummonedUnit())=='u006'))then
    return true
    endif
    return false
    endfunction
    function Trig_Gelbin_Spawn_Func001Func001Func001C takes nothing returns boolean
    if(not Trig_Gelbin_Spawn_Func001Func001Func001Func001C())then
    return false
    endif
    return true
    endfunction
    function Trig_Gelbin_Spawn_Func001Func001Func002C takes nothing returns boolean
    if((GetUnitTypeId(GetSummonedUnit())=='nwe3'))then
    return true
    endif
    if((GetUnitTypeId(GetSummonedUnit())=='n016'))then
    return true
    endif
    if((GetUnitTypeId(GetSummonedUnit())=='n015'))then
    return true
    endif
    if((GetUnitTypeId(GetSummonedUnit())=='n017'))then
    return true
    endif
    return false
    endfunction
    function Trig_Gelbin_Spawn_Func001Func001C takes nothing returns boolean
    if(not Trig_Gelbin_Spawn_Func001Func001Func002C())then
    return false
    endif
    return true
    endfunction
    function Trig_Gelbin_Spawn_Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetSummonedUnit())=='n014'))then
    return false
    endif
    return true
    endfunction
    function Trig_Gelbin_Spawn_Actions takes nothing returns nothing
    if(Trig_Gelbin_Spawn_Func001C())then
    set udg_TempPoint=GetUnitLoc(GetSummonedUnit())
    call CreateNUnitsAtLoc(1,'n014',Player(5),udg_TempPoint,bj_UNIT_FACING)
    call ExplodeUnitBJ(GetLastCreatedUnit())
    call RemoveLocation(udg_TempPoint)
    else
    if(Trig_Gelbin_Spawn_Func001Func001C())then
    set udg_TempPoint=GetUnitLoc(GetSummonedUnit())
    call PlaySoundAtPointBJ(gg_snd_GyrocopterWarcry1,100,udg_TempPoint,0)
    call RemoveLocation(udg_TempPoint)
    else
    if(Trig_Gelbin_Spawn_Func001Func001Func001C())then
    set udg_TempPoint=GetUnitLoc(GetSummonedUnit())
    call PlaySoundAtPointBJ(gg_snd_PocketFactoryBirth,100.00,udg_TempPoint,0)
    call RemoveLocation(udg_TempPoint)
    else
    endif
    endif
    endif
    endfunction
    function InitTrig_Gelbin_Spawn takes nothing returns nothing
    set gg_trg_Gelbin_Spawn=CreateTrigger()
    call TriggerAddAction(gg_trg_Gelbin_Spawn,function Trig_Gelbin_Spawn_Actions)
    endfunction