function Trig_Citadel_Guard_Embued_Shields_Upgrade_Conditions takes nothing returns boolean
    if(not(GetResearched()=='Rers'))then
    return false
    endif
    return true
    endfunction
    function Trig_Citadel_Guard_Embued_Shields_Upgrade_Func002002 takes nothing returns nothing
    call UnitAddAbilityBJ('A08I',GetEnumUnit())
    endfunction
    function Trig_Citadel_Guard_Embued_Shields_Upgrade_Actions takes nothing returns nothing
    set udg_Temp_UnitGroup=GetUnitsOfTypeIdAll('hcth')
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Citadel_Guard_Embued_Shields_Upgrade_Func002002)
    call DestroyGroup(udg_Temp_UnitGroup)
    call EnableTrigger(gg_trg_Citadel_Guard_Embued_Shields_Training)
    call DisableTrigger(GetTriggeringTrigger())
    endfunction
    function InitTrig_Citadel_Guard_Embued_Shields_Upgrade takes nothing returns nothing
    set gg_trg_Citadel_Guard_Embued_Shields_Upgrade=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Citadel_Guard_Embued_Shields_Upgrade,Player(3),EVENT_PLAYER_UNIT_RESEARCH_FINISH)
    call TriggerAddCondition(gg_trg_Citadel_Guard_Embued_Shields_Upgrade,Condition(function Trig_Citadel_Guard_Embued_Shields_Upgrade_Conditions))
    call TriggerAddAction(gg_trg_Citadel_Guard_Embued_Shields_Upgrade,function Trig_Citadel_Guard_Embued_Shields_Upgrade_Actions)
    endfunction