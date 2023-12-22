function Trig_Avatar_of_Sargeras_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A0A0'))then
    return false
    endif
    return true
    endfunction
    function Trig_Avatar_of_Sargeras_Actions takes nothing returns nothing
    if(Trig_Avatar_of_Sargeras_Func001C())then
    set udg_TempPoint=GetUnitLoc(GetTriggerUnit())
    call PlaySoundAtPointBJ(gg_snd_SargerasRoar,100,udg_TempPoint,0)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Abilities\\Spells\\Other\\Doom\\DoomDeath.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    call CreateNUnitsAtLoc(1,'o00Y',Player(4),udg_TempPoint,bj_UNIT_FACING)
    call UnitApplyTimedLifeBJ(40.00,'Bhwd',GetLastCreatedUnit())
    call RemoveLocation(udg_TempPoint)
    call DisableTrigger(GetTriggeringTrigger())
    call UnitMakeAbilityPermanent(GetTriggerUnit(),true,'AEsf')
    call UnitMakeAbilityPermanent(GetTriggerUnit(),true,'AHmt')
    call UnitMakeAbilityPermanent(GetTriggerUnit(),true,'Asbp')
    call PolledWait(40.50)
    call EnableTrigger(GetTriggeringTrigger())
    call UnitMakeAbilityPermanent(GetTriggerUnit(),true,'AEsf')
    call UnitMakeAbilityPermanent(GetTriggerUnit(),true,'AHmt')
    call UnitMakeAbilityPermanent(GetTriggerUnit(),true,'Asbp')
    else
    endif
    endfunction
    function InitTrig_Avatar_of_Sargeras takes nothing returns nothing
    set gg_trg_Avatar_of_Sargeras=CreateTrigger()
    call TriggerAddAction(gg_trg_Avatar_of_Sargeras,function Trig_Avatar_of_Sargeras_Actions)
    endfunction