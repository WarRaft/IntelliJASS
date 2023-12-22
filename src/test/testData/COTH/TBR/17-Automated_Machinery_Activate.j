function Trig_Automated_Machinery_Activate_Func001Func004C takes nothing returns boolean
    if(not(udg_SteamContraption==0))then
    return false
    endif
    return true
    endfunction
    function Trig_Automated_Machinery_Activate_Func001C takes nothing returns boolean
    if(not(IsUnitAliveBJ(gg_unit_Ntin_0477)==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Automated_Machinery_Activate_Actions takes nothing returns nothing
    if(Trig_Automated_Machinery_Activate_Func001C())then
    set udg_TempPoint=GetUnitLoc(gg_unit_Ntin_0477)
    call CreateNUnitsAtLoc(1,'o016',GetOwningPlayer(gg_unit_Ntin_0477),udg_TempPoint,bj_UNIT_FACING)
    if(Trig_Automated_Machinery_Activate_Func001Func004C())then
    call SetUnitAbilityLevelSwapped('A08W',GetLastCreatedUnit(),GetUnitAbilityLevelSwapped('SCae',gg_unit_Ntin_0477))
    call IssueImmediateOrder(GetLastCreatedUnit(),"fanofknives")
    else
    call SetUnitAbilityLevelSwapped('A0AG',GetLastCreatedUnit(),GetUnitAbilityLevelSwapped('SCae',gg_unit_Ntin_0477))
    call IssueImmediateOrder(GetLastCreatedUnit(),"stomp")
    call AddSpecialEffectLocBJ(udg_TempPoint,"Abilities\\Spells\\Human\\ThunderClap\\ThunderClapCaster.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    endif
    call RemoveLocation(udg_TempPoint)
    set udg_AutomatedMachinery=0.00
    else
    set udg_AutomatedMachinery=0.00
    endif
    endfunction
    function InitTrig_Automated_Machinery_Activate takes nothing returns nothing
    set gg_trg_Automated_Machinery_Activate=CreateTrigger()
    call TriggerRegisterVariableEvent(gg_trg_Automated_Machinery_Activate,"udg_AutomatedMachinery",GREATER_THAN,1.00)
    call TriggerAddAction(gg_trg_Automated_Machinery_Activate,function Trig_Automated_Machinery_Activate_Actions)
    endfunction