function Trig_Elf_Refuge_Func002Func056001002001 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true)
    endfunction
    function Trig_Elf_Refuge_Func002Func056001002002 takes nothing returns boolean
    return(IsUnitType(GetFilterUnit(),UNIT_TYPE_DEAD)==true)
    endfunction
    function Trig_Elf_Refuge_Func002Func056001002 takes nothing returns boolean
    return GetBooleanAnd(Trig_Elf_Refuge_Func002Func056001002001(),Trig_Elf_Refuge_Func002Func056001002002())
    endfunction
    function Trig_Elf_Refuge_Func002Func056A takes nothing returns nothing
    call IssueTargetOrder(gg_unit_n00P_0284,"revive",GetEnumUnit())
    endfunction
    function Trig_Elf_Refuge_Func002C takes nothing returns boolean
    if(not(udg_ThroneCount<8.00))then
    return false
    endif
    return true
    endfunction
    function Trig_Elf_Refuge_Actions takes nothing returns nothing
    set udg_ThroneCount=(udg_ThroneCount+1)
    if(Trig_Elf_Refuge_Func002C())then
        call DisplayTextToForce(GetPlayersAllies(Player(6)), "Сильвермун горит, а Солнечный Колодец осквернен! Оставшиеся эльфы бежали в горы Лордерона.")
        call DisplayTextToForce(GetPlayersAllies(Player(4)), "Солнечный Колодец покарен, а Сильвермун сгорает в адском пламени. Оставшиеся эльфы сбежали в горы Лордерона, где им и предстоит увидеть конец света!  ")
    call RemoveUnit(GetDyingUnit())
    set udg_TempPoint=GetRectCenter(gg_rct_Quelthalas_Well)
    call CreateNUnitsAtLoc(1,'n005',Player(4),udg_TempPoint,bj_UNIT_FACING)
    call SetUnitAnimation(GetLastCreatedUnit(),"stand second")
    call RemoveLocation(udg_TempPoint)
    call AdjustPlayerStateBJ(200,Player(4),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(200,Player(9),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(200,Player(10),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(200,Player(11),PLAYER_STATE_RESOURCE_GOLD)
    call AdjustPlayerStateBJ(1000,Player(4),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(1000,Player(9),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(1000,Player(10),PLAYER_STATE_RESOURCE_LUMBER)
    call AdjustPlayerStateBJ(1000,Player(11),PLAYER_STATE_RESOURCE_LUMBER)
    call SetPlayerTechMaxAllowedSwap('ebsh',5,Player(6))
    call SetPlayerTechMaxAllowedSwap('edes',6,Player(6))
    call KillUnit(gg_unit_h008_0278)
    call KillUnit(gg_unit_nefm_0276)
    call KillUnit(gg_unit_nheb_0274)
    call KillUnit(gg_unit_hars_0273)
    call KillUnit(gg_unit_h009_0277)
    call KillUnit(gg_unit_h001_0285)
    call KillUnit(gg_unit_oeye_0241)
    call RemoveDestructable(gg_dest_B007_4485)
    call DisableTrigger(gg_trg_Quelthalas_Zepplin)
    set udg_TempPoint=GetRectCenter(gg_rct_Quel_Fire_1)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Quel_Fire_2)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Quel_Fire_3)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Quel_Fire_4)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Quel_Fire_5)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Quel_Fire_6)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    set udg_TempPoint=GetRectCenter(gg_rct_Quel_Fire_7)
    call AddSpecialEffectLocBJ(udg_TempPoint,"Doodads\\Cinematic\\TownBurningFireEmitter\\TownBurningFireEmitter.mdl")
    call RemoveLocation(udg_TempPoint)
    call ShowUnitShow(gg_unit_n00P_0284)
    call TriggerSleepAction(1.00)
    set bj_wantDestroyGroup=true
    call ForGroupBJ(GetUnitsOfPlayerMatching(Player(6),Condition(function Trig_Elf_Refuge_Func002Func056001002)),function Trig_Elf_Refuge_Func002Func056A)
    call TriggerSleepAction(1.00)
    call ShowUnitShow(gg_unit_nef2_0283)
    set udg_TempPoint=GetUnitLoc(gg_unit_nef2_0283)
    call PingMinimapLocForForce(bj_FORCE_PLAYER[6],udg_TempPoint,5.00)
    call RemoveLocation(udg_TempPoint)
    set udg_Refuge2=(udg_Refuge2+1)
    else
    call RemoveUnit(GetDyingUnit())
    set udg_TempPoint=GetRectCenter(gg_rct_Quelthalas_Well)
    call CreateNUnitsAtLoc(1,'n005',Player(4),udg_TempPoint,bj_UNIT_FACING)
    call SetUnitAnimation(GetLastCreatedUnit(),"stand second")
    call RemoveLocation(udg_TempPoint)
    endif
    endfunction
    function InitTrig_Elf_Refuge takes nothing returns nothing
    set gg_trg_Elf_Refuge=CreateTrigger()
    call TriggerRegisterUnitEvent(gg_trg_Elf_Refuge,gg_unit_n00V_0272,EVENT_UNIT_DEATH)
    call TriggerAddAction(gg_trg_Elf_Refuge,function Trig_Elf_Refuge_Actions)
    endfunction