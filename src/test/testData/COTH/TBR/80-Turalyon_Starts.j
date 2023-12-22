function Trig_Turalyon_Starts_Func001Func001Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A04G'))then
    return false
    endif
    return true
endfunction
    function Trig_Turalyon_Starts_Func001Func001Func005Func001Func001Func001C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A02Y',GetTriggerUnit())==4))then
    return false
    endif
    return true
    endfunction
    function Trig_Turalyon_Starts_Func001Func001Func005Func001Func001C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A02Y',GetTriggerUnit())==3))then
    return false
    endif
    return true
    endfunction
    function Trig_Turalyon_Starts_Func001Func001Func005Func001C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A02Y',GetTriggerUnit())==2))then
    return false
    endif
    return true
    endfunction
    function Trig_Turalyon_Starts_Func001Func001Func005C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A02Y',GetTriggerUnit())==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Turalyon_Starts_Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A02Y'))then
    return false
    endif
    return true
    endfunction
    function Trig_Turalyon_Starts_Func001Func003C takes nothing returns boolean
    if(not(IsUnitEnemy(GetSpellTargetUnit(),Player(8))==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Turalyon_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A0E5'))then
    return false
    endif
    return true
    endfunction
    function Trig_Turalyon_Starts_Actions takes nothing returns nothing
    if(Trig_Turalyon_Starts_Func001C())then
    if(Trig_Turalyon_Starts_Func001Func003C())then
    call UnitDamageTargetBJ(gg_unit_Harf_0501,GetSpellTargetUnit(),(90.00*I2R(GetUnitAbilityLevelSwapped('A0E5',gg_unit_Harf_0501))),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    else
    call SetUnitLifeBJ(GetSpellTargetUnit(),(GetUnitStateSwap(UNIT_STATE_LIFE,GetSpellTargetUnit())+(90.00*I2R(GetUnitAbilityLevelSwapped('A0E5',gg_unit_Harf_0501)))))
    endif
    else
    if(Trig_Turalyon_Starts_Func001Func001C())then
    call UnitAddAbilityBJ('A006',gg_unit_Harf_0501)
    call SetUnitAbilityLevelSwapped('A006',gg_unit_Harf_0501,GetUnitAbilityLevel(GetTriggerUnit(), GetSpellAbilityId()))
    //call EnableTrigger(gg_trg_Righteous_Fury_Attack)
    if(Trig_Turalyon_Starts_Func001Func001Func005C())then
    //call EnableTrigger(gg_trg_Righteous_Fury_Finish_1)
    else
    if(Trig_Turalyon_Starts_Func001Func001Func005Func001C())then
    //call EnableTrigger(gg_trg_Righteous_Fury_Finish_2)
    else
    if(Trig_Turalyon_Starts_Func001Func001Func005Func001Func001C())then
    //call EnableTrigger(gg_trg_Righteous_Fury_Finish_3)
    else
    if(Trig_Turalyon_Starts_Func001Func001Func005Func001Func001Func001C())then
    //call EnableTrigger(gg_trg_Righteous_Fury_Finish_4)
    else
    endif
    endif
    endif
    endif
    call PolledWait(10.00)
    call UnitRemoveAbilityBJ('A006',gg_unit_Harf_0501)
    call UnitRemoveBuffBJ('B024',gg_unit_Harf_0501)
    //call DisableTrigger(gg_trg_Righteous_Fury_Finish_1)
    //call DisableTrigger(gg_trg_Righteous_Fury_Finish_2)
    //call DisableTrigger(gg_trg_Righteous_Fury_Finish_3)
    //call DisableTrigger(gg_trg_Righteous_Fury_Finish_4)
    //call DisableTrigger(gg_trg_Righteous_Fury_Attack)
    else
    if(Trig_Turalyon_Starts_Func001Func001Func001Func001C())then
    call SetUnitLifeBJ(GetSpellTargetUnit(),(GetUnitStateSwap(UNIT_STATE_LIFE,GetSpellTargetUnit())+((I2R(GetUnitAbilityLevelSwapped('A04G',GetTriggerUnit()))*200.00)+100.00)))
    call UnitAddAbilityBJ('A08M',GetTriggerUnit())
    call SetUnitAbilityLevelSwapped('A08M',GetTriggerUnit(),GetUnitAbilityLevelSwapped('A04G',GetTriggerUnit()))
    call UnitAddAbilityBJ('A08O',GetTriggerUnit())
    call SetUnitAbilityLevelSwapped('A08O',GetTriggerUnit(),GetUnitAbilityLevelSwapped('A04G',GetTriggerUnit()))
    call SetUnitVertexColorBJ(GetTriggerUnit(),100,100.00,25.00,0)
    set udg_TempPoint=GetUnitLoc(GetTriggerUnit())
    call CreateNUnitsAtLoc(1,'o008',Player(8),udg_TempPoint,bj_UNIT_FACING)
    call UnitAddAbilityBJ('A0E7',GetLastCreatedUnit())
    call UnitApplyTimedLifeBJ(22.50,'BTLF',GetLastCreatedUnit())
    call RemoveLocation(udg_TempPoint)
    call PolledWait(25.00)
    call UnitRemoveAbilityBJ('A08M',GetTriggerUnit())
    call UnitRemoveAbilityBJ('A08O',GetTriggerUnit())
    call SetUnitVertexColorBJ(GetTriggerUnit(),100,100.00,100.00,0)
    else
    endif
    endif
    endif
    endfunction
    function InitTrig_Turalyon_Starts takes nothing returns nothing
    set gg_trg_Turalyon_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Turalyon_Starts,function Trig_Turalyon_Starts_Actions)
    endfunction