function Trig_Trophies_and_Libation_and_Teron_Reset_Func001Func001Func001Func001C takes nothing returns boolean
    if(not(GetKillingUnitBJ()==gg_unit_Othr_0515))then
    return false
    endif
    if(not(IsUnitType(GetDyingUnit(),UNIT_TYPE_HERO)==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Trophies_and_Libation_and_Teron_Reset_Func001Func001Func001C takes nothing returns boolean
    if(not(GetKillingUnitBJ()==gg_unit_Ogld_0530))then
    return false
    endif
    if(not(IsUnitType(GetDyingUnit(),UNIT_TYPE_HERO)==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Trophies_and_Libation_and_Teron_Reset_Func001Func001Func002C takes nothing returns boolean
    if(not(IsUnitType(GetDyingUnit(),UNIT_TYPE_MECHANICAL)==false))then
    return false
    endif
    if(not(IsUnitType(GetDyingUnit(),UNIT_TYPE_STRUCTURE)==false))then
    return false
    endif
    return true
    endfunction
    function Trig_Trophies_and_Libation_and_Teron_Reset_Func001Func001C takes nothing returns boolean
    if(not(GetKillingUnitBJ()==gg_unit_Utic_0512))then
    return false
    endif
    return true
    endfunction
    function Trig_Trophies_and_Libation_and_Teron_Reset_Func001Func002C takes nothing returns boolean
    if((GetKillingUnitBJ()==gg_unit_Ocbh_0511))then
    return true
    endif
    if((GetKillingUnitBJ()==gg_unit_o00H_0443))then
    return true
    endif
    return false
    endfunction
    function Trig_Trophies_and_Libation_and_Teron_Reset_Func001Func003Func001Func001Func001C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A07V',gg_unit_Ocbh_0511)==4))then
    return false
    endif
    if(not(GetUnitAbilityLevelSwapped('A01N',gg_unit_Ocbh_0511)<16))then
    return false
    endif
    return true
    endfunction
    function Trig_Trophies_and_Libation_and_Teron_Reset_Func001Func003Func001Func001C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A07V',gg_unit_Ocbh_0511)==3))then
    return false
    endif
    if(not(GetUnitAbilityLevelSwapped('A01N',gg_unit_Ocbh_0511)<12))then
    return false
    endif
    return true
    endfunction
    function Trig_Trophies_and_Libation_and_Teron_Reset_Func001Func003Func001C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A07V',gg_unit_Ocbh_0511)==2))then
    return false
    endif
    if(not(GetUnitAbilityLevelSwapped('A01N',gg_unit_Ocbh_0511)<9))then
    return false
    endif
    return true
    endfunction
    function Trig_Trophies_and_Libation_and_Teron_Reset_Func001Func003C takes nothing returns boolean
    if(not(GetUnitAbilityLevelSwapped('A07V',gg_unit_Ocbh_0511)==1))then
    return false
    endif
    if(not(GetUnitAbilityLevelSwapped('A01N',gg_unit_Ocbh_0511)<6))then
    return false
    endif
    return true
    endfunction
    function Trig_Trophies_and_Libation_and_Teron_Reset_Func001C takes nothing returns boolean
    if(not Trig_Trophies_and_Libation_and_Teron_Reset_Func001Func002C())then
    return false
    endif
    return true
    endfunction
    function Trig_Trophies_and_Libation_and_Teron_Reset_Actions takes nothing returns nothing
    if(Trig_Trophies_and_Libation_and_Teron_Reset_Func001C())then
    if(Trig_Trophies_and_Libation_and_Teron_Reset_Func001Func003C())then
    call SetUnitAbilityLevelSwapped('A01N',gg_unit_Ocbh_0511,(GetUnitAbilityLevelSwapped('A01N',gg_unit_Ocbh_0511)+1))
    set udg_SkullCount=(udg_SkullCount+1)
    else
    if(Trig_Trophies_and_Libation_and_Teron_Reset_Func001Func003Func001C())then
    call SetUnitAbilityLevelSwapped('A01N',gg_unit_Ocbh_0511,(GetUnitAbilityLevelSwapped('A01N',gg_unit_Ocbh_0511)+1))
    set udg_SkullCount=(udg_SkullCount+1)
    else
    if(Trig_Trophies_and_Libation_and_Teron_Reset_Func001Func003Func001Func001C())then
    call SetUnitAbilityLevelSwapped('A01N',gg_unit_Ocbh_0511,(GetUnitAbilityLevelSwapped('A01N',gg_unit_Ocbh_0511)+1))
    set udg_SkullCount=(udg_SkullCount+1)
    else
    if(Trig_Trophies_and_Libation_and_Teron_Reset_Func001Func003Func001Func001Func001C())then
    call SetUnitAbilityLevelSwapped('A01N',gg_unit_Ocbh_0511,(GetUnitAbilityLevelSwapped('A01N',gg_unit_Ocbh_0511)+1))
    set udg_SkullCount=(udg_SkullCount+1)
    else
    endif
    endif
    endif
    endif
    else
    if(Trig_Trophies_and_Libation_and_Teron_Reset_Func001Func001C())then
    if(Trig_Trophies_and_Libation_and_Teron_Reset_Func001Func001Func002C())then
    call SetUnitLifeBJ(GetKillingUnitBJ(),(GetUnitStateSwap(UNIT_STATE_LIFE,GetKillingUnitBJ())+(GetUnitStateSwap(UNIT_STATE_MAX_LIFE,GetDyingUnit())*((0.03*I2R(GetUnitAbilityLevelSwapped('A081',GetKillingUnitBJ())))+0.06))))
    else
    endif
    else
    if(Trig_Trophies_and_Libation_and_Teron_Reset_Func001Func001Func001C())then
    call UnitResetCooldown(gg_unit_Ogld_0530)
    call AddSpecialEffectTargetUnitBJ("overhead",gg_unit_Ogld_0530,"Abilities\\Spells\\Undead\\Darksummoning\\DarkSummonTarget.mdl")
    call DestroyEffect(GetLastCreatedEffectBJ())
    else
    if(Trig_Trophies_and_Libation_and_Teron_Reset_Func001Func001Func001Func001C())then
    call ModifyHeroStat(bj_HEROSTAT_INT,gg_unit_Othr_0515,bj_MODIFYMETHOD_ADD,3)
    else
    endif
    endif
    endif
    endif
    endfunction
    function InitTrig_Trophies_and_Libation_and_Teron_Reset takes nothing returns nothing
    set gg_trg_Trophies_and_Libation_and_Teron_Reset=CreateTrigger()
    call DisableTrigger(gg_trg_Trophies_and_Libation_and_Teron_Reset)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Trophies_and_Libation_and_Teron_Reset,Player(0),EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Trophies_and_Libation_and_Teron_Reset,Player(1),EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Trophies_and_Libation_and_Teron_Reset,Player(2),EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Trophies_and_Libation_and_Teron_Reset,Player(3),EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Trophies_and_Libation_and_Teron_Reset,Player(5),EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Trophies_and_Libation_and_Teron_Reset,Player(6),EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Trophies_and_Libation_and_Teron_Reset,Player(7),EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Trophies_and_Libation_and_Teron_Reset,Player(8),EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddAction(gg_trg_Trophies_and_Libation_and_Teron_Reset,function Trig_Trophies_and_Libation_and_Teron_Reset_Actions)
    endfunction