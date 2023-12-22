
    function Trig_Khadgar_Starts_Func001Func001Func005C takes nothing returns boolean
    if((GetSpellAbilityId()=='ACbf'))then
    return true
    endif
    if((GetSpellAbilityId()=='A02A'))then
    return true
    endif
    if((GetSpellAbilityId()=='A02B'))then
    return true
    endif
    if((GetSpellAbilityId()=='A01G'))then
    return true
    endif
    return false
    endfunction
    function Trig_Khadgar_Starts_Func001Func001C takes nothing returns boolean
    if(not Trig_Khadgar_Starts_Func001Func001Func005C())then
    return false
    endif
    return true
    endfunction
    function Trig_Khadgar_Starts_Func001Func012C takes nothing returns boolean
    if((GetSpellAbilityId()=='S002'))then
    return true
    endif
    if((GetSpellAbilityId()=='S004'))then
    return true
    endif
    if((GetSpellAbilityId()=='SNin'))then
    return true
    endif
    if((GetSpellAbilityId()=='S003'))then
    return true
    endif
    return false
    endfunction
    function Trig_Khadgar_Starts_Func001C takes nothing returns boolean
    if(not Trig_Khadgar_Starts_Func001Func012C())then
    return false
    endif
    return true
    endfunction
    function Trig_Khadgar_Starts_Actions takes nothing returns nothing
    if(Trig_Khadgar_Starts_Func001C())then
    call EnableTrigger(gg_trg_Starfall_Damage)
    set udg_StarFallCount=(udg_StarFallCount+1)
    set udg_TempPoint=GetSpellTargetLoc()
    call AddSpecialEffectLocBJ(udg_TempPoint,"Comet.mdx")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call CreateNUnitsAtLoc(1,'nwad',Player(1),udg_TempPoint,bj_UNIT_FACING)
    call UnitAddAbilityBJ('A0E0',GetLastCreatedUnit())
    call UnitApplyTimedLifeBJ(3.00,'BTLF',GetLastCreatedUnit())
    call IssueImmediateOrder(GetLastCreatedUnit(),"stomp")
    call RemoveLocation(udg_TempPoint)
    else
    if(Trig_Khadgar_Starts_Func001Func001C())then
    call EnableTrigger(gg_trg_Tornado)
    call PolledWait(3.00)
    call DisableTrigger(gg_trg_Tornado)
    else
    endif
    endif
    endfunction
    function InitTrig_Khadgar_Starts takes nothing returns nothing
    set gg_trg_Khadgar_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Khadgar_Starts,function Trig_Khadgar_Starts_Actions)
    endfunction