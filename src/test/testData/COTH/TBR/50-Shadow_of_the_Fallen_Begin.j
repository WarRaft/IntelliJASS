function Trig_Shadow_of_the_Fallen_Begin_Conditions takes nothing returns boolean
    if(not(GetSpellAbilityId()=='AOvd'))then
    return false
    endif
    return true
    endfunction
    function Trig_Shadow_of_the_Fallen_Begin_Actions takes nothing returns nothing
    set udg_ShadowPoint=GetUnitLoc(gg_unit_Ocbh_0511)
    set udg_ShadowCount=(I2R(GetUnitAbilityLevelSwapped('A01N',GetTriggerUnit()))-1)
    call PlaySoundAtPointBJ(gg_snd_FrostmourneChant1,100,udg_ShadowPoint,0)
    endfunction
    function InitTrig_Shadow_of_the_Fallen_Begin takes nothing returns nothing
    set gg_trg_Shadow_of_the_Fallen_Begin=CreateTrigger()
    call TriggerAddCondition(gg_trg_Shadow_of_the_Fallen_Begin,Condition(function Trig_Shadow_of_the_Fallen_Begin_Conditions))
    call TriggerAddAction(gg_trg_Shadow_of_the_Fallen_Begin,function Trig_Shadow_of_the_Fallen_Begin_Actions)
    endfunction