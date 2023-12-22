 function Trig_Zuluhed_Starts_Func001Func001Func020Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A0E2'))then
    return false
    endif
    return true
    endfunction
    function Trig_Zuluhed_Starts_Func001Func001Func020Func006Func001Func001Func001C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A014',GetTriggerUnit())==4))then
    return false
    endif
    return true
    endfunction
    function Trig_Zuluhed_Starts_Func001Func001Func020Func006Func001Func001C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A014',GetTriggerUnit())==3))then
    return false
    endif
    return true
    endfunction
    function Trig_Zuluhed_Starts_Func001Func001Func020Func006Func001C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A014',GetTriggerUnit())==2))then
    return false
    endif
    return true
    endfunction
    function Trig_Zuluhed_Starts_Func001Func001Func020Func006C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A014',GetTriggerUnit())==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Zuluhed_Starts_Func001Func001Func020C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A014'))then
    return false
    endif
    return true
    endfunction
    function Trig_Zuluhed_Starts_Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A061'))then
    return false
    endif
    return true
    endfunction
    function Trig_Zuluhed_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A0DW'))then
    return false
    endif
    return true
    endfunction
    function Trig_Zuluhed_Starts_Actions takes nothing returns nothing
    if(Trig_Zuluhed_Starts_Func001C())then
    call GroupAddUnitSimple(GetSpellTargetUnit(),udg_DragonMasterGroup)
    set udg_TempPoint=GetUnitLoc(GetTriggerUnit())
    call CreateNUnitsAtLoc(1,'o008',GetOwningPlayer(GetTriggerUnit()),udg_TempPoint,bj_UNIT_FACING)
    call UnitAddAbilityBJ('A0DV',GetLastCreatedUnit())
    call SetUnitAbilityLevelSwapped('A0DV',GetLastCreatedUnit(),GetUnitAbilityLevelSwapped('A0DW',GetTriggerUnit()))
    call IssueTargetOrder(GetLastCreatedUnit(),"innerfire",GetSpellTargetUnit())
    call UnitApplyTimedLifeBJ(1.00,'BTLF',GetLastCreatedUnit())
    call RemoveLocation(udg_TempPoint)
    call EnableTrigger(gg_trg_Dragon_Mastery)
    else
    if(Trig_Zuluhed_Starts_Func001Func001C())then
    set udg_DragonAspectCounter=(udg_DragonAspectCounter+(GetUnitAbilityLevelSwapped('A061',GetTriggerUnit())+1))
    set udg_TempPoint=GetUnitLoc(GetTriggerUnit())
    set udg_TempPoint2=GetUnitLoc(GetSpellTargetUnit())
    set udg_TempPoint3=PolarProjectionBJ(udg_TempPoint2,400.00,AngleBetweenPoints(udg_TempPoint2,udg_TempPoint))
    call CreateNUnitsAtLoc(1,'oswy',Player(PLAYER_NEUTRAL_AGGRESSIVE),udg_TempPoint3,GetUnitFacing(GetTriggerUnit()))
    call AddSpecialEffectLocBJ(udg_TempPoint3,"Abilities\\Spells\\Human\\Feedback\\SpellBreakerAttack.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call SetUnitVertexColorBJ(GetLastCreatedUnit(),100,80.00,80.00,40.00)
    call IssueTargetOrder(GetLastCreatedUnit(),"magicleash",GetSpellTargetUnit())
    call UnitApplyTimedLifeBJ((I2R(GetUnitAbilityLevelSwapped('A061',GetTriggerUnit()))+1.00),'BFig',GetLastCreatedUnit())
    call StopSoundBJ(udg_FireLoopSound,false)
    call PlaySoundOnUnitBJ(gg_snd_BlueFireBurstLoop,100,GetLastCreatedUnit())
    set udg_FireLoopSound=GetLastPlayedSound()
    call RemoveLocation(udg_TempPoint)
    call RemoveLocation(udg_TempPoint2)
    call RemoveLocation(udg_TempPoint3)
    call GroupAddUnitSimple(GetSpellTargetUnit(),udg_DragonAspectGroup)
    call EnableTrigger(gg_trg_Dragon_Aspect_Damage)
    else
    if(Trig_Zuluhed_Starts_Func001Func001Func020C())then
    set udg_TempPoint=GetSpellTargetLoc()
    call CreateNUnitsAtLoc(1,'ohwd',GetOwningPlayer(gg_unit_Otch_0529),udg_TempPoint,bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(8.00,'BTLF',GetLastCreatedUnit())
    call SetUnitAbilityLevelSwapped('A020',GetLastCreatedUnit(),GetUnitAbilityLevelSwapped('A014',gg_unit_Otch_0529))
    if(Trig_Zuluhed_Starts_Func001Func001Func020Func006C())then
    call UnitAddAbilityBJ('Apig',GetLastCreatedUnit())
    else
    if(Trig_Zuluhed_Starts_Func001Func001Func020Func006Func001C())then
    call UnitAddAbilityBJ('A03O',GetLastCreatedUnit())
    else
    if(Trig_Zuluhed_Starts_Func001Func001Func020Func006Func001Func001C())then
    call UnitAddAbilityBJ('A04K',GetLastCreatedUnit())
    else
    if(Trig_Zuluhed_Starts_Func001Func001Func020Func006Func001Func001Func001C())then
    call UnitAddAbilityBJ('A05A',GetLastCreatedUnit())
    else
    endif
    endif
    endif
    endif
    call RemoveLocation(udg_TempPoint)
    else
    if(Trig_Zuluhed_Starts_Func001Func001Func020Func001Func001C())then
    set udg_HellfireCount=(udg_HellfireCount+1)
    call EnableTrigger(gg_trg_Hellfire_Blast)
    set udg_TempPoint=GetSpellTargetLoc()
    set udg_TempPoint2=PolarProjectionBJ(udg_TempPoint,380.00,(GetUnitFacing(GetTriggerUnit())+45.00))
    set udg_TempPoint3=PolarProjectionBJ(udg_TempPoint,380.00,(GetUnitFacing(GetTriggerUnit())-45.00))
    set udg_TempPoint4=PolarProjectionBJ(udg_TempPoint,380.00,(GetUnitFacing(GetTriggerUnit())+135.00))
    set udg_TempPoint5=PolarProjectionBJ(udg_TempPoint,380.00,(GetUnitFacing(GetTriggerUnit())-135.00))
    call CreateNUnitsAtLoc(1,'oswy',GetOwningPlayer(GetTriggerUnit()),udg_TempPoint2,AngleBetweenPoints(udg_TempPoint2,udg_TempPoint))
    call AddSpecialEffectLocBJ(udg_TempPoint2,"Abilities\\Spells\\Human\\Feedback\\SpellBreakerAttack.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call SetUnitVertexColorBJ(GetLastCreatedUnit(),100,80.00,80.00,40.00)
    call SetUnitAbilityLevelSwapped('A0DX',GetLastCreatedUnit(),GetUnitAbilityLevelSwapped('A0E2',GetTriggerUnit()))
    call UnitApplyTimedLifeBJ(3.45,'BFig',GetLastCreatedUnit())
    call IssuePointOrderLoc(GetLastCreatedUnit(),"breathoffrost",udg_TempPoint)
    call UnitAddAbilityBJ('Aloc',GetLastCreatedUnit())
    call UnitAddAbilityBJ('Avul',GetLastCreatedUnit())
    call CreateNUnitsAtLoc(1,'oswy',GetOwningPlayer(GetTriggerUnit()),udg_TempPoint3,AngleBetweenPoints(udg_TempPoint3,udg_TempPoint))
    call AddSpecialEffectLocBJ(udg_TempPoint3,"Abilities\\Spells\\Human\\Feedback\\SpellBreakerAttack.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call SetUnitVertexColorBJ(GetLastCreatedUnit(),100,80.00,80.00,40.00)
    call SetUnitAbilityLevelSwapped('A0DX',GetLastCreatedUnit(),GetUnitAbilityLevelSwapped('A0E2',GetTriggerUnit()))
    call UnitApplyTimedLifeBJ(3.45,'BFig',GetLastCreatedUnit())
    call IssuePointOrderLoc(GetLastCreatedUnit(),"breathoffrost",udg_TempPoint)
    call UnitAddAbilityBJ('Aloc',GetLastCreatedUnit())
    call UnitAddAbilityBJ('Avul',GetLastCreatedUnit())
    call CreateNUnitsAtLoc(1,'oswy',GetOwningPlayer(GetTriggerUnit()),udg_TempPoint4,AngleBetweenPoints(udg_TempPoint4,udg_TempPoint))
    call AddSpecialEffectLocBJ(udg_TempPoint4,"Abilities\\Spells\\Human\\Feedback\\SpellBreakerAttack.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call SetUnitVertexColorBJ(GetLastCreatedUnit(),100,80.00,80.00,40.00)
    call SetUnitAbilityLevelSwapped('A0DX',GetLastCreatedUnit(),GetUnitAbilityLevelSwapped('A0E2',GetTriggerUnit()))
    call UnitApplyTimedLifeBJ(3.45,'BFig',GetLastCreatedUnit())
    call IssuePointOrderLoc(GetLastCreatedUnit(),"breathoffrost",udg_TempPoint)
    call UnitAddAbilityBJ('Aloc',GetLastCreatedUnit())
    call UnitAddAbilityBJ('Avul',GetLastCreatedUnit())
    call CreateNUnitsAtLoc(1,'oswy',GetOwningPlayer(GetTriggerUnit()),udg_TempPoint5,AngleBetweenPoints(udg_TempPoint5,udg_TempPoint))
    call AddSpecialEffectLocBJ(udg_TempPoint5,"Abilities\\Spells\\Human\\Feedback\\SpellBreakerAttack.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call SetUnitVertexColorBJ(GetLastCreatedUnit(),100,80.00,80.00,40.00)
    call SetUnitAbilityLevelSwapped('A0DX',GetLastCreatedUnit(),GetUnitAbilityLevelSwapped('A0E2',GetTriggerUnit()))
    call UnitApplyTimedLifeBJ(3.45,'BFig',GetLastCreatedUnit())
    call IssuePointOrderLoc(GetLastCreatedUnit(),"breathoffrost",udg_TempPoint)
    call UnitAddAbilityBJ('Aloc',GetLastCreatedUnit())
    call UnitAddAbilityBJ('Avul',GetLastCreatedUnit())
    call RemoveLocation(udg_TempPoint2)
    call RemoveLocation(udg_TempPoint3)
    call RemoveLocation(udg_TempPoint4)
    call RemoveLocation(udg_TempPoint5)
    call CreateNUnitsAtLoc(1,'o008',GetOwningPlayer(GetTriggerUnit()),udg_TempPoint,bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(4.00,'BTLF',GetLastCreatedUnit())
    call UnitAddAbilityBJ('A0DZ',GetLastCreatedUnit())
    call IssueImmediateOrder(GetLastCreatedUnit(),"stomp")
    call RemoveLocation(udg_TempPoint)
    else
    endif
    endif
    endif
    endif
    endfunction
    function InitTrig_Zuluhed_Starts takes nothing returns nothing
    set gg_trg_Zuluhed_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Zuluhed_Starts,function Trig_Zuluhed_Starts_Actions)
    endfunction