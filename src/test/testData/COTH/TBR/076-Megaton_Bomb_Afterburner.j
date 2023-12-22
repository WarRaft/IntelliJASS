function Trig_Megaton_Bomb_Afterburner_Func001Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A0CG'))then
    return false
    endif
    return true
    endfunction
    function Trig_Megaton_Bomb_Afterburner_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A0CO'))then
    return false
    endif
    return true
    endfunction
    function Trig_Megaton_Bomb_Afterburner_Actions takes nothing returns nothing
    if(Trig_Megaton_Bomb_Afterburner_Func001C())then
    set udg_TempPoint=GetUnitLoc(GetSpellAbilityUnit())
    call PlaySoundAtPointBJ(gg_snd_GyrocopterPissed2,100,udg_TempPoint,0)
    call RemoveLocation(udg_TempPoint)
    else
    if(Trig_Megaton_Bomb_Afterburner_Func001Func001C())then
    set udg_TempPoint=GetUnitLoc(GetSpellAbilityUnit())
    call PlaySoundAtPointBJ(gg_snd_GyrocopterPissed1,100,udg_TempPoint,0)
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetUnitLoc(GetSpellAbilityUnit())
    call AddSpecialEffectLocBJ(udg_TempPoint,"Objects\\Spawnmodels\\Human\\FragmentationShards\\FragBoomSpawn.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call AddSpecialEffectLocBJ(udg_TempPoint,"Abilities\\Spells\\Other\\Incinerate\\FireLordDeathExplode.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call RemoveLocation(udg_TempPoint)
    call TriggerSleepAction(0.04)
    call UnitRemoveAbilityBJ('A0CG',GetSpellAbilityUnit())
    else
    endif
    endif
    endfunction
    function InitTrig_Megaton_Bomb_Afterburner takes nothing returns nothing
    set gg_trg_Megaton_Bomb_Afterburner=CreateTrigger()
    call TriggerAddAction(gg_trg_Megaton_Bomb_Afterburner,function Trig_Megaton_Bomb_Afterburner_Actions)
    endfunction