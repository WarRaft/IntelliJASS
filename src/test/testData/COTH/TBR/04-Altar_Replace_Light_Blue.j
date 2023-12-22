function Trig_Altar_Replace_Light_Blue_Func008Func001Func001Func001Func001Func001Func001Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Orex'))then
    return false
    endif
    return true
    endfunction
    function Trig_Altar_Replace_Light_Blue_Func008Func001Func001Func001Func001Func001Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Orkn'))then
    return false
    endif
    return true
    endfunction
    function Trig_Altar_Replace_Light_Blue_Func008Func001Func001Func001Func001Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Ofar'))then
    return false
    endif
    return true
    endfunction
    function Trig_Altar_Replace_Light_Blue_Func008Func001Func001Func001Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Othr'))then
    return false
    endif
    return true
    endfunction
    function Trig_Altar_Replace_Light_Blue_Func008Func001Func001Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Ntin'))then
    return false
    endif
    return true
    endfunction
    function Trig_Altar_Replace_Light_Blue_Func008Func001Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Otch'))then
    return false
    endif
    return true
    endfunction
    function Trig_Altar_Replace_Light_Blue_Func008Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Ogld'))then
    return false
    endif
    return true
    endfunction
    function Trig_Altar_Replace_Light_Blue_Func008C takes nothing returns boolean
    if(not(GetTriggerUnit()==gg_unit_o005_0381))then
    return false
    endif
    return true
    endfunction
    function Trig_Altar_Replace_Light_Blue_Func009Func001Func001Func001Func001Func001Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Odrt'))then
    return false
    endif
    return true
    endfunction
    function Trig_Altar_Replace_Light_Blue_Func009Func001Func001Func001Func001Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Opgh'))then
    return false
    endif
    return true
    endfunction
    function Trig_Altar_Replace_Light_Blue_Func009Func001Func001Func001Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='O00M'))then
    return false
    endif
    return true
    endfunction
    function Trig_Altar_Replace_Light_Blue_Func009Func001Func001Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Obla'))then
    return false
    endif
    return true
    endfunction
    function Trig_Altar_Replace_Light_Blue_Func009Func001Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Osam'))then
    return false
    endif
    return true
    endfunction
    function Trig_Altar_Replace_Light_Blue_Func009Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Ekee'))then
    return false
    endif
    return true
    endfunction
    function Trig_Altar_Replace_Light_Blue_Func009C takes nothing returns boolean
    if(not(GetTriggerUnit()==gg_unit_o00P_0387))then
    return false
    endif
    return true
    endfunction
    function Trig_Altar_Replace_Light_Blue_Func010Func001Func001Func001Func001Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Nbbc'))then
    return false
    endif
    return true
    endfunction
    function Trig_Altar_Replace_Light_Blue_Func010Func001Func001Func001Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Nsjs'))then
    return false
    endif
    return true
    endfunction
    function Trig_Altar_Replace_Light_Blue_Func010Func001Func001Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Ocbh'))then
    return false
    endif
    return true
    endfunction
    function Trig_Altar_Replace_Light_Blue_Func010Func001Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Nbst'))then
    return false
    endif
    return true
    endfunction
    function Trig_Altar_Replace_Light_Blue_Func010Func001C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Ogrh'))then
    return false
    endif
    return true
    endfunction
    function Trig_Altar_Replace_Light_Blue_Func010C takes nothing returns boolean
    if(not(GetTriggerUnit()==gg_unit_o00O_0388))then
    return false
    endif
    return true
    endfunction
    function Trig_Altar_Replace_Light_Blue_Func016C takes nothing returns boolean
    if(not(GetUnitTypeId(GetTrainedUnit())=='Ofar'))then
    return false
    endif
    if(not(GetUnitTypeId(GetTrainedUnit())=='Otch'))then
    return false
    endif
    if(not(GetUnitTypeId(GetTrainedUnit())=='Orkn'))then
    return false
    endif
    if(not(GetUnitTypeId(GetTrainedUnit())=='Othr'))then
    return false
    endif
    if(not(GetUnitTypeId(GetTrainedUnit())=='Odrt'))then
    return false
    endif
    if(not(GetUnitTypeId(GetTrainedUnit())=='Ogld'))then
    return false
    endif
    if(not(GetUnitTypeId(GetTrainedUnit())=='Ntin'))then
    return false
    endif
    return true
    endfunction
    function Trig_Altar_Replace_Light_Blue_Actions takes nothing returns nothing
    set udg_TempPoint=GetRandomLocInRect(gg_rct_Bleeding_Hollow_Hero_Summon_Area)
    call PanCameraToTimedLocForPlayer(GetOwningPlayer(GetTrainedUnit()),udg_TempPoint,0)
    call RemoveUnit(GetTrainedUnit())
    set udg_HordeHero=(udg_HordeHero+1)
    if(Trig_Altar_Replace_Light_Blue_Func008C())then
    if(Trig_Altar_Replace_Light_Blue_Func008Func001C())then
    call SetUnitPositionLoc(gg_unit_Ogld_0530,udg_TempPoint)
    call SetUnitOwner(gg_unit_Ogld_0530,Player(9),true)
    call ShowUnitShow(gg_unit_Ogld_0530)
    call SelectUnitForPlayerSingle(gg_unit_Ogld_0530,Player(9))
    call TriggerRegisterUnitEvent(gg_trg_Teron_Starts,gg_unit_Ogld_0530,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(gg_trg_Teron_Learns,gg_unit_Ogld_0530,EVENT_UNIT_HERO_SKILL)
    
    
    
    call EnableTrigger(gg_trg_Trophies_and_Libation_and_Teron_Reset)
    else
    if(Trig_Altar_Replace_Light_Blue_Func008Func001Func001C())then
    call SetUnitPositionLoc(gg_unit_Otch_0529,udg_TempPoint)
    call SetUnitOwner(gg_unit_Otch_0529,Player(9),true)
    call ShowUnitShow(gg_unit_Otch_0529)
    call SelectUnitForPlayerSingle(gg_unit_Otch_0529,Player(9))
    call TriggerRegisterUnitEvent(gg_trg_Zuluhed_Starts,gg_unit_Otch_0529,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Hellfire_Blast,Player(9),EVENT_PLAYER_UNIT_SPELL_EFFECT)
    
    
    
    else
    if(Trig_Altar_Replace_Light_Blue_Func008Func001Func001Func001C())then
    call SetUnitPositionLoc(gg_unit_Ntin_0477,udg_TempPoint)
    call SetUnitOwner(gg_unit_Ntin_0477,Player(9),true)
    call ShowUnitShow(gg_unit_Ntin_0477)
    call SelectUnitForPlayerSingle(gg_unit_Ntin_0477,Player(9))
    call TriggerRegisterUnitEvent(gg_trg_Ratso_Starts,gg_unit_Ntin_0477,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(gg_trg_Automated_Machinery,gg_unit_Ntin_0477,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(gg_trg_Steam_Contraption_On,gg_unit_Ntin_0477,EVENT_UNIT_ISSUED_ORDER)
    call TriggerRegisterUnitEvent(gg_trg_Steam_Contraption_Off,gg_unit_Ntin_0477,EVENT_UNIT_ISSUED_ORDER)
    
    
    
    else
    if(Trig_Altar_Replace_Light_Blue_Func008Func001Func001Func001Func001C())then
    call SetUnitPositionLoc(gg_unit_Othr_0515,udg_TempPoint)
    call SetUnitOwner(gg_unit_Othr_0515,Player(9),true)
    call ShowUnitShow(gg_unit_Othr_0515)
    call SelectUnitForPlayerSingle(gg_unit_Othr_0515,Player(9))
    call TriggerRegisterUnitEvent(gg_trg_Guldan_Starts,gg_unit_Othr_0515,EVENT_UNIT_SPELL_EFFECT)
    
    
    
    call EnableTrigger(gg_trg_Trophies_and_Libation_and_Teron_Reset)
    else
    if(Trig_Altar_Replace_Light_Blue_Func008Func001Func001Func001Func001Func001C())then
    call SetUnitPositionLoc(gg_unit_Ofar_0481,udg_TempPoint)
    call SetUnitOwner(gg_unit_Ofar_0481,Player(9),true)
    call ShowUnitShow(gg_unit_Ofar_0481)
    call SelectUnitForPlayerSingle(gg_unit_Ofar_0481,Player(9))
    call TriggerRegisterUnitEvent(gg_trg_Fenris_Starts,gg_unit_Ofar_0481,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Last_Rider_Death,Player(9),EVENT_PLAYER_UNIT_SPELL_FINISH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Spirit_Wolf_Death,Player(9),EVENT_PLAYER_UNIT_SPELL_FINISH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Spirit_Wolf_Stomp,Player(9),EVENT_PLAYER_UNIT_SPELL_EFFECT)
    
    
    
    else
    if(Trig_Altar_Replace_Light_Blue_Func008Func001Func001Func001Func001Func001Func001C())then
    call SetUnitPositionLoc(gg_unit_Orkn_0516,udg_TempPoint)
    call SetUnitOwner(gg_unit_Orkn_0516,Player(9),true)
    call SetUnitOwner(gg_unit_o00J_0444,Player(9),true)
    call ShowUnitShow(gg_unit_Orkn_0516)
    call SelectUnitForPlayerSingle(gg_unit_Orkn_0516,Player(9))
    call TriggerRegisterUnitEvent(gg_trg_Nerzhul_Starts,gg_unit_Orkn_0516,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(gg_trg_Nether_Spirits_Level,gg_unit_Orkn_0516,EVENT_UNIT_HERO_SKILL)
    
    
    
    else
    if(Trig_Altar_Replace_Light_Blue_Func008Func001Func001Func001Func001Func001Func001Func001C())then
    call SetUnitPositionLoc(gg_unit_Orex_0465,udg_TempPoint)
    call SetUnitOwner(gg_unit_Orex_0465,Player(9),true)
    call SetUnitOwner(gg_unit_o003_0442,Player(9),true)
    call ShowUnitShow(gg_unit_Orex_0465)
    call SelectUnitForPlayerSingle(gg_unit_Orex_0465,Player(9))
    call TriggerRegisterUnitEvent(gg_trg_Chogall_Starts,gg_unit_Orex_0465,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(gg_trg_Chogall_Level,gg_unit_Orex_0465,EVENT_UNIT_HERO_SKILL)
    call TriggerRegisterUnitEvent(gg_trg_Self_Mutilate_Drop,gg_unit_Orex_0465,EVENT_UNIT_DROP_ITEM)
    
    
    
    else
    endif
    endif
    endif
    endif
    endif
    endif
    endif
    else
    endif
    if(Trig_Altar_Replace_Light_Blue_Func009C())then
    if(Trig_Altar_Replace_Light_Blue_Func009Func001C())then
    call SetUnitPositionLoc(gg_unit_Ekee_0528,udg_TempPoint)
    call SetUnitOwner(gg_unit_Ekee_0528,Player(9),true)
    call ShowUnitShow(gg_unit_Ekee_0528)
    call SelectUnitForPlayerSingle(gg_unit_Ekee_0528,Player(9))
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Blackhands_Orders_Death,Player(9),EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterUnitEvent(gg_trg_Blackhands_Orders,gg_unit_Ekee_0528,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(gg_trg_Griselda_Starts,gg_unit_Ekee_0528,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(gg_trg_Griselda_Summons,gg_unit_Ekee_0528,EVENT_UNIT_SUMMON)
    call TriggerRegisterUnitEvent(gg_trg_Griselda_Learns,gg_unit_Ekee_0528,EVENT_UNIT_HERO_SKILL)
    call TriggerRegisterUnitEvent(gg_trg_Griselda_Dies,gg_unit_Ekee_0528,EVENT_UNIT_DEATH)
    
    
    
    else
    if(Trig_Altar_Replace_Light_Blue_Func009Func001Func001C())then
    call SetUnitPositionLoc(gg_unit_Osam_0526,udg_TempPoint)
    call SetUnitOwner(gg_unit_Osam_0526,Player(9),true)
    call ShowUnitShow(gg_unit_Osam_0526)
    call SelectUnitForPlayerSingle(gg_unit_Osam_0526,Player(9))
    call TriggerRegisterUnitEvent(gg_trg_Kilrogg_Starts,gg_unit_Osam_0526,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(gg_trg_Bladestorm_Removal,gg_unit_Osam_0526,EVENT_UNIT_DEATH)
    
    
    
    else
    if(Trig_Altar_Replace_Light_Blue_Func009Func001Func001Func001C())then
    call SetUnitPositionLoc(gg_unit_Obla_0496,udg_TempPoint)
    call SetUnitOwner(gg_unit_Obla_0496,Player(9),true)
    call ShowUnitShow(gg_unit_Obla_0496)
    call SelectUnitForPlayerSingle(gg_unit_Obla_0496,Player(9))
    call TriggerRegisterUnitEvent(gg_trg_Maim_Starts,gg_unit_Obla_0496,EVENT_UNIT_SPELL_EFFECT)
    
    
    
    else
    if(Trig_Altar_Replace_Light_Blue_Func009Func001Func001Func001Func001C())then
    set udg_GaronaOwner=Player(9)
    call SetUnitPositionLoc(gg_unit_O00M_0518,udg_TempPoint)
    call SetPlayerAbilityAvailableBJ(false,'ANwk',Player(9))
    call SetUnitOwner(gg_unit_O00M_0518,Player(9),true)
    call SetUnitOwner(gg_unit_osw3_0435,Player(9),true)
    call ShowUnitShow(gg_unit_O00M_0518)
    call SelectUnitForPlayerSingle(gg_unit_O00M_0518,Player(9))
    call TriggerRegisterUnitEvent(gg_trg_Garona_Starts,gg_unit_O00M_0518,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(gg_trg_Fan_of_Knives_Learn,gg_unit_O00M_0518,EVENT_UNIT_HERO_SKILL)
    call TriggerRegisterUnitEvent(gg_trg_Garona_Attack_Start,gg_unit_O00M_0518,EVENT_UNIT_SPELL_CAST)
    call TriggerRegisterUnitEvent(gg_trg_Disguise_Revive,gg_unit_O00M_0518,EVENT_UNIT_HERO_REVIVE_FINISH)
    
    
    
    else
    if(Trig_Altar_Replace_Light_Blue_Func009Func001Func001Func001Func001Func001C())then
    call SetUnitPositionLoc(gg_unit_Opgh_0483,udg_TempPoint)
    call SetUnitOwner(gg_unit_Opgh_0483,Player(9),true)
    call ShowUnitShow(gg_unit_Opgh_0483)
    call SelectUnitForPlayerSingle(gg_unit_Opgh_0483,Player(9))
    call TriggerRegisterUnitEvent(gg_trg_Grom_Starts,gg_unit_Opgh_0483,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(gg_trg_Corrupted_Blood,gg_unit_Opgh_0483,EVENT_UNIT_SPELL_FINISH)
    call EnableTrigger(gg_trg_Slice_and_Dice)
    
    
    
    else
    if(Trig_Altar_Replace_Light_Blue_Func009Func001Func001Func001Func001Func001Func001C())then
    call SetUnitPositionLoc(gg_unit_Odrt_0524,udg_TempPoint)
    call SetUnitOwner(gg_unit_Odrt_0524,Player(9),true)
    call ShowUnitShow(gg_unit_Odrt_0524)
    call SelectUnitForPlayerSingle(gg_unit_Odrt_0524,Player(9))
    call TriggerRegisterUnitEvent(gg_trg_Zuljin_Starts,gg_unit_Odrt_0524,EVENT_UNIT_SPELL_EFFECT)
    
    
    
    else
    endif
    endif
    endif
    endif
    endif
    endif
    else
    endif
    if(Trig_Altar_Replace_Light_Blue_Func010C())then
    if(Trig_Altar_Replace_Light_Blue_Func010Func001C())then
    call SetUnitPositionLoc(gg_unit_Ogrh_0532,udg_TempPoint)
    call SetUnitOwner(gg_unit_Ogrh_0532,Player(9),true)
    call ShowUnitShow(gg_unit_Ogrh_0532)
    call SelectUnitForPlayerSingle(gg_unit_Ogrh_0532,Player(9))
    
    
    
    else
    if(Trig_Altar_Replace_Light_Blue_Func010Func001Func001C())then
    call SetUnitPositionLoc(gg_unit_Nbst_0519,udg_TempPoint)
    call SetUnitOwner(gg_unit_Nbst_0519,Player(9),true)
    call SetUnitOwner(gg_unit_o00Q_0445,Player(9),true)
    call ShowUnitShow(gg_unit_Nbst_0519)
    call SelectUnitForPlayerSingle(gg_unit_Nbst_0519,Player(9))
    call TriggerRegisterUnitEvent(gg_trg_Rend_Starts,gg_unit_Nbst_0519,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(gg_trg_Intoxicating_Pain_Start,gg_unit_Nbst_0519,EVENT_UNIT_HERO_SKILL)
    
    
    
    else
    if(Trig_Altar_Replace_Light_Blue_Func010Func001Func001Func001C())then
    call SetUnitPositionLoc(gg_unit_Ocbh_0511,udg_TempPoint)
    call SetUnitOwner(gg_unit_Ocbh_0511,Player(9),true)
    call SetUnitOwner(gg_unit_o00H_0443,Player(9),true)
    call ShowUnitShow(gg_unit_Ocbh_0511)
    call SelectUnitForPlayerSingle(gg_unit_Ocbh_0511,Player(9))
    call TriggerRegisterUnitEvent(gg_trg_Dentarg_Starts,gg_unit_Ocbh_0511,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(gg_trg_Shadow_of_the_Fallen_Begin,gg_unit_Ocbh_0511,EVENT_UNIT_SPELL_CHANNEL)
    call TriggerRegisterUnitEvent(gg_trg_Shadow_of_the_Fallen,gg_unit_Ocbh_0511,EVENT_UNIT_SPELL_FINISH)
    call TriggerRegisterUnitEvent(gg_trg_Trophies_of_the_Fallen_Turn_on,gg_unit_Ocbh_0511,EVENT_UNIT_HERO_SKILL)
    call TriggerRegisterUnitEvent(gg_trg_Hellish_Projectile_Level,gg_unit_Ocbh_0511,EVENT_UNIT_HERO_SKILL)
    
    
    
    else
    if(Trig_Altar_Replace_Light_Blue_Func010Func001Func001Func001Func001C())then
    call SetUnitPositionLoc(gg_unit_Nsjs_0498,udg_TempPoint)
    call SetUnitOwner(gg_unit_Nsjs_0498,Player(9),true)
    call ShowUnitShow(gg_unit_Nsjs_0498)
    call SelectUnitForPlayerSingle(gg_unit_Nsjs_0498,Player(9))
    call TriggerRegisterUnitEvent(gg_trg_Kargath_Starts,gg_unit_Nsjs_0498,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Death_Pact,Player(9),EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Death_Pact,Player(10),EVENT_PLAYER_UNIT_DEATH)
    call TriggerRegisterPlayerUnitEventSimple(gg_trg_Death_Pact,Player(11),EVENT_PLAYER_UNIT_DEATH)
    
    
    
    else
    if(Trig_Altar_Replace_Light_Blue_Func010Func001Func001Func001Func001Func001C())then
    call SetUnitPositionLoc(gg_unit_Nbbc_0485,udg_TempPoint)
    call SetUnitOwner(gg_unit_Nbbc_0485,Player(9),true)
    call ShowUnitShow(gg_unit_Nbbc_0485)
    call SelectUnitForPlayerSingle(gg_unit_Nbbc_0485,Player(9))
    call TriggerRegisterUnitEvent(gg_trg_Blackhand_Starts,gg_unit_Nbbc_0485,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterUnitEvent(gg_trg_Valor,gg_unit_Nbbc_0485,EVENT_UNIT_SPELL_FINISH)
    
    
    
    else
    endif
    endif
    endif
    endif
    endif
    else
    endif
    call RemoveLocation(udg_TempPoint)
    call RemoveUnit(gg_unit_o005_0381)
    call RemoveUnit(gg_unit_o00P_0387)
    call RemoveUnit(gg_unit_o00O_0388)
    call PolledWait(25.00)
    if(Trig_Altar_Replace_Light_Blue_Func016C())then
    call SetPlayerHandicapXPBJ(Player(9),102.00)
    else
    call SetPlayerHandicapXPBJ(Player(9),107.00)
    endif
    endfunction
    function InitTrig_Altar_Replace_Light_Blue takes nothing returns nothing
    set gg_trg_Altar_Replace_Light_Blue=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Altar_Replace_Light_Blue,gg_unit_o005_0381,EVENT_UNIT_TRAIN_FINISH)
    call TriggerRegisterUnitEvent(gg_trg_Altar_Replace_Light_Blue,gg_unit_o00P_0387,EVENT_UNIT_TRAIN_FINISH)
    call TriggerRegisterUnitEvent(gg_trg_Altar_Replace_Light_Blue,gg_unit_o00O_0388,EVENT_UNIT_TRAIN_FINISH)
    call TriggerAddAction(gg_trg_Altar_Replace_Light_Blue,function Trig_Altar_Replace_Light_Blue_Actions)
    endfunction