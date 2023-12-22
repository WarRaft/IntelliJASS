function Trig_Alterac_Avenged_Actions takes nothing returns nothing
    call DisplayTextToForce(GetPlayersAllies(Player(0)),"Силы Альянса убили предательского лорда Перенольда и сожгли его крепость дотла!")
    endfunction
    function InitTrig_Alterac_Avenged takes nothing returns nothing
    set gg_trg_Alterac_Avenged=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Alterac_Avenged,gg_unit_h01X_0238,EVENT_UNIT_DEATH)
    call TriggerAddAction(gg_trg_Alterac_Avenged,function Trig_Alterac_Avenged_Actions)
    endfunction