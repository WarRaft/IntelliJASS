function Trig_Last_Rider_Death_Conditions takes nothing returns boolean
    if(not(GetUnitTypeId(GetSpellAbilityUnit())=='osw2'))then
    return false
    endif
    return true
    endfunction
    function Trig_Last_Rider_Death_Actions takes nothing returns nothing
    call DisableTrigger(GetTriggeringTrigger())
    call PolledWait(0.20)
    set udg_TempPoint2=GetUnitLoc(udg_LastRider)
    call RemoveUnit(udg_LastRider)
    call AddSpecialEffectLocBJ(udg_TempPoint2,"Abilities\\Spells\\Orc\\FeralSpirit\\feralspiritdone.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call RemoveLocation(udg_TempPoint2)
    endfunction
    function InitTrig_Last_Rider_Death takes nothing returns nothing
    set gg_trg_Last_Rider_Death=CreateTrigger()
    call DisableTrigger(gg_trg_Last_Rider_Death)
    call TriggerAddCondition(gg_trg_Last_Rider_Death,Condition(function Trig_Last_Rider_Death_Conditions))
    call TriggerAddAction(gg_trg_Last_Rider_Death,function Trig_Last_Rider_Death_Actions)
    endfunction