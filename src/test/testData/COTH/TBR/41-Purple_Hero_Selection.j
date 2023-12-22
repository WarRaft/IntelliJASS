function Trig_Purple_Hero_Selection_Func001Func001Func001Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Ewar'))then
    return false
    endif
    return true
    endfunction
    function Trig_Purple_Hero_Selection_Func001Func001Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Hjai'))then
    return false
    endif
    return true
    endfunction
    function Trig_Purple_Hero_Selection_Func001Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Hblm'))then
    return false
    endif
    return true
    endfunction
    function Trig_Purple_Hero_Selection_Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Hant'))then
    return false
    endif
    return true
    endfunction
    function Trig_Purple_Hero_Selection_Actions takes nothing returns nothing
    if(Trig_Purple_Hero_Selection_Func001C())then
    call RemoveUnit(GetTrainedUnit())
    set udg_TempPoint=GetRectCenter(gg_rct_Dalaran_Hero_Spawn)
    call SetUnitPositionLoc(gg_unit_Hant_0475,udg_TempPoint)
    call RemoveLocation(udg_TempPoint)
    call SetUnitOwner(gg_unit_Hant_0475,Player(3),true)
    call ShowUnitShow(gg_unit_Hant_0475)
    call TriggerRegisterUnitEvent(gg_trg_Antonidas_Starts,gg_unit_Hant_0475,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(gg_trg_Tranquility_Level,gg_unit_Hant_0475,EVENT_UNIT_HERO_SKILL)
    call SetPlayerHandicapXPBJ(Player(3),92.00)
    else
    if(Trig_Purple_Hero_Selection_Func001Func001C())then
    call RemoveUnit(GetTrainedUnit())
    set udg_TempPoint=GetRectCenter(gg_rct_Dalaran_Hero_Spawn)
    call SetUnitPositionLoc(gg_unit_Hblm_0508,udg_TempPoint)
    call RemoveLocation(udg_TempPoint)
    call SetUnitOwner(gg_unit_Hblm_0508,Player(3),true)
    call ShowUnitShow(gg_unit_Hblm_0508)
    call TriggerRegisterUnitEvent(gg_trg_Kael_Starts,gg_unit_Hblm_0508,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(gg_trg_Pyre_Reset,gg_unit_Hblm_0508,EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(gg_trg_Inferno_Level,gg_unit_Hblm_0508,EVENT_UNIT_HERO_SKILL)
    call SetPlayerHandicapXPBJ(Player(3),92.00)
    else
    if(Trig_Purple_Hero_Selection_Func001Func001Func001C())then
    call RemoveUnit(GetTrainedUnit())
    set udg_TempPoint=GetRectCenter(gg_rct_Dalaran_Hero_Spawn)
    call SetUnitPositionLoc(gg_unit_Hjai_0459,udg_TempPoint)
    call RemoveLocation(udg_TempPoint)
    call SetUnitOwner(gg_unit_Hjai_0459,Player(3),true)
    call ShowUnitShow(gg_unit_Hjai_0459)
    call TriggerRegisterUnitEvent(gg_trg_Rhonin_Starts,gg_unit_Hjai_0459,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(gg_trg_Rhonin_Learns,gg_unit_Hjai_0459,EVENT_UNIT_HERO_SKILL)
    call SetPlayerHandicapXPBJ(Player(3),99.00)
    else
    if(Trig_Purple_Hero_Selection_Func001Func001Func001Func001C())then
    call RemoveUnit(GetTrainedUnit())
    set udg_TempPoint=GetRectCenter(gg_rct_Dalaran_Hero_Spawn)
    call SetUnitPositionLoc(gg_unit_Ewar_0489,udg_TempPoint)
    call PlaySoundAtPointBJ(gg_snd_TyrandePissed5,100,udg_TempPoint,0)
    call RemoveLocation(udg_TempPoint)
    call SetUnitOwner(gg_unit_Ewar_0489,Player(3),true)
    call ShowUnitShow(gg_unit_Ewar_0489)
    call TriggerRegisterUnitEvent(gg_trg_Aegwynn_Starts,gg_unit_Ewar_0489,EVENT_UNIT_SPELL_EFFECT)
    call SetPlayerHandicapXPBJ(Player(3),92.00)
    else
    endif
    endif
    endif
    endif
    endfunction
    function InitTrig_Purple_Hero_Selection takes nothing returns nothing
    set gg_trg_Purple_Hero_Selection=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Purple_Hero_Selection,gg_unit_nmgv_0202,EVENT_UNIT_TRAIN_FINISH)
    call TriggerRegisterUnitEvent(gg_trg_Purple_Hero_Selection,gg_unit_n00P_0210,EVENT_UNIT_TRAIN_FINISH)
    call TriggerAddAction(gg_trg_Purple_Hero_Selection,function Trig_Purple_Hero_Selection_Actions)
    endfunction