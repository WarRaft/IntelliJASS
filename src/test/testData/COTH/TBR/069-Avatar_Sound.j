function Trig_Avatar_Sound_Conditions takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A05M'))then
    return false
    endif
    return true
    endfunction
    function Trig_Avatar_Sound_Actions takes nothing returns nothing
    call PlaySoundOnUnitBJ(gg_snd_MuradinYesAttack2,100,gg_unit_Ucrl_0500)
    call UnitMakeAbilityPermanent(GetTriggerUnit(),true,'AEsf')
    call UnitMakeAbilityPermanent(GetTriggerUnit(),true,'A05Y')
    call UnitMakeAbilityPermanent(GetTriggerUnit(),true,'Asbp')
    endfunction
    function InitTrig_Avatar_Sound takes nothing returns nothing
    set gg_trg_Avatar_Sound=CreateTrigger()
    call TriggerAddCondition(gg_trg_Avatar_Sound,Condition(function Trig_Avatar_Sound_Conditions))
    call TriggerAddAction(gg_trg_Avatar_Sound,function Trig_Avatar_Sound_Actions)
    endfunction