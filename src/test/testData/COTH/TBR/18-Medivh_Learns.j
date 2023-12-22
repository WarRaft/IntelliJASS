function Trig_Medivh_Learns_Func001Func001C takes nothing returns boolean
    if(not(GetLearnedSkillBJ()=='A09J'))then
    return false
    endif
    return true
    endfunction
    function Trig_Medivh_Learns_Func001C takes nothing returns boolean
    if(not(GetLearnedSkillBJ()=='AOeq'))then
    return false
    endif
    return true
    endfunction
    function Trig_Medivh_Learns_Actions takes nothing returns nothing
    if(Trig_Medivh_Learns_Func001C())then
    call SetUnitAbilityLevelSwapped('A0AA',gg_unit_o00S_0248,GetUnitAbilityLevelSwapped('AOeq',gg_unit_N007_0522))
    else
    if(Trig_Medivh_Learns_Func001Func001C())then
    call SetUnitAbilityLevelSwapped('A09K',gg_unit_o00Z_0249,GetUnitAbilityLevelSwapped('A09J',gg_unit_N007_0522))
    else
    endif
    endif
    endfunction
    function InitTrig_Medivh_Learns takes nothing returns nothing
    set gg_trg_Medivh_Learns=CreateTrigger()
    call TriggerAddAction(gg_trg_Medivh_Learns,function Trig_Medivh_Learns_Actions)
    endfunction