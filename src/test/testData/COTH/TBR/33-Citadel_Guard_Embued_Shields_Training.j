function Trig_Citadel_Guard_Embued_Shields_Training_Conditions takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='hcth'))then
    return false
    endif
    return true
    endfunction
    function Trig_Citadel_Guard_Embued_Shields_Training_Actions takes nothing returns nothing
    call UnitAddAbilityBJ('A08I',GetTrainedUnit())
    endfunction
    function InitTrig_Citadel_Guard_Embued_Shields_Training takes nothing returns nothing
    set gg_trg_Citadel_Guard_Embued_Shields_Training=CreateTrigger()
    call DisableTrigger(gg_trg_Citadel_Guard_Embued_Shields_Training)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Citadel_Guard_Embued_Shields_Training,Player(3),EVENT_PLAYER_UNIT_TRAIN_FINISH)
    call TriggerAddCondition(gg_trg_Citadel_Guard_Embued_Shields_Training,Condition(function Trig_Citadel_Guard_Embued_Shields_Training_Conditions))
    call TriggerAddAction(gg_trg_Citadel_Guard_Embued_Shields_Training,function Trig_Citadel_Guard_Embued_Shields_Training_Actions)
    endfunction