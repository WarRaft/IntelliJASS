globals
    timer DanathTaunt = CreateTimer()
endglobals

    function Trig_Danath_Starts_Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='AHtb'))then
    return false
    endif
    if(not(UnitHasBuffBJ(GetSpellTargetUnit(),'B01E')==false))then
    return false
    endif
    if(not(UnitHasBuffBJ(GetSpellTargetUnit(),'B03N')==false))then
    return false
    endif
    return true
    endfunction
    function Trig_Danath_Starts_Func001Func003002003001 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(0))==true)
    endfunction
    function Trig_Danath_Starts_Func001Func003002003002 takes nothing returns boolean
    return(UnitHasBuffBJ(GetFilterUnit(),'Bams')==false)
    endfunction
    function Trig_Danath_Starts_Func001Func003002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Danath_Starts_Func001Func003002003001(),Trig_Danath_Starts_Func001Func003002003002())
    endfunction
    function Trig_Danath_Starts_Func001Func004A takes nothing returns nothing
    call IssueTargetOrder(GetEnumUnit(),"attack",DanathUnit)
    endfunction
    function Trig_Danath_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A03G'))then
    return false
    endif
    return true
    endfunction
    
function Taunt takes nothing returns nothing
    local location TempPoint = GetUnitLoc(DanathUnit)
    local group TauntGroup = CreateGroup()
    call GroupEnumUnitsInRangeOfLoc(TauntGroup, TempPoint, 500, Condition(function Trig_Danath_Starts_Func001Func003002003))
    call ForGroup(TauntGroup,function Trig_Danath_Starts_Func001Func004A)
    call RemoveLocation(TempPoint)
    call DestroyGroup(TauntGroup)
    set TempPoint = null
    set TauntGroup = null
endfunction

function StopTaunt takes nothing returns nothing
    call DestroyTimer(DanathTaunt)
    call PauseTimer(DanathTaunt)
    call DestroyTimer(GetExpiredTimer())
endfunction
    
    function Trig_Danath_Starts_Actions takes nothing returns nothing
    if(Trig_Danath_Starts_Func001C())then
    call TimerStart(DanathTaunt, 0.05, true, function Taunt)
    call TimerStart(CreateTimer(), 2, false, function StopTaunt)
    else
    if(Trig_Danath_Starts_Func001Func001C())then
    call UnitDamageTargetBJ(gg_unit_Hdgo_0520,GetSpellTargetUnit(),((42.00*I2R(GetUnitAbilityLevelSwapped('AHtb',gg_unit_Hdgo_0520)))+15.00),ATTACK_TYPE_MELEE,DAMAGE_TYPE_UNIVERSAL)
    call UnitDamageTargetBJ(gg_unit_Hdgo_0520,GetSpellTargetUnit(),((43.00*I2R(GetUnitAbilityLevelSwapped('AHtb',gg_unit_Hdgo_0520)))+15.00),ATTACK_TYPE_MELEE,DAMAGE_TYPE_NORMAL)
    else
    endif
    endif
    
    endfunction
    function InitTrig_Danath_Starts takes nothing returns nothing
    set gg_trg_Danath_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Danath_Starts,function Trig_Danath_Starts_Actions)
    endfunction