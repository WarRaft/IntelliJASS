function Trig_Bombardment_On_Actions takes nothing returns nothing
    call IssuePointOrderLoc(udg_BroadsideCaster,"attackground",PolarProjectionBJ(udg_BroadsideTarget,GetRandomReal(0,325.00),GetRandomReal(0,360.00)))
    endfunction
    function InitTrig_Bombardment_On takes nothing returns nothing
    set gg_trg_Bombardment_On=CreateTrigger()
    call DisableTrigger(gg_trg_Bombardment_On)
    call TriggerRegisterTimerEventPeriodic(gg_trg_Bombardment_On,0.50)
    call TriggerAddAction(gg_trg_Bombardment_On,function Trig_Bombardment_On_Actions)
    endfunction