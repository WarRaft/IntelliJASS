function Trig_Horde_Altar_Select_Conditions takes nothing returns boolean
if(not(GetResearched()=='Rupm'))then
return false
endif
return true
endfunction
function Trig_Horde_Altar_Select_Func001C takes nothing returns boolean
if(not(GetOwningPlayer(GetResearchingUnit())==Player(4)))then
return false
endif
return true
endfunction
function Trig_Horde_Altar_Select_Func002C takes nothing returns boolean
if(not(GetOwningPlayer(GetResearchingUnit())==Player(9)))then
return false
endif
return true
endfunction
function Trig_Horde_Altar_Select_Func003C takes nothing returns boolean
if(not(GetOwningPlayer(GetResearchingUnit())==Player(10)))then
return false
endif
return true
endfunction
function Trig_Horde_Altar_Select_Func004C takes nothing returns boolean
if(not(GetOwningPlayer(GetResearchingUnit())==Player(11)))then
return false
endif
return true
endfunction
function Trig_Horde_Altar_Select_Actions takes nothing returns nothing
if(Trig_Horde_Altar_Select_Func001C())then
set udg_YellowAltar[5]=udg_YellowAltar[4]
set udg_YellowAltar[4]=udg_YellowAltar[3]
set udg_YellowAltar[3]=udg_YellowAltar[2]
set udg_YellowAltar[2]=udg_YellowAltar[1]
set udg_YellowAltar[1]=GetResearchingUnit()
call IssueImmediateOrderById(GetTriggerUnit(),851976)
return
else
endif
if(Trig_Horde_Altar_Select_Func002C())then
set udg_LightBlueAltar[5]=udg_LightBlueAltar[4]
set udg_LightBlueAltar[4]=udg_LightBlueAltar[3]
set udg_LightBlueAltar[3]=udg_LightBlueAltar[2]
set udg_LightBlueAltar[2]=udg_LightBlueAltar[1]
set udg_LightBlueAltar[1]=GetResearchingUnit()
call IssueImmediateOrderById(GetTriggerUnit(),851976)
return
else
endif
if(Trig_Horde_Altar_Select_Func003C())then
set udg_DarkGreenAltar[5]=udg_DarkGreenAltar[4]
set udg_DarkGreenAltar[4]=udg_DarkGreenAltar[3]
set udg_DarkGreenAltar[3]=udg_DarkGreenAltar[2]
set udg_DarkGreenAltar[2]=udg_DarkGreenAltar[1]
set udg_DarkGreenAltar[1]=GetResearchingUnit()
call IssueImmediateOrderById(GetTriggerUnit(),851976)
return
else
endif
if(Trig_Horde_Altar_Select_Func004C())then
set udg_BrownAltar[5]=udg_BrownAltar[4]
set udg_BrownAltar[4]=udg_BrownAltar[3]
set udg_BrownAltar[3]=udg_BrownAltar[2]
set udg_BrownAltar[2]=udg_BrownAltar[1]
set udg_BrownAltar[1]=GetResearchingUnit()
call IssueImmediateOrderById(GetTriggerUnit(),851976)
return
else
endif
endfunction
function InitTrig_Horde_Altar_Select takes nothing returns nothing
set gg_trg_Horde_Altar_Select=CreateTrigger()
call DisableTrigger(gg_trg_Horde_Altar_Select)
call TriggerRegisterPlayerUnitEventSimple(gg_trg_Horde_Altar_Select,Player(4),EVENT_PLAYER_UNIT_RESEARCH_START)
call TriggerRegisterPlayerUnitEventSimple(gg_trg_Horde_Altar_Select,Player(9),EVENT_PLAYER_UNIT_RESEARCH_START)
call TriggerRegisterPlayerUnitEventSimple(gg_trg_Horde_Altar_Select,Player(10),EVENT_PLAYER_UNIT_RESEARCH_START)
call TriggerRegisterPlayerUnitEventSimple(gg_trg_Horde_Altar_Select,Player(11),EVENT_PLAYER_UNIT_RESEARCH_START)
call TriggerAddCondition(gg_trg_Horde_Altar_Select,Condition(function Trig_Horde_Altar_Select_Conditions))
call TriggerAddAction(gg_trg_Horde_Altar_Select,function Trig_Horde_Altar_Select_Actions)
endfunction