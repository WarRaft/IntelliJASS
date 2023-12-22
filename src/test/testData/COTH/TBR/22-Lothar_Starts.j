
    function Trig_Lothar_Starts_Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='ANbr'))then
    return false
    endif
    return true
    endfunction
    function Trig_Lothar_Starts_Actions takes nothing returns nothing
    if(Trig_Lothar_Starts_Func001C())then
    call PlaySoundOnUnitBJ(gg_snd_TheHornOfCenarius,100,GetTriggerUnit())
    call PolledWait(2.50)
    call StopSoundBJ(gg_snd_TheHornOfCenarius,true)
    else
    endif
    endfunction
    function InitTrig_Lothar_Starts takes nothing returns nothing
    set gg_trg_Lothar_Starts=CreateTrigger()
    call TriggerAddAction(gg_trg_Lothar_Starts,function Trig_Lothar_Starts_Actions)
    endfunction