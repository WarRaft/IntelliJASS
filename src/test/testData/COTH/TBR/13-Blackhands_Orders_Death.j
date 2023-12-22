function Trig_Blackhands_Orders_Death_Func001Func004Func001C takes nothing returns boolean
    if(not(GetDyingUnit()==udg_TurokSpirit))then
    return false
    endif
    return true
    endfunction
    function Trig_Blackhands_Orders_Death_Func001Func004C takes nothing returns boolean
    if(not(GetDyingUnit()==udg_Bodyguard2))then
    return false
    endif
    return true
    endfunction
    function Trig_Blackhands_Orders_Death_Func001C takes nothing returns boolean
    if(not(GetDyingUnit()==udg_Bodyguard1))then
    return false
    endif
    return true
    endfunction
    function Trig_Blackhands_Orders_Death_Actions takes nothing returns nothing
    if(Trig_Blackhands_Orders_Death_Func001C())then
    set udg_Bodyguard1=null
    call GroupRemoveUnitSimple(udg_Bodyguard1,udg_EssenceGroup)
    set udg_BodyGuardCount=(udg_BodyGuardCount+1)
    else
    if(Trig_Blackhands_Orders_Death_Func001Func004C())then
    set udg_Bodyguard2=null
    call GroupRemoveUnitSimple(udg_Bodyguard2,udg_EssenceGroup)
    set udg_BodyGuardCount=(udg_BodyGuardCount+2)
    else
    if(Trig_Blackhands_Orders_Death_Func001Func004Func001C())then
    set udg_TempPoint=GetUnitLoc(GetDyingUnit())
    call AddSpecialEffectLocBJ(udg_TempPoint,"Abilities\\Spells\\Orc\\FeralSpirit\\feralspirittarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call RemoveLocation(udg_TempPoint)
    set udg_TurokSpirit=null
    call GroupRemoveUnitSimple(udg_TurokSpirit,udg_EssenceGroup)
    set udg_TurokCount=0
    else
    endif
    endif
    endif
    endfunction
    function InitTrig_Blackhands_Orders_Death takes nothing returns nothing
    set gg_trg_Blackhands_Orders_Death=CreateTrigger()
    call DisableTrigger(gg_trg_Blackhands_Orders_Death)
    call TriggerAddAction(gg_trg_Blackhands_Orders_Death,function Trig_Blackhands_Orders_Death_Actions)
    endfunction