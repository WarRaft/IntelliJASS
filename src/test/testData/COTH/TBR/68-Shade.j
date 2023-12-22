function Trig_Shade_Conditions takes nothing returns boolean
    if(not(GetUnitTypeId(GetTriggerUnit())=='uaco'))then
    return false
    endif
    return true
    endfunction
    function Trig_Shade_Func002Func002Func002001001 takes nothing returns boolean
    return(GetFilterPlayer()==Player(4))
    endfunction
    function Trig_Shade_Func002Func002C takes nothing returns boolean
    if(not(udg_ShadeText<1.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Shade_Func002C takes nothing returns boolean
    if(not(udg_Shade<2.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Shade_Actions takes nothing returns nothing
    call SetUnitOwner(GetSoldUnit(),Player(4),true)
    if(Trig_Shade_Func002C())then
    call KillUnit(GetTriggerUnit())
    set udg_Shade=(udg_Shade+1)
    else
    call RemoveUnit(GetSoldUnit())
    if(Trig_Shade_Func002Func002C())then
    call DisplayTextToForce(GetPlayersMatching(Condition(function Trig_Shade_Func002Func002Func002001001)),"|c00FFD700You may only have two Shades.|r ")
    set udg_ShadeText=1.00
    else
    endif
    endif
    endfunction
    function InitTrig_Shade takes nothing returns nothing
    set gg_trg_Shade=CreateTrigger()
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Shade,Player(4),EVENT_PLAYER_UNIT_SELL)
    call TriggerAddCondition(gg_trg_Shade,Condition(function Trig_Shade_Conditions))
    call TriggerAddAction(gg_trg_Shade,function Trig_Shade_Actions)
    endfunction