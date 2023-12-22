function Trig_Mount_Dismount_Holy_Light_Func001Func001C takes nothing returns boolean
    if((GetUnitTypeId(GetTriggerUnit())=='h00X'))then
    return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='h00Y'))then
    return true
    endif
    return false
    endfunction
    function Trig_Mount_Dismount_Holy_Light_Func001Func002Func001C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='Aco2'))then
    return false
    endif
    return true
    endfunction
    function Trig_Mount_Dismount_Holy_Light_Func001Func002C takes nothing returns boolean
    if(not(GetSpellAbilityId()=='A04D'))then
    return false
    endif
    return true
    endfunction
    function Trig_Mount_Dismount_Holy_Light_Func001C takes nothing returns boolean
    if(not Trig_Mount_Dismount_Holy_Light_Func001Func001C())then
    return false
    endif
    return true
    endfunction
    function Trig_Mount_Dismount_Holy_Light_Actions takes nothing returns nothing
    if(Trig_Mount_Dismount_Holy_Light_Func001C())then
    if(Trig_Mount_Dismount_Holy_Light_Func001Func002C())then
    call PolledWait(1.00)
    call ResetUnitAnimation(GetTriggerUnit())
    else
    if(Trig_Mount_Dismount_Holy_Light_Func001Func002Func001C())then
    set udg_Mount=GetUnitLoc(GetTriggerUnit())
    call CreateNUnitsAtLoc(1,'h00Y',Player(8),udg_Mount,bj_UNIT_FACING)
    call SetUnitLifeBJ(GetLastCreatedUnit(),(GetUnitStateSwap(UNIT_STATE_LIFE,GetTriggerUnit())+GetUnitStateSwap(UNIT_STATE_LIFE,GetSpellTargetUnit())))
    call SetUnitManaPercentBJ(GetLastCreatedUnit(),GetUnitManaPercent(GetTriggerUnit()))
    call RemoveUnit(GetSpellTargetUnit())
    call RemoveUnit(GetTriggerUnit())
    call PlaySoundAtPointBJ(gg_snd_KnightNoRiderWhat2,100,udg_Mount,0)
    call RemoveLocation(udg_Mount)
    else
    endif
    endif
    else
    endif
    endfunction
    function InitTrig_Mount_Dismount_Holy_Light takes nothing returns nothing
    set gg_trg_Mount_Dismount_Holy_Light=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Mount_Dismount_Holy_Light,Player(8),EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddAction(gg_trg_Mount_Dismount_Holy_Light,function Trig_Mount_Dismount_Holy_Light_Actions)
    endfunction