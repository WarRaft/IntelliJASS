function Trig_Dentarg_Starts_Func001Func003001 takes nothing returns boolean
    return(udg_SkullCount>=1.00)
    endfunction
    function Trig_Dentarg_Starts_Func001Func011Func002002003001 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(4))==true)
    endfunction
    function Trig_Dentarg_Starts_Func001Func011Func002002003002001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false)
    endfunction
    function Trig_Dentarg_Starts_Func001Func011Func002002003002002 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_GROUND)==true)
    endfunction
    function Trig_Dentarg_Starts_Func001Func011Func002002003002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Dentarg_Starts_Func001Func011Func002002003002001(),Trig_Dentarg_Starts_Func001Func011Func002002003002002())
    endfunction
    function Trig_Dentarg_Starts_Func001Func011Func002002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Dentarg_Starts_Func001Func011Func002002003001(),Trig_Dentarg_Starts_Func001Func011Func002002003002())
    endfunction
    function Trig_Dentarg_Starts_Func001Func011Func003A takes nothing returns nothing
    call UnitDamageTargetBJ(gg_unit_Ocbh_0511,GetEnumUnit(),(I2R(udg_HellishSkulls)*15.00),ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC)
    endfunction
    function Trig_Dentarg_Starts_Func001Func011C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A01N',GetTriggerUnit())>1))then
    return false
    endif
    return true
    endfunction
    function Trig_Dentarg_Starts_Func001Func013Func002Func001001001 takes nothing returns boolean
    return(GetOwningPlayer(GetTriggerUnit())==GetFilterPlayer())
    endfunction
    function Trig_Dentarg_Starts_Func001Func013Func002Func004001 takes nothing returns boolean
    return(udg_SkullCount>=1.00)
    endfunction
    function Trig_Dentarg_Starts_Func001Func013Func002C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A01N',GetTriggerUnit())>1))then
    return false
    endif
    return true
    endfunction
    function Trig_Dentarg_Starts_Func001Func013C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A07V'))then
    return false
    endif
    return true
    endfunction
    function Trig_Dentarg_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A08U'))then
    return false
    endif
    return true
    endfunction
    function Trig_Dentarg_Starts_Actions takes nothing returns nothing
    if(Trig_Dentarg_Starts_Func001C())then
    set udg_HellishSkulls=R2I(udg_SkullCount)
    call SetUnitAbilityLevelSwapped('A01N',GetTriggerUnit(),(GetUnitAbilityLevelSwapped('A01N',GetTriggerUnit())-1))
    if(Trig_Dentarg_Starts_Func001Func003001())then
    set udg_SkullCount=(udg_SkullCount-1)
    else
    endif
    set udg_TempPoint=GetUnitLoc(GetTriggerUnit())
    call SetUnitPositionLoc(gg_unit_o00H_0443,udg_TempPoint)
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetSpellTargetLoc()
    call IssuePointOrderLoc(gg_unit_o00H_0443,"clusterrockets",udg_TempPoint)
    call RemoveLocation(udg_TempPoint)
    call PolledWait(0.28)
    if(Trig_Dentarg_Starts_Func001Func011C())then
    set udg_TempPoint=GetSpellTargetLoc()
    set udg_Temp_UnitGroup=GetUnitsInRangeOfLocMatching(200.00,udg_TempPoint,Condition(function Trig_Dentarg_Starts_Func001Func011Func002002003))
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Dentarg_Starts_Func001Func011Func003A)
    call DestroyGroup(udg_Temp_UnitGroup)
    call RemoveLocation(udg_TempPoint)
    else
    endif
    else
    if(Trig_Dentarg_Starts_Func001Func013C())then
    if(Trig_Dentarg_Starts_Func001Func013Func002C())then
    call SetUnitAbilityLevelSwapped('A01N',GetTriggerUnit(),(GetUnitAbilityLevelSwapped('A01N',GetTriggerUnit())-1))
    if(Trig_Dentarg_Starts_Func001Func013Func002Func004001())then
    set udg_SkullCount=(udg_SkullCount-1)
    else
    call DoNothing()
    endif
    call SetUnitLifeBJ(gg_unit_Ocbh_0511,(GetUnitStateSwap(UNIT_STATE_LIFE,gg_unit_Ocbh_0511)+((GetUnitStateSwap(UNIT_STATE_MAX_LIFE,gg_unit_Ocbh_0511)*0.08)+125.00)))
    call SetUnitManaBJ(gg_unit_Ocbh_0511,(GetUnitStateSwap(UNIT_STATE_MANA,gg_unit_Ocbh_0511)+140.00))
    else
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Dentarg_Starts_Func001Func013Func002Func001001001)),"|c00FFD700Дентаргу нужен хотя бы 1 череп!|r ")
    endif
    else
    endif
    endif
    endfunction
    function InitTrig_Dentarg_Starts takes nothing returns nothing
    set gg_trg_Dentarg_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Dentarg_Starts,function Trig_Dentarg_Starts_Actions)
    endfunction