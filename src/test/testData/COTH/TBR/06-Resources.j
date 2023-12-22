function Trig_Resources_Func001A takes nothing returns nothing
    call AdjustPlayerStateBJ(25,GetEnumPlayer(),PLAYER_STATE_RESOURCE_GOLD)
    endfunction
    function Trig_Resources_Func006A takes nothing returns nothing
    call AdjustPlayerStateBJ(25,GetEnumPlayer(),PLAYER_STATE_RESOURCE_GOLD)
    endfunction
    function Trig_Resources_Func007Func001C takes nothing returns boolean
    if(not(udg_ThroneCount>=6.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Resources_Func007Func003C takes nothing returns boolean
    if(not(udg_ThroneCount>=5.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Resources_Func007C takes nothing returns boolean
    if(not(IsUnitAliveBJ(gg_unit_n00O_0016)==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Resources_Func008Func001C takes nothing returns boolean
    if(not(udg_ThroneCount>=6.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Resources_Func008Func003C takes nothing returns boolean
    if(not(udg_ThroneCount>=5.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Resources_Func008C takes nothing returns boolean
    if(not(IsUnitAliveBJ(gg_unit_n00R_0492)==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Resources_Func009Func001C takes nothing returns boolean
    if(not(udg_ThroneCount>=6.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Resources_Func009Func003C takes nothing returns boolean
    if(not(udg_ThroneCount>=5.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Resources_Func009C takes nothing returns boolean
    if(not(IsUnitAliveBJ(gg_unit_halt_0257)==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Resources_Func010Func001C takes nothing returns boolean
    if(not(udg_ThroneCount>=6.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Resources_Func010Func003C takes nothing returns boolean
    if(not(udg_ThroneCount>=5.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Resources_Func010C takes nothing returns boolean
    if(not(IsUnitAliveBJ(gg_unit_n00A_0168)==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Resources_Func011Func001C takes nothing returns boolean
    if(not(udg_ThroneCount>=6.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Resources_Func011Func003C takes nothing returns boolean
    if(not(udg_ThroneCount>=5.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Resources_Func011C takes nothing returns boolean
    if(not(IsUnitAliveBJ(gg_unit_n00V_0272)==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Resources_Func012Func001C takes nothing returns boolean
    if(not(udg_ThroneCount>=6.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Resources_Func012Func003C takes nothing returns boolean
    if(not(udg_ThroneCount>=5.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Resources_Func012C takes nothing returns boolean
    if(not(IsUnitAliveBJ(gg_unit_n00S_0289)==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Resources_Func013Func001C takes nothing returns boolean
    if(not(udg_ThroneCount>=6.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Resources_Func013Func003C takes nothing returns boolean
    if(not(udg_ThroneCount>=5.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Resources_Func013C takes nothing returns boolean
    if(not(IsUnitAliveBJ(gg_unit_hkee_0203)==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Resources_Func014Func001C takes nothing returns boolean
    if(not(udg_ThroneCount>=6.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Resources_Func014Func003C takes nothing returns boolean
    if(not(udg_ThroneCount>=5.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Resources_Func014C takes nothing returns boolean
    if(not(IsUnitAliveBJ(gg_unit_n00T_0340)==true))then
    return false
    endif
    return true
    endfunction
    function Trig_Resources_Actions takes nothing returns nothing
    call ForForce(udg_HordeItem,function Trig_Resources_Func001A)
    call AdjustPlayerStateBJ(300,Player(4),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(300,Player(9),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(300,Player(10),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(300,Player(11),PLAYER_STATE_RESOURCE_LUMBER)
    call ForForce(udg_Alliance,function Trig_Resources_Func006A)
    if(Trig_Resources_Func007C())then
    if(Trig_Resources_Func007Func003C())then
    call AdjustPlayerStateBJ(170,Player(0),PLAYER_STATE_RESOURCE_LUMBER)
    else
    call AdjustPlayerStateBJ(140,Player(0),PLAYER_STATE_RESOURCE_LUMBER)
    endif
    else
    if(Trig_Resources_Func007Func001C())then
    call AdjustPlayerStateBJ(50,Player(0),PLAYER_STATE_RESOURCE_LUMBER)
    else
    call AdjustPlayerStateBJ((110-(R2I(udg_ThroneCount)*10)),Player(0),PLAYER_STATE_RESOURCE_LUMBER)
    endif
    endif
    if(Trig_Resources_Func008C())then
    if(Trig_Resources_Func008Func003C())then
    call AdjustPlayerStateBJ(170,Player(1),PLAYER_STATE_RESOURCE_LUMBER)
    else
    call AdjustPlayerStateBJ(140,Player(1),PLAYER_STATE_RESOURCE_LUMBER)
    endif
    else
    if(Trig_Resources_Func008Func001C())then
    call AdjustPlayerStateBJ(50,Player(1),PLAYER_STATE_RESOURCE_LUMBER)
    else
    call AdjustPlayerStateBJ((110-(R2I(udg_ThroneCount)*10)),Player(1),PLAYER_STATE_RESOURCE_LUMBER)
    endif
    endif
    if(Trig_Resources_Func009C())then
    if(Trig_Resources_Func009Func003C())then
    call AdjustPlayerStateBJ(170,Player(5),PLAYER_STATE_RESOURCE_LUMBER)
    else
    call AdjustPlayerStateBJ(140,Player(5),PLAYER_STATE_RESOURCE_LUMBER)
    endif
    else
    if(Trig_Resources_Func009Func001C())then
    call AdjustPlayerStateBJ(50,Player(5),PLAYER_STATE_RESOURCE_LUMBER)
    else
    call AdjustPlayerStateBJ((110-(R2I(udg_ThroneCount)*10)),Player(5),PLAYER_STATE_RESOURCE_LUMBER)
    endif
    endif
    if(Trig_Resources_Func010C())then
    if(Trig_Resources_Func010Func003C())then
    call AdjustPlayerStateBJ(170,Player(2),PLAYER_STATE_RESOURCE_LUMBER)
    else
    call AdjustPlayerStateBJ(140,Player(2),PLAYER_STATE_RESOURCE_LUMBER)
    endif
    else
    if(Trig_Resources_Func010Func001C())then
    call AdjustPlayerStateBJ(50,Player(2),PLAYER_STATE_RESOURCE_LUMBER)
    else
    call AdjustPlayerStateBJ((110-(R2I(udg_ThroneCount)*10)),Player(2),PLAYER_STATE_RESOURCE_LUMBER)
    endif
    endif
    if(Trig_Resources_Func011C())then
    if(Trig_Resources_Func011Func003C())then
    call AdjustPlayerStateBJ(170,Player(6),PLAYER_STATE_RESOURCE_LUMBER)
    else
    call AdjustPlayerStateBJ(140,Player(6),PLAYER_STATE_RESOURCE_LUMBER)
    endif
    else
    if(Trig_Resources_Func011Func001C())then
    call AdjustPlayerStateBJ(50,Player(6),PLAYER_STATE_RESOURCE_LUMBER)
    else
    call AdjustPlayerStateBJ((110-(R2I(udg_ThroneCount)*10)),Player(6),PLAYER_STATE_RESOURCE_LUMBER)
    endif
    endif
    if(Trig_Resources_Func012C())then
    if(Trig_Resources_Func012Func003C())then
    call AdjustPlayerStateBJ(170,Player(7),PLAYER_STATE_RESOURCE_LUMBER)
    else
    call AdjustPlayerStateBJ(140,Player(7),PLAYER_STATE_RESOURCE_LUMBER)
    endif
    else
    if(Trig_Resources_Func012Func001C())then
    call AdjustPlayerStateBJ(50,Player(7),PLAYER_STATE_RESOURCE_LUMBER)
    else
    call AdjustPlayerStateBJ((110-(R2I(udg_ThroneCount)*10)),Player(7),PLAYER_STATE_RESOURCE_LUMBER)
    endif
    endif
    if(Trig_Resources_Func013C())then
    if(Trig_Resources_Func013Func003C())then
    call AdjustPlayerStateBJ(170,Player(3),PLAYER_STATE_RESOURCE_LUMBER)
    else
    call AdjustPlayerStateBJ(140,Player(3),PLAYER_STATE_RESOURCE_LUMBER)
    endif
    else
    if(Trig_Resources_Func013Func001C())then
    call AdjustPlayerStateBJ(50,Player(3),PLAYER_STATE_RESOURCE_LUMBER)
    else
    call AdjustPlayerStateBJ((110-(R2I(udg_ThroneCount)*10)),Player(3),PLAYER_STATE_RESOURCE_LUMBER)
    endif
    endif
    if(Trig_Resources_Func014C())then
    if(Trig_Resources_Func014Func003C())then
    call AdjustPlayerStateBJ(170,Player(8),PLAYER_STATE_RESOURCE_LUMBER)
    else
    call AdjustPlayerStateBJ(140,Player(8),PLAYER_STATE_RESOURCE_LUMBER)
    endif
    else
    if(Trig_Resources_Func014Func001C())then
    call AdjustPlayerStateBJ(50,Player(8),PLAYER_STATE_RESOURCE_LUMBER)
    else
    call AdjustPlayerStateBJ((110-(R2I(udg_ThroneCount)*10)),Player(8),PLAYER_STATE_RESOURCE_LUMBER)
    endif
    endif
    endfunction
    function InitTrig_Resources takes nothing returns nothing
    set gg_trg_Resources=CreateTrigger()
    call TriggerRegisterTimerEventPeriodic(gg_trg_Resources,10.00)
    call TriggerAddAction(gg_trg_Resources,function Trig_Resources_Actions)
    endfunction