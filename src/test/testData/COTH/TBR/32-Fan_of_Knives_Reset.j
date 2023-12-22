function Trig_Fan_of_Knives_Reset_Conditions takes nothing returns boolean
    if(not(IsUnitType(GetDyingUnit(),UNIT_TYPE_HERO)==true))then
    return false
    endif
    if(not(GetUnitTypeId(GetKillingUnitBJ())=='O00M'))then
    return false
    endif
    return true
    endfunction
    function Trig_Fan_of_Knives_Reset_Actions takes nothing returns nothing
    set udg_TempPoint=GetUnitLoc(GetKillingUnitBJ())
    call SetUnitPositionLoc(gg_unit_osw3_0435,udg_TempPoint)
    call RemoveLocation(udg_TempPoint)
    call SetUnitAbilityLevelSwapped('A0BA',gg_unit_osw3_0435,GetUnitAbilityLevelSwapped('A099',gg_unit_O00M_0518))
    call IssueImmediateOrder(gg_unit_osw3_0435,"thunderclap")
    call PlaySoundOnUnitBJ(gg_snd_FanOfKnives,100,gg_unit_O00M_0518)
    call DisableTrigger(GetTriggeringTrigger())
    call PolledWait(0.50)
    call EnableTrigger(GetTriggeringTrigger())
    endfunction
    function InitTrig_Fan_of_Knives_Reset takes nothing returns nothing
    set gg_trg_Fan_of_Knives_Reset=CreateTrigger()
    call DisableTrigger(gg_trg_Fan_of_Knives_Reset)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Fan_of_Knives_Reset,Player(0),EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Fan_of_Knives_Reset,Player(1),EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Fan_of_Knives_Reset,Player(2),EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Fan_of_Knives_Reset,Player(3),EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Fan_of_Knives_Reset,Player(5),EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Fan_of_Knives_Reset,Player(6),EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Fan_of_Knives_Reset,Player(7),EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Fan_of_Knives_Reset,Player(8),EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_Fan_of_Knives_Reset,Condition(function Trig_Fan_of_Knives_Reset_Conditions))
    call TriggerAddAction(gg_trg_Fan_of_Knives_Reset,function Trig_Fan_of_Knives_Reset_Actions)
    endfunction