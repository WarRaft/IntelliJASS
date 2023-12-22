function Trig_Grom_Starts_Func001Func013Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A09C'))then
    return false
    endif
    return true
    endfunction
    function Trig_Grom_Starts_Func001Func013Func003Func005Func005Func005C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('ANht',GetTriggerUnit())==4))then
    return false
    endif
    return true
    endfunction
    function Trig_Grom_Starts_Func001Func013Func003Func005Func005C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('ANht',GetTriggerUnit())==3))then
    return false
    endif
    return true
    endfunction
    function Trig_Grom_Starts_Func001Func013Func003Func005C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('ANht',GetTriggerUnit())==2))then
    return false
    endif
    return true
    endfunction
    function Trig_Grom_Starts_Func001Func013Func003C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('ANht',GetTriggerUnit())==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Grom_Starts_Func001Func013C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='ANht'))then
    return false
    endif
    return true
    endfunction
    function Trig_Grom_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A0FL'))then
    return false
    endif
    return true
    endfunction
    function Trig_Grom_Starts_Actions takes nothing returns nothing
    if(Trig_Grom_Starts_Func001C())then
    set udg_TempPoint=GetUnitLoc(gg_unit_Opgh_0483)
    set udg_TempPoint2=GetSpellTargetLoc()
    set udg_TempPoint3=PolarProjectionBJ(udg_TempPoint,850.00,(AngleBetweenPoints(udg_TempPoint2,udg_TempPoint)-180.00))
    call CreateNUnitsAtLoc(1,'nanm',GetOwningPlayer(gg_unit_Opgh_0483),udg_TempPoint,bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(3.00,'BTLF',GetLastCreatedUnit())
    call IssuePointOrderLoc(GetLastCreatedUnit(),"attackground",udg_TempPoint3)
    call RemoveLocation(udg_TempPoint)
    call RemoveLocation(udg_TempPoint2)
    call RemoveLocation(udg_TempPoint3)
    call EnableTrigger(gg_trg_Gorehowl_Slow)
    call PolledWait(2)
    call DisableTrigger(gg_trg_Gorehowl_Slow)
    else
    if(Trig_Grom_Starts_Func001Func013C())then
    if(Trig_Grom_Starts_Func001Func013Func003C())then
    call UnitAddAbilityBJ('AIva',GetTriggerUnit())
    call SetUnitAbilityLevelSwapped('AIva',GetTriggerUnit(),1)
    call PolledWait(12.00)
    call UnitRemoveAbilityBJ('AIva',GetTriggerUnit())
    else
    if(Trig_Grom_Starts_Func001Func013Func003Func005C())then
    call UnitAddAbilityBJ('AIva',GetTriggerUnit())
    call SetUnitAbilityLevelSwapped('AIva',GetTriggerUnit(),2)
    call PolledWait(12.00)
    call UnitRemoveAbilityBJ('AIva',GetTriggerUnit())
    else
    if(Trig_Grom_Starts_Func001Func013Func003Func005Func005C())then
    call UnitAddAbilityBJ('AIva',GetTriggerUnit())
    call SetUnitAbilityLevelSwapped('AIva',GetTriggerUnit(),3)
    call PolledWait(12.00)
    call UnitRemoveAbilityBJ('AIva',GetTriggerUnit())
    else
    if(Trig_Grom_Starts_Func001Func013Func003Func005Func005Func005C())then
    call UnitAddAbilityBJ('AIva',GetTriggerUnit())
    call SetUnitAbilityLevelSwapped('AIva',GetTriggerUnit(),4)
    call PolledWait(12.00)
    call UnitRemoveAbilityBJ('AIva',GetTriggerUnit())
    else
    endif
    endif
    endif
    endif
    else
    if(Trig_Grom_Starts_Func001Func013Func001Func001C())then
    call UnitMakeAbilityPermanent(GetTriggerUnit(),true,'AEsf')
    call UnitMakeAbilityPermanent(GetTriggerUnit(),true,'AHmt')
    call UnitMakeAbilityPermanent(GetTriggerUnit(),true,'Asbp')
    call SetUnitAnimation(gg_unit_Opgh_0483,"stand second")
    call PlaySoundOnUnitBJ(gg_snd_BloodlustTarget,100,gg_unit_Opgh_0483)
    else
    endif
    endif
    endif
    endfunction
    function InitTrig_Grom_Starts takes nothing returns nothing
    set gg_trg_Grom_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Grom_Starts,function Trig_Grom_Starts_Actions)
    endfunction