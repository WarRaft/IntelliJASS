function Trig_Battle_Engine_Conditions takes nothing returns boolean
    if(not(GetResearched()=='Rhrt'))then
    return false
    endif
    return true
    endfunction
    function Trig_Battle_Engine_Func005002 takes nothing returns nothing
    call ReplaceUnitBJ(GetEnumUnit(),'hrtt',bj_UNIT_STATE_METHOD_RELATIVE)
    endfunction
    function Trig_Battle_Engine_Actions takes nothing returns nothing
    call SetPlayerUnitAvailableBJ('hmtt',false,Player(5))
    call SetPlayerUnitAvailableBJ('hrtt',true,Player(5))
    call ReplaceUnitBJ(gg_unit_harm_0256,'harm',bj_UNIT_STATE_METHOD_RELATIVE)
    set udg_Temp_UnitGroup=GetUnitsOfTypeIdAll('hmtt')
    call ForGroupBJ(udg_Temp_UnitGroup,function Trig_Battle_Engine_Func005002)
    call DestroyGroup(udg_Temp_UnitGroup)
    call SetPlayerTechMaxAllowedSwap('hrtt',5,Player(5))
    call DisableTrigger(GetTriggeringTrigger())
    endfunction
    function InitTrig_Battle_Engine takes nothing returns nothing
    set gg_trg_Battle_Engine=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Battle_Engine,Player(5),EVENT_PLAYER_UNIT_RESEARCH_FINISH)
    call TriggerAddCondition(gg_trg_Battle_Engine,Condition(function Trig_Battle_Engine_Conditions))
    call TriggerAddAction(gg_trg_Battle_Engine,function Trig_Battle_Engine_Actions)
    endfunction