function Trig_Hail_of_Arrows_Deactivate_Actions takes nothing returns nothing
    set udg_HailCounter=1
    call PolledWait(0.90)
    call DisableTrigger(gg_trg_Hail_of_Arrows_Graphic)
    call DisableTrigger(gg_trg_Hail_of_Arrows_Damage)
    call DisableTrigger(GetTriggeringTrigger())
    call RemoveLocation(udg_HailTarget)
    endfunction
    function InitTrig_Hail_of_Arrows_Deactivate takes nothing returns nothing
    set gg_trg_Hail_of_Arrows_Deactivate=CreateTrigger()
    call DisableTrigger(gg_trg_Hail_of_Arrows_Deactivate)
    call TriggerRegisterUnitEvent(gg_trg_Hail_of_Arrows_Deactivate,gg_unit_Hamg_0499,EVENT_UNIT_SPELL_ENDCAST)
    call TriggerRegisterUnitEvent(gg_trg_Hail_of_Arrows_Deactivate,gg_unit_Hamg_0499,EVENT_UNIT_SPELL_FINISH)
    call TriggerAddAction(gg_trg_Hail_of_Arrows_Deactivate,function Trig_Hail_of_Arrows_Deactivate_Actions)
    endfunction