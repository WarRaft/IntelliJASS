    function Trig_Medivh_Starts_Func001Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A09J'))then
    return false
    endif
    return true
    endfunction
    function Trig_Medivh_Starts_Func001Func001Func005Func001Func001Func001C takes nothing returns boolean
    if(not(IsUnitAliveBJ(udg_CorruptionTarget)==true))then
    return false
    endif
    if(not(GetUnitAbilityLevelSwapped('AEer',GetTriggerUnit())==4))then
    return false
    endif
    return true
    endfunction
    function Trig_Medivh_Starts_Func001Func001Func005Func001Func001C takes nothing returns boolean
    if(not(IsUnitAliveBJ(udg_CorruptionTarget)==true))then
    return false
    endif
    if(not(GetUnitAbilityLevelSwapped('AEer',GetTriggerUnit())==3))then
    return false
    endif
    return true
    endfunction
    function Trig_Medivh_Starts_Func001Func001Func005Func001C takes nothing returns boolean
    if(not(IsUnitAliveBJ(udg_CorruptionTarget)==true))then
    return false
    endif
    if(not(GetUnitAbilityLevelSwapped('AEer',GetTriggerUnit())==2))then
    return false
    endif
    return true
    endfunction
    function Trig_Medivh_Starts_Func001Func001Func005C takes nothing returns boolean
    if(not(IsUnitAliveBJ(udg_CorruptionTarget)==true))then
    return false
    endif
    if(not(GetUnitAbilityLevelSwapped('AEer',GetTriggerUnit())==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Medivh_Starts_Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='AEer'))then
    return false
    endif
    if(not(IsUnitType(GetSpellTargetUnit(),UNIT_TYPE_HERO)==false))then
    return false
    endif
    if(not(GetUnitTypeId(GetSpellTargetUnit())!='nggr'))then
    return false
    endif
    if(not(GetUnitTypeId(GetSpellTargetUnit())!='n011'))then
    return false
    endif
    if(not(GetUnitTypeId(GetSpellTargetUnit())!='hwat'))then
    return false
    endif
    if(not(GetUnitTypeId(GetSpellTargetUnit())!='hwt2'))then
    return false
    endif
    if(not(GetUnitTypeId(GetSpellTargetUnit())!='hwt3'))then
    return false
    endif
    return true
    endfunction
    function Trig_Medivh_Starts_Func001Func004C takes nothing returns boolean
    if(not(UnitHasBuffBJ(gg_unit_N007_0522,'B02V')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Medivh_Starts_Func001Func007C takes nothing returns boolean
    if(not(UnitHasBuffBJ(gg_unit_N007_0522,'B02V')==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Medivh_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='AOeq'))then
    return false
    endif
    return true
    endfunction
    function Trig_Medivh_Starts_Actions takes nothing returns nothing
    if(Trig_Medivh_Starts_Func001C())then
    set udg_TempPoint=GetSpellTargetLoc()
    call IssuePointOrderLoc(gg_unit_o00S_0248,"blizzard",udg_TempPoint)
    if(Trig_Medivh_Starts_Func001Func004C())then
    call IssuePointOrderLoc(gg_unit_o010_0250,"earthquake",udg_TempPoint)
    else
    endif
    call RemoveLocation(udg_TempPoint)
    call PolledWait(0.10)
    if(Trig_Medivh_Starts_Func001Func007C())then
    call IssueImmediateOrder(gg_unit_N007_0522,"stop")
    else
    endif
    else
    if(Trig_Medivh_Starts_Func001Func001C())then
    set udg_CorruptionTarget=GetSpellTargetUnit()
    call SetUnitOwner(udg_CorruptionTarget,Player(4),false)
    call PolledWait(4.00)
    if(Trig_Medivh_Starts_Func001Func001Func005C())then
    set udg_TempPoint=GetUnitLoc(udg_CorruptionTarget)
    call PlaySoundAtPointBJ(gg_snd_ReviveUndead,100,udg_TempPoint,0)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call RemoveLocation(udg_TempPoint)
    call ReplaceUnitBJ(udg_CorruptionTarget,'nsat',bj_UNIT_STATE_METHOD_MAXIMUM)
    else
    if(Trig_Medivh_Starts_Func001Func001Func005Func001C())then
    set udg_TempPoint=GetUnitLoc(udg_CorruptionTarget)
    call PlaySoundAtPointBJ(gg_snd_ReviveUndead,100,udg_TempPoint,0)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call RemoveLocation(udg_TempPoint)
    call ReplaceUnitBJ(udg_CorruptionTarget,'npfm',bj_UNIT_STATE_METHOD_MAXIMUM)
    else
    if(Trig_Medivh_Starts_Func001Func001Func005Func001Func001C())then
    set udg_TempPoint=GetUnitLoc(udg_CorruptionTarget)
    call PlaySoundAtPointBJ(gg_snd_ReviveUndead,100,udg_TempPoint,0)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call RemoveLocation(udg_TempPoint)
    call ReplaceUnitBJ(udg_CorruptionTarget,'ndqs',bj_UNIT_STATE_METHOD_MAXIMUM)
    else
    if(Trig_Medivh_Starts_Func001Func001Func005Func001Func001Func001C())then
    set udg_TempPoint=GetUnitLoc(udg_CorruptionTarget)
    call PlaySoundAtPointBJ(gg_snd_ReviveUndead,100,udg_TempPoint,0)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call RemoveLocation(udg_TempPoint)
    call ReplaceUnitBJ(udg_CorruptionTarget,'nfov',bj_UNIT_STATE_METHOD_MAXIMUM)
    else
    endif
    endif
    endif
    endif
    else
    if(Trig_Medivh_Starts_Func001Func001Func001C())then
    set udg_TempPoint=GetUnitLoc(gg_unit_N007_0522)
    call IssuePointOrderLoc(gg_unit_o00Z_0249,"healingward",udg_TempPoint)
    call PlaySoundAtPointBJ(gg_snd_EyeOfSargeras,100,udg_TempPoint,0)
    call RemoveLocation(udg_TempPoint)
    else
    endif
    endif
    endif
    endfunction
    function InitTrig_Medivh_Starts takes nothing returns nothing
    set gg_trg_Medivh_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Medivh_Starts,function Trig_Medivh_Starts_Actions)
    endfunction