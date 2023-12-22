 function Trig_Spirit_Wolf_Death_Conditions takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A0B1'))then
    return false
    endif
    return true
    endfunction
    function Trig_Spirit_Wolf_Death_Actions takes nothing returns nothing
    set udg_TempPoint2=GetUnitLoc(GetSpellAbilityUnit())
    call RemoveUnit(GetSpellAbilityUnit())
    call AddSpecialEffectLocBJ(udg_TempPoint2,"Abilities\\Spells\\Orc\\FeralSpirit\\feralspiritdone.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call RemoveLocation(udg_TempPoint2)
    endfunction
    function InitTrig_Spirit_Wolf_Death takes nothing returns nothing
    set gg_trg_Spirit_Wolf_Death=CreateTrigger()
    call DisableTrigger(gg_trg_Spirit_Wolf_Death)
    call TriggerAddCondition(gg_trg_Spirit_Wolf_Death,Condition(function Trig_Spirit_Wolf_Death_Conditions))
    call TriggerAddAction(gg_trg_Spirit_Wolf_Death,function Trig_Spirit_Wolf_Death_Actions)
    endfunction