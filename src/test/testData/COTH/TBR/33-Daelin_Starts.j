
    function Trig_Daelin_Starts_Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='ACfd'))then
    return false
    endif
    return true
    endfunction
    function Trig_Daelin_Starts_Func001Func009002003001 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(2))==true)
    endfunction
    function Trig_Daelin_Starts_Func001Func009002003002 takes nothing returns boolean
    return(UnitHasBuffBJ(GetFilterUnit(),'Bams')==false)
    endfunction
    function Trig_Daelin_Starts_Func001Func009002003 takes nothing returns boolean
    return GetBooleanAnd(Trig_Daelin_Starts_Func001Func009002003001(),Trig_Daelin_Starts_Func001Func009002003002())
    endfunction
    function Trig_Daelin_Starts_Func001Func010002 takes nothing returns nothing
    call PauseUnitBJ(true,GetEnumUnit())
    endfunction
    function Trig_Daelin_Starts_Func001Func013002003 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),Player(2))==true)
    endfunction
    function Trig_Daelin_Starts_Func001Func014002 takes nothing returns nothing
    call PauseUnitBJ(false,GetEnumUnit())
    endfunction
    function Trig_Daelin_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A0A4'))then
    return false
    endif
    return true
    endfunction
    function Trig_Daelin_Starts_Actions takes nothing returns nothing
    if(Trig_Daelin_Starts_Func001C())then
    set udg_AnchorCaster=GetUnitLoc(GetTriggerUnit())
    call SetUnitPositionLoc(gg_unit_o002_0600,udg_AnchorCaster)
    call SetUnitPositionLoc(gg_unit_o011_0198,udg_AnchorCaster)
    set udg_AnchorPoint=GetSpellTargetLoc()
    call IssuePointOrderLoc(gg_unit_o011_0198,"clusterrockets",udg_AnchorPoint)
    call IssuePointOrderLoc(gg_unit_o002_0600,"clusterrockets",udg_AnchorPoint)
    call PolledWait(0.50)
    call PlaySoundAtPointBJ(gg_snd_MetalHeavyChopMetal2,100,udg_AnchorPoint,0)
    set udg_AnchorGroup=GetUnitsInRangeOfLocMatching(185.00,udg_AnchorPoint,Condition(function Trig_Daelin_Starts_Func001Func009002003))
    call ForGroupBJ(udg_AnchorGroup,function Trig_Daelin_Starts_Func001Func010002)
    call PolledWait((DistanceBetweenPoints(udg_AnchorCaster,udg_AnchorPoint)/ 300.00))
    call ForGroupBJ(udg_AnchorGroup,function Trig_Daelin_Starts_Func001Func014002)
    call DestroyGroup(udg_AnchorGroup)
    call RemoveLocation(udg_AnchorPoint)
    else
    if(Trig_Daelin_Starts_Func001Func001C())then
    call PlaySoundOnUnitBJ(gg_snd_HumanCallToArmsWhat1,100,GetSpellTargetUnit())
    call SetUnitOwner(GetSpellTargetUnit(),Player(2),true)
    call ReplaceUnitBJ(GetSpellTargetUnit(),'nbld',bj_UNIT_STATE_METHOD_RELATIVE)
    else
    endif
    endif
    endfunction
    function InitTrig_Daelin_Starts takes nothing returns nothing
    set gg_trg_Daelin_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Daelin_Starts,function Trig_Daelin_Starts_Actions)
    endfunction