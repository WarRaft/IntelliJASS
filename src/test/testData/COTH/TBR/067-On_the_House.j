function Trig_On_the_House_Conditions takes nothing returns boolean
    if(not(GetKillingUnitBJ()==gg_unit_Ucrl_0500))then
    return false
    endif
    return true
    endfunction
    function Trig_On_the_House_Actions takes nothing returns nothing
    set udg_TempPoint=GetUnitLoc(gg_unit_Ucrl_0500)
    call SetUnitPositionLoc(gg_unit_njks_0271,udg_TempPoint)
    call SetUnitAbilityLevelSwapped('A08Z',gg_unit_njks_0271,GetUnitAbilityLevelSwapped('A08Y',gg_unit_Ucrl_0500))
    call IssueImmediateOrder(gg_unit_njks_0271,"battleroar")
    call RemoveLocation(udg_TempPoint)
    call EnableTrigger(gg_trg_On_the_House_Damage)
    call DisableTrigger(GetTriggeringTrigger())
    call PlaySoundOnUnitBJ(gg_snd_HeroMountainKingPissed6,100,gg_unit_Ucrl_0500)
    call PolledWait(10.00)
    call EnableTrigger(GetTriggeringTrigger())
    call DisableTrigger(gg_trg_On_the_House_Damage)
    endfunction
    function InitTrig_On_the_House takes nothing returns nothing
    set gg_trg_On_the_House=CreateTrigger()
    call DisableTrigger(gg_trg_On_the_House)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_On_the_House,Player(4),EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_On_the_House,Player(9),EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_On_the_House,Player(10),EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_On_the_House,Player(11),EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_On_the_House,Player(PLAYER_NEUTRAL_AGGRESSIVE),EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_On_the_House,Condition(function Trig_On_the_House_Conditions))
    call TriggerAddAction(gg_trg_On_the_House,function Trig_On_the_House_Actions)
    endfunction