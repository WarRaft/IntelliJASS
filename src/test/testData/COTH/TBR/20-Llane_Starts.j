
    function Trig_Llane_Starts_Func001Func005Func001Func001Func007Func001Func001C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A05N',GetTriggerUnit())==3))then
    return false
    endif
    return true
    endfunction
    function Trig_Llane_Starts_Func001Func005Func001Func001Func007Func001C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A05N',GetTriggerUnit())==2))then
    return false
    endif
    return true
    endfunction
    function Trig_Llane_Starts_Func001Func005Func001Func001Func007C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A05N',GetTriggerUnit())==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Llane_Starts_Func001Func005Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A05N'))then
    return false
    endif
    return true
    endfunction
    function Trig_Llane_Starts_Func001Func005C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A06E'))then
    return false
    endif
    return true
    endfunction
    function Trig_Llane_Starts_Actions takes nothing returns nothing
    local unit TempUnit
    if(Trig_Llane_Starts_Func001Func005C())then
    call SetUnitVertexColorBJ(gg_unit_Hpb1_0517,100.00,100.00,40.00,0.00)
    call UnitAddAbilityBJ('A05S',gg_unit_Hpb1_0517)
    set TempUnit = CreateUnit(Player(1), 'o008', GetUnitX(gg_unit_Hpb1_0517), GetUnitY(gg_unit_Hpb1_0517), 0)
    call UnitAddAbility(TempUnit, 'Aams')
    call IssueTargetOrder(TempUnit,"antimagicshell",gg_unit_Hpb1_0517)
    call UnitApplyTimedLife(TempUnit, 'BTLF', 1)
    call PolledWait((2.00*I2R(GetUnitAbilityLevelSwapped('A06E',gg_unit_Hpb1_0517))))
    call UnitRemoveAbility(gg_unit_Hpb1_0517, 'A05S')
    call UnitRemoveAbility(gg_unit_Hpb1_0517, 'Bams')
    call UnitRemoveAbility(gg_unit_Hpb1_0517, 'Bam2')
    call SetUnitVertexColorBJ(gg_unit_Hpb1_0517,100.00,100.00,100.00,0.00)
    else
    if(Trig_Llane_Starts_Func001Func005Func001Func001C())then
    set udg_TempPoint=GetUnitLoc(GetTriggerUnit())
    call CreateNUnitsAtLoc(1,'n010',Player(1),udg_TempPoint,bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(28.00,'BTLF',GetLastCreatedUnit())
    call RemoveLocation(udg_TempPoint)
    call UnitAddAbilityBJ('Aspb',GetTriggerUnit())
    call SetPlayerAbilityAvailableBJ(false,'Aspb',Player(1))
    if(Trig_Llane_Starts_Func001Func005Func001Func001Func007C())then
    call SetUnitAbilityLevelSwapped('Aspb',GetTriggerUnit(),1)
    call UnitAddAbilityBJ('A095',GetTriggerUnit())
    else
    if(Trig_Llane_Starts_Func001Func005Func001Func001Func007Func001C())then
    call SetUnitAbilityLevelSwapped('Aspb',GetTriggerUnit(),2)
    call UnitAddAbilityBJ('A096',GetTriggerUnit())
    else
    if(Trig_Llane_Starts_Func001Func005Func001Func001Func007Func001Func001C())then
    call SetUnitAbilityLevelSwapped('Aspb',GetTriggerUnit(),3)
    call UnitAddAbilityBJ('A094',GetTriggerUnit())
    else
    endif
    endif
    endif
    call PolledWait(30.00)
    call UnitRemoveAbilityBJ('Aspb',gg_unit_Hpb1_0517)
    call UnitRemoveAbilityBJ('A095',gg_unit_Hpb1_0517)
    call UnitRemoveAbilityBJ('A096',gg_unit_Hpb1_0517)
    call UnitRemoveAbilityBJ('A094',gg_unit_Hpb1_0517)
    else
    endif
    endif
    set TempUnit = null
    endfunction
    function InitTrig_Llane_Starts takes nothing returns nothing
    set gg_trg_Llane_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Llane_Starts,function Trig_Llane_Starts_Actions)
    endfunction