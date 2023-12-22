function Trig_Hero_Revival_Reset_Func003Func001Func002Func001C takes nothing returns boolean
if(not(GetOwningPlayer(GetRevivingUnit())==Player(11)))then
return false
endif
return true
endfunction
function Trig_Hero_Revival_Reset_Func003Func001Func002C takes nothing returns boolean
if(not(GetOwningPlayer(GetRevivingUnit())==Player(10)))then
return false
endif
return true
endfunction
function Trig_Hero_Revival_Reset_Func003Func001C takes nothing returns boolean
if(not(GetOwningPlayer(GetRevivingUnit())==Player(9)))then
return false
endif
return true
endfunction
function Trig_Hero_Revival_Reset_Func003C takes nothing returns boolean
if(not(GetOwningPlayer(GetRevivingUnit())==Player(4)))then
return false
endif
return true
endfunction
function Trig_Hero_Revival_Reset_Actions takes nothing returns nothing
call SetUnitManaBJ(GetRevivingUnit(),(udg_ReviveMana[GetConvertedPlayerId(GetOwningPlayer(GetRevivingUnit()))]+(GetUnitStateSwap(UNIT_STATE_MAX_MANA,GetRevivingUnit())*0.20)))
if(Trig_Hero_Revival_Reset_Func003C())then
call DisableTrigger(gg_trg_Yellow_Altar_Death)
else
if(Trig_Hero_Revival_Reset_Func003Func001C())then
call DisableTrigger(gg_trg_Light_Blue_Altar_Death)
else
if(Trig_Hero_Revival_Reset_Func003Func001Func002C())then
call DisableTrigger(gg_trg_Dark_Green_Altar_Death)
else
if(Trig_Hero_Revival_Reset_Func003Func001Func002Func001C())then
call DisableTrigger(gg_trg_Brown_Altar_Death)
else
endif
endif
endif
endif
endfunction
function InitTrig_Hero_Revival_Reset takes nothing returns nothing
set gg_trg_Hero_Revival_Reset=CreateTrigger()
call TriggerRegisterAnyUnitEventBJ(gg_trg_Hero_Revival_Reset,EVENT_PLAYER_HERO_REVIVE_FINISH)
call TriggerAddAction(gg_trg_Hero_Revival_Reset,function Trig_Hero_Revival_Reset_Actions)
endfunction