function Trig_Blackhands_Orders_Conditions takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A0DQ'))then
    return false
    endif
    return true
    endfunction
    function Trig_Blackhands_Orders_Func010Func001Func002C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A0DQ',gg_unit_Ekee_0528)==3))then
    return false
    endif
    return true
    endfunction
    function Trig_Blackhands_Orders_Func010Func001C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A0DQ',gg_unit_Ekee_0528)==2))then
    return false
    endif
    return true
    endfunction
    function Trig_Blackhands_Orders_Func010C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A0DQ',gg_unit_Ekee_0528)==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Blackhands_Orders_Func017001003 takes nothing returns boolean
    return(IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(gg_unit_Ekee_0528))==true)
    endfunction
    function Trig_Blackhands_Orders_Func017A takes nothing returns nothing
    call IssueTargetOrder(GetEnumUnit(),"attack",udg_Bodyguard1)
    endfunction
    function Trig_Blackhands_Orders_Actions takes nothing returns nothing
    set udg_TempPoint=GetUnitLoc(gg_unit_Ekee_0528)
    call PlaySoundAtPointBJ(gg_snd_ArachnathidWhat1,100,udg_TempPoint,0)
    call DisableTrigger(GetTriggeringTrigger())
    call RemoveLocation(udg_TempPoint)
    call PolledWait(0.30)
    call RemoveUnit(udg_Bodyguard1)
    call RemoveUnit(udg_Bodyguard2)
    set udg_TempPoint=GetUnitLoc(gg_unit_Ekee_0528)
    if(Trig_Blackhands_Orders_Func010C())then
    call CreateNUnitsAtLoc(1,'nfgb',GetOwningPlayer(gg_unit_Ekee_0528),udg_TempPoint,GetUnitFacing(gg_unit_Ekee_0528))
    set udg_Bodyguard1=GetLastCreatedUnit()
    call CreateNUnitsAtLoc(1,'nfgb',GetOwningPlayer(gg_unit_Ekee_0528),udg_TempPoint,GetUnitFacing(gg_unit_Ekee_0528))
    set udg_Bodyguard2=GetLastCreatedUnit()
    else
    if(Trig_Blackhands_Orders_Func010Func001C())then
    call CreateNUnitsAtLoc(1,'nchg',GetOwningPlayer(gg_unit_Ekee_0528),udg_TempPoint,GetUnitFacing(gg_unit_Ekee_0528))
    set udg_Bodyguard1=GetLastCreatedUnit()
    call CreateNUnitsAtLoc(1,'nchg',GetOwningPlayer(gg_unit_Ekee_0528),udg_TempPoint,GetUnitFacing(gg_unit_Ekee_0528))
    set udg_Bodyguard2=GetLastCreatedUnit()
    else
    if(Trig_Blackhands_Orders_Func010Func001Func002C())then
    call CreateNUnitsAtLoc(1,'nckb',GetOwningPlayer(gg_unit_Ekee_0528),udg_TempPoint,GetUnitFacing(gg_unit_Ekee_0528))
    set udg_Bodyguard1=GetLastCreatedUnit()
    call CreateNUnitsAtLoc(1,'nckb',GetOwningPlayer(gg_unit_Ekee_0528),udg_TempPoint,GetUnitFacing(gg_unit_Ekee_0528))
    set udg_Bodyguard2=GetLastCreatedUnit()
    else
    call CreateNUnitsAtLoc(1,'ncpn',GetOwningPlayer(gg_unit_Ekee_0528),udg_TempPoint,GetUnitFacing(gg_unit_Ekee_0528))
    set udg_Bodyguard1=GetLastCreatedUnit()
    call CreateNUnitsAtLoc(1,'ncpn',GetOwningPlayer(gg_unit_Ekee_0528),udg_TempPoint,GetUnitFacing(gg_unit_Ekee_0528))
    set udg_Bodyguard2=GetLastCreatedUnit()
    endif
    endif
    endif
    set udg_BodyGuardCount=0
    call AddSpecialEffectTargetUnitBJ("origin",udg_Bodyguard1,"Abilities\\Spells\\NightElf\\Taunt\\TauntCaster.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call AddSpecialEffectTargetUnitBJ("origin",udg_Bodyguard2,"Abilities\\Spells\\NightElf\\Taunt\\TauntCaster.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call PlaySoundAtPointBJ(gg_snd_CentaurDeath,100,udg_TempPoint,0)
    call ForGroupBJ(GetUnitsInRangeOfLocMatching(350.00,udg_TempPoint,Condition(function Trig_Blackhands_Orders_Func017001003)),function Trig_Blackhands_Orders_Func017A)
    call RemoveLocation(udg_TempPoint)
    call PolledWait(0.30)
    call ResetUnitAnimation(gg_unit_Ekee_0528)
    call EnableTrigger(GetTriggeringTrigger())
    endfunction
    function InitTrig_Blackhands_Orders takes nothing returns nothing
    set gg_trg_Blackhands_Orders=CreateTrigger()
    call TriggerAddCondition(gg_trg_Blackhands_Orders,Condition(function Trig_Blackhands_Orders_Conditions))
    call TriggerAddAction(gg_trg_Blackhands_Orders,function Trig_Blackhands_Orders_Actions)
    endfunction