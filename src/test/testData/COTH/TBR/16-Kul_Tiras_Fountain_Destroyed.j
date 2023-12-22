function Trig_Kul_Tiras_Fountain_Destroyed_Conditions takes nothing returns boolean
    if(not(IsUnitAliveBJ(gg_unit_hgtw_0162)==false))then
    return false
    endif
    if(not(IsUnitAliveBJ(gg_unit_hgtw_0161)==false))then
    return false
    endif
    return true
    endfunction
    function Trig_Kul_Tiras_Fountain_Destroyed_Actions takes nothing returns nothing
    set udg_TempPoint=GetDestructableLoc(gg_dest_IOt0_4291)
    call RemoveDestructable(gg_dest_IOt0_4291)
    call CreateDestructableLoc('B002',udg_TempPoint,GetRandomDirectionDeg(),0.80,0)
    call RemoveLocation(udg_TempPoint)
    endfunction
    function InitTrig_Kul_Tiras_Fountain_Destroyed takes nothing returns nothing
    set gg_trg_Kul_Tiras_Fountain_Destroyed=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Kul_Tiras_Fountain_Destroyed,gg_unit_nvlw_0542,EVENT_UNIT_DEATH)
    call TriggerAddCondition(gg_trg_Kul_Tiras_Fountain_Destroyed,Condition(function Trig_Kul_Tiras_Fountain_Destroyed_Conditions))
    call TriggerAddAction(gg_trg_Kul_Tiras_Fountain_Destroyed,function Trig_Kul_Tiras_Fountain_Destroyed_Actions)
    endfunction