 function Trig_Griselda_Dies_Actions takes nothing returns nothing
    set udg_TempPoint=GetUnitLoc(gg_unit_Ekee_0528)
    call PlaySoundAtPointBJ(gg_snd_AssassinDeath1,100,udg_TempPoint,0)
    call RemoveLocation(udg_TempPoint)
    call DestroyEffect(udg_EssenceSE)
    call DisableTrigger(gg_trg_Griselda_Heal)
    set udg_Essence=0
    set udg_EssenceCounter=0
    endfunction
    function InitTrig_Griselda_Dies takes nothing returns nothing
    set gg_trg_Griselda_Dies=CreateTrigger()
    call TriggerAddAction(gg_trg_Griselda_Dies,function Trig_Griselda_Dies_Actions)
    endfunction