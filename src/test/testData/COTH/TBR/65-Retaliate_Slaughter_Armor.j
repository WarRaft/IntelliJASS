function Trig_Retaliate_Slaughter_Armor_Func001Func004Func001001 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(gg_unit_Obla_0496,'ajen')==true)
    endfunction
    function Trig_Retaliate_Slaughter_Armor_Func001Func004Func001002 takes nothing returns boolean
    return(UnitHasItemOfTypeBJ(gg_unit_Obla_0496,'dsum')==true)
    endfunction
    function Trig_Retaliate_Slaughter_Armor_Func001Func004C takes nothing returns boolean
    if(not GetBooleanOr(Trig_Retaliate_Slaughter_Armor_Func001Func004Func001001(),Trig_Retaliate_Slaughter_Armor_Func001Func004Func001002()))then
    return false
    endif
    return true
    endfunction
    function Trig_Retaliate_Slaughter_Armor_Func001Func010Func001C takes nothing returns boolean
    if(not(udg_MaimCounter>2))then
    return false
    endif
    return true
    endfunction
    function Trig_Retaliate_Slaughter_Armor_Func001Func010Func002001 takes nothing returns boolean
    return(udg_MaimCounter==2)
    endfunction
    function Trig_Retaliate_Slaughter_Armor_Func001Func010Func002002 takes nothing returns boolean
    return(udg_MaimCounter==5)
    endfunction
    function Trig_Retaliate_Slaughter_Armor_Func001Func010C takes nothing returns boolean
    if(not GetBooleanOr(Trig_Retaliate_Slaughter_Armor_Func001Func010Func002001(),Trig_Retaliate_Slaughter_Armor_Func001Func010Func002002()))then
    return false
    endif
    if(not(GetRandomInt(1,4)==1))then
    return false
    endif
    return true
    endfunction
    function Trig_Retaliate_Slaughter_Armor_Func001Func011001 takes nothing returns boolean
    return(udg_MaimCounter==1)
    endfunction
    function Trig_Retaliate_Slaughter_Armor_Func001Func011002 takes nothing returns boolean
    return(udg_MaimCounter==4)
    endfunction
    function Trig_Retaliate_Slaughter_Armor_Func001C takes nothing returns boolean
    if(not GetBooleanOr(Trig_Retaliate_Slaughter_Armor_Func001Func011001(),Trig_Retaliate_Slaughter_Armor_Func001Func011002()))then
    return false
    endif
    return true
    endfunction
    function Trig_Retaliate_Slaughter_Armor_Actions takes nothing returns nothing
    if(Trig_Retaliate_Slaughter_Armor_Func001C())then
    set udg_Retaliate=GetEventDamage()
    call SetUnitLifeBJ(gg_unit_Obla_0496,(GetUnitStateSwap(UNIT_STATE_LIFE,gg_unit_Obla_0496)+udg_Retaliate))
    set udg_MaimCounter=(udg_MaimCounter+1)
    if(Trig_Retaliate_Slaughter_Armor_Func001Func004C())then
    call UnitAddAbilityBJ('A069',gg_unit_Obla_0496)
    call SetUnitAbilityLevelSwapped('A069',gg_unit_Obla_0496,GetUnitAbilityLevelSwapped('ACro',gg_unit_Obla_0496))
    else
    call UnitAddAbilityBJ('A0B7',gg_unit_Obla_0496)
    call SetUnitAbilityLevelSwapped('A0B7',gg_unit_Obla_0496,GetUnitAbilityLevelSwapped('ACro',gg_unit_Obla_0496))
    endif
    call UnitRemoveBuffBJ('B03G',gg_unit_Obla_0496)
    call PolledWait((2.00+(2.00*I2R(GetUnitAbilityLevelSwapped('ACro',gg_unit_Obla_0496)))))
    call UnitRemoveAbilityBJ('A0B7',gg_unit_Obla_0496)
    call UnitRemoveAbilityBJ('A069',gg_unit_Obla_0496)
    set udg_MaimCounter=(udg_MaimCounter-2)
    else
    if(Trig_Retaliate_Slaughter_Armor_Func001Func010C())then
    set udg_Retaliate=GetEventDamage()
    call SetUnitLifeBJ(gg_unit_Obla_0496,(GetUnitStateSwap(UNIT_STATE_LIFE,gg_unit_Obla_0496)+udg_Retaliate))
    else
    if(Trig_Retaliate_Slaughter_Armor_Func001Func010Func001C())then
    call SetUnitLifeBJ(gg_unit_Obla_0496,(GetUnitStateSwap(UNIT_STATE_LIFE,gg_unit_Obla_0496)+(0.25*GetEventDamage())))
    else
    endif
    endif
    endif
    endfunction
    function InitTrig_Retaliate_Slaughter_Armor takes nothing returns nothing
    set gg_trg_Retaliate_Slaughter_Armor=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Retaliate_Slaughter_Armor,gg_unit_Obla_0496,EVENT_UNIT_DAMAGED)
    call TriggerAddAction(gg_trg_Retaliate_Slaughter_Armor,function Trig_Retaliate_Slaughter_Armor_Actions)
    endfunction