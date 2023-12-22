    function Trig_Greymane_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A06O'))then
    return false
    endif
    return true
    endfunction
    function Trig_Greymane_Starts_Actions takes nothing returns nothing
    if(Trig_Greymane_Starts_Func001C())then
    call SetUnitLifeBJ(udg_Greymane,(GetUnitStateSwap(UNIT_STATE_LIFE,udg_Greymane)+((GetUnitStateSwap(UNIT_STATE_MAX_LIFE,udg_Greymane)*(I2R(GetUnitAbilityLevelSwapped('A06O',udg_Greymane))*0.04))+((I2R(GetUnitAbilityLevelSwapped('A06O',udg_Greymane))*20.00)+60.00))))
    call AddSpecialEffectTargetUnitBJ("origin",udg_Greymane,"Abilities\\Spells\\Items\\AIre\\AIreTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    endif
    endfunction
    function InitTrig_Greymane_Starts takes nothing returns nothing
    set gg_trg_Greymane_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Greymane_Starts,function Trig_Greymane_Starts_Actions)
    endfunction