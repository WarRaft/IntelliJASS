function Trig_Dark_Portal_Vulnerable_Actions takes nothing returns nothing
    call DisableTrigger(gg_trg_Blackrock_Warning)
    call SetUnitInvulnerable(gg_unit_ndmg_0236,false)
    call DisplayTextToForce(GetPlayersAllies(Player(0)),"Blackrock Spire has been reduced to rubble! Now, destroy the Dark Portal and end this nightmare!")
    call DisplayTextToForce(GetPlayersAllies(Player(4)),"Blackrock Spire has been lost!  Keep the human slime away from the Dark Portal!")
    call EnableTrigger(gg_trg_Dark_Portal_Warning)
    endfunction
    function InitTrig_Dark_Portal_Vulnerable takes nothing returns nothing
    set gg_trg_Dark_Portal_Vulnerable=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Dark_Portal_Vulnerable,gg_unit_otto_0421,EVENT_UNIT_DEATH)
    call TriggerAddAction(gg_trg_Dark_Portal_Vulnerable,function Trig_Dark_Portal_Vulnerable_Actions)
    endfunction