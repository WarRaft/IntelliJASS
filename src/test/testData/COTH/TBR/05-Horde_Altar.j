function Trig_Horde_Altar_Func001C takes nothing returns boolean
if(not(GetUnitTypeId(GetConstructedStructure())=='utom'))then
return false
endif
return true
endfunction
function Trig_Horde_Altar_Func002Func001Func007Func007C takes nothing returns boolean
if(not(GetOwningPlayer(GetConstructedStructure())==Player(11)))then
return false
endif
return true
endfunction
function Trig_Horde_Altar_Func002Func001Func007C takes nothing returns boolean
if(not(GetOwningPlayer(GetConstructedStructure())==Player(10)))then
return false
endif
return true
endfunction
function Trig_Horde_Altar_Func002Func001C takes nothing returns boolean
if(not(GetOwningPlayer(GetConstructedStructure())==Player(9)))then
return false
endif
return true
endfunction
function Trig_Horde_Altar_Func002C takes nothing returns boolean
if(not(GetUnitTypeId(GetConstructedStructure())=='oalt'))then
return false
endif
return true
endfunction
function Trig_Horde_Altar_Actions takes nothing returns nothing
if(Trig_Horde_Altar_Func001C())then
set udg_YellowAltar[5]=udg_YellowAltar[4]
set udg_YellowAltar[4]=udg_YellowAltar[3]
set udg_YellowAltar[3]=udg_YellowAltar[2]
set udg_YellowAltar[2]=udg_YellowAltar[1]
set udg_YellowAltar[1]=GetConstructedStructure()
return
else
endif
if(Trig_Horde_Altar_Func002C())then
if(Trig_Horde_Altar_Func002Func001C())then
set udg_LightBlueAltar[5]=udg_LightBlueAltar[4]
set udg_LightBlueAltar[4]=udg_LightBlueAltar[3]
set udg_LightBlueAltar[3]=udg_LightBlueAltar[2]
set udg_LightBlueAltar[2]=udg_LightBlueAltar[1]
set udg_LightBlueAltar[1]=GetConstructedStructure()
return
else
if(Trig_Horde_Altar_Func002Func001Func007C())then
set udg_DarkGreenAltar[5]=udg_DarkGreenAltar[4]
set udg_DarkGreenAltar[4]=udg_DarkGreenAltar[3]
set udg_DarkGreenAltar[3]=udg_DarkGreenAltar[2]
set udg_DarkGreenAltar[2]=udg_DarkGreenAltar[1]
set udg_DarkGreenAltar[1]=GetConstructedStructure()
return
else
if(Trig_Horde_Altar_Func002Func001Func007Func007C())then
set udg_BrownAltar[5]=udg_BrownAltar[4]
set udg_BrownAltar[4]=udg_BrownAltar[3]
set udg_BrownAltar[3]=udg_BrownAltar[2]
set udg_BrownAltar[2]=udg_BrownAltar[1]
set udg_BrownAltar[1]=GetConstructedStructure()
return
else
endif
endif
endif
else
endif
endfunction
function InitTrig_Horde_Altar takes nothing returns nothing
set gg_trg_Horde_Altar=CreateTrigger()
call TriggerRegisterPlayerUnitEventSimple(gg_trg_Horde_Altar,Player(4),EVENT_PLAYER_UNIT_CONSTRUCT_FINISH)
call TriggerRegisterPlayerUnitEventSimple(gg_trg_Horde_Altar,Player(9),EVENT_PLAYER_UNIT_CONSTRUCT_FINISH)
call TriggerRegisterPlayerUnitEventSimple(gg_trg_Horde_Altar,Player(10),EVENT_PLAYER_UNIT_CONSTRUCT_FINISH)
call TriggerRegisterPlayerUnitEventSimple(gg_trg_Horde_Altar,Player(11),EVENT_PLAYER_UNIT_CONSTRUCT_FINISH)
call TriggerAddAction(gg_trg_Horde_Altar,function Trig_Horde_Altar_Actions)
endfunction