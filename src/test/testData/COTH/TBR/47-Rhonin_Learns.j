 function Trig_Rhonin_Learns_Actions takes nothing returns nothing
    call CreateTextTagUnitBJ("",gg_unit_Hjai_0459,0,10,49.00,75.00,100.00,0)
    set udg_RhoninShieldText=GetLastCreatedTextTag()
    call DisableTrigger(GetTriggeringTrigger())
    endfunction
    function InitTrig_Rhonin_Learns takes nothing returns nothing
    set gg_trg_Rhonin_Learns=CreateTrigger()
    call TriggerAddAction(gg_trg_Rhonin_Learns,function Trig_Rhonin_Learns_Actions)
    endfunction