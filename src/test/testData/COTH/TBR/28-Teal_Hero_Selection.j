function Trig_Teal_Hero_Selection_Func001Func001Func001Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Emoo'))then
    return false
    endif
    return true
    endfunction
    function Trig_Teal_Hero_Selection_Func001Func001Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Hhkl'))then
    return false
    endif
    return true
    endfunction
    function Trig_Teal_Hero_Selection_Func001Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Hapm'))then
    return false
    endif
    return true
    endfunction
    function Trig_Teal_Hero_Selection_Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='H01B'))then
    return false
    endif
    return true
    endfunction
    function Trig_Teal_Hero_Selection_Actions takes nothing returns nothing
    if(Trig_Teal_Hero_Selection_Func001C())then
    call RemoveUnit(GetTrainedUnit())
    set udg_TempPoint=GetRectCenter(gg_rct_Kul_Tiras_Hero_Spawn)
    call SetUnitPositionLoc(gg_unit_H01B_0507,udg_TempPoint)
    call RemoveLocation(udg_TempPoint)
    call SetUnitOwner(gg_unit_H01B_0507,Player(2),true)
    call ShowUnitShow(gg_unit_H01B_0507)
    call TriggerRegisterUnitEvent(gg_trg_Derek_Starts,gg_unit_H01B_0507,EVENT_UNIT_SPELL_EFFECT)
    call SetPlayerHandicapXPBJ(Player(2),92.00)
    else
    if(Trig_Teal_Hero_Selection_Func001Func001C())then
    call RemoveUnit(GetTrainedUnit())
    set udg_TempPoint=GetRectCenter(gg_rct_Kul_Tiras_Hero_Spawn)
    call SetUnitPositionLoc(gg_unit_Hapm_0503,udg_TempPoint)
    call RemoveLocation(udg_TempPoint)
    call SetUnitOwner(gg_unit_Hapm_0503,Player(2),true)
    call ShowUnitShow(gg_unit_Hapm_0503)
    call TriggerRegisterUnitEvent(gg_trg_Daelin_Starts,gg_unit_Hapm_0503,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(gg_trg_Daelin_Learns,gg_unit_Hapm_0503,EVENT_UNIT_HERO_SKILL)
    call SetPlayerHandicapXPBJ(Player(2),99.00)
    else
    if(Trig_Teal_Hero_Selection_Func001Func001Func001C())then
    call RemoveUnit(GetTrainedUnit())
    set udg_TempPoint=GetRectCenter(gg_rct_Kul_Tiras_Hero_Spawn)
    call SetUnitPositionLoc(gg_unit_Hhkl_0486,udg_TempPoint)
    call RemoveLocation(udg_TempPoint)
    call SetUnitOwner(gg_unit_Hhkl_0486,Player(2),true)
    call ShowUnitShow(gg_unit_Hhkl_0486)
    call TriggerRegisterUnitEvent(gg_trg_Navigation_Bonus,gg_unit_Hhkl_0486,EVENT_UNIT_HERO_SKILL)
    call TriggerRegisterUnitEvent(gg_trg_Net,gg_unit_Hhkl_0486,EVENT_UNIT_SPELL_CAST)
    call TriggerRegisterUnitEvent(gg_trg_Duke_Starts,gg_unit_Hhkl_0486,EVENT_UNIT_SPELL_EFFECT)
    call SetPlayerHandicapXPBJ(Player(2),99.00)
    else
    if(Trig_Teal_Hero_Selection_Func001Func001Func001Func001C())then
    call RemoveUnit(GetTrainedUnit())
    set udg_TempPoint=GetRectCenter(gg_rct_Kul_Tiras_Hero_Spawn)
    call SetUnitPositionLoc(gg_unit_Emoo_0488,udg_TempPoint)
    call PlaySoundAtPointBJ(gg_snd_ShandrisYesAttack1,100,udg_TempPoint,0)
    call RemoveLocation(udg_TempPoint)
    call SetUnitOwner(gg_unit_Emoo_0488,Player(2),true)
    call ShowUnitShow(gg_unit_Emoo_0488)
    call TriggerRegisterUnitEvent(gg_trg_Mishan_Starts,gg_unit_Emoo_0488,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(gg_trg_Mishan_Attack_Start,gg_unit_Emoo_0488,EVENT_UNIT_SPELL_CAST)
    call TriggerRegisterUnitEvent(gg_trg_Piercing_Blade,gg_unit_Emoo_0488,EVENT_UNIT_HERO_SKILL)
    call TriggerRegisterUnitEvent(gg_trg_Mishan_Stop_Abuse,gg_unit_Emoo_0488,EVENT_UNIT_ISSUED_ORDER)
    call UnitAddAbilityBJ('ACua',gg_unit_o008_0490)
    call SetPlayerHandicapXPBJ(Player(2),99.00)
    else
    endif
    endif
    endif
    endif
    endfunction
    function InitTrig_Teal_Hero_Selection takes nothing returns nothing
    set gg_trg_Teal_Hero_Selection=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Teal_Hero_Selection,gg_unit_n00A_0168,EVENT_UNIT_TRAIN_FINISH)
    call TriggerRegisterUnitEvent(gg_trg_Teal_Hero_Selection,gg_unit_n00P_0157,EVENT_UNIT_TRAIN_FINISH)
    call TriggerAddAction(gg_trg_Teal_Hero_Selection,function Trig_Teal_Hero_Selection_Actions)
    endfunction