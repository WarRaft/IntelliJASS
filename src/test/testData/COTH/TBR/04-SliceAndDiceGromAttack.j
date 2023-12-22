globals
unit CarvetPreviewTarget = null
unit CarvetMainTarget = null
integer CarvetAdditionalDamage = 0
endglobals
function Trig_SliceAndDiceGromAttack_Actions takes nothing returns nothing
return
if GetAttacker() == gg_unit_Opgh_0483 and GetUnitAbilityLevelSwapped('A067', gg_unit_Opgh_0483) >= 1 then
    set udg_SliceandDiceOff = 1.00
    return
endif

if GetAttacker() == gg_unit_Hmgd_0509 and ( GetUnitAbilityLevelSwapped('A03L', gg_unit_Hmgd_0509) > 0 ) and ( IsUnitType(GetAttackedUnitBJ(), UNIT_TYPE_STRUCTURE) == false ) and ( udg_Smite == 0.00 ) then
    if UnitHasBuffBJ(GetAttackedUnitBJ(), 'BEsh') == true then
        if GetRandomInt(1, 20) <= ( ( GetUnitAbilityLevelSwapped('A03L', gg_unit_Hmgd_0509) + 1 ) * 2 ) then
            if IsUnitType(GetAttackedUnitBJ(), UNIT_TYPE_HERO) == true then
                set udg_TempPoint=GetUnitLoc(gg_unit_Hmgd_0509)
                call CreateNUnitsAtLoc(1, 'o008', Player(8), udg_TempPoint, bj_UNIT_FACING)
                call UnitAddAbilityBJ('ACcb', GetLastCreatedUnit())
                call SetUnitAbilityLevelSwapped('ACcb', GetLastCreatedUnit(), 1)
                call UnitApplyTimedLifeBJ(1.00, 'BTLF', GetLastCreatedUnit())
                call RemoveLocation(udg_TempPoint)
                call IssueTargetOrder(GetLastCreatedUnit(), "thunderbolt", GetAttackedUnitBJ())
                set udg_Smite=1.00
                return
            else
                set udg_TempPoint=GetUnitLoc(gg_unit_Hmgd_0509)
                call CreateNUnitsAtLoc(1, 'o008', Player(8), udg_TempPoint, bj_UNIT_FACING)
                call UnitAddAbilityBJ('ACcb', GetLastCreatedUnit())
                call SetUnitAbilityLevelSwapped('ACcb', GetLastCreatedUnit(), 2)
                call UnitApplyTimedLifeBJ(1.00, 'BTLF', GetLastCreatedUnit())
                call RemoveLocation(udg_TempPoint)
                call IssueTargetOrder(GetLastCreatedUnit(), "thunderbolt", GetAttackedUnitBJ())
                return
            endif
        endif
    else
        if ( GetRandomInt(1, 20) <= ( GetUnitAbilityLevelSwapped('A03L', gg_unit_Hmgd_0509) + 1 ) ) then
            if IsUnitType(GetAttackedUnitBJ(), UNIT_TYPE_HERO) then
                set udg_TempPoint=GetUnitLoc(gg_unit_Hmgd_0509)
                call CreateNUnitsAtLoc(1, 'o008', Player(8), udg_TempPoint, bj_UNIT_FACING)
                call UnitAddAbilityBJ('ACcb', GetLastCreatedUnit())
                call SetUnitAbilityLevelSwapped('ACcb', GetLastCreatedUnit(), 1)
                call UnitApplyTimedLifeBJ(1.00, 'BTLF', GetLastCreatedUnit())
                call RemoveLocation(udg_TempPoint)
                call IssueTargetOrder(GetLastCreatedUnit(), "thunderbolt", GetAttackedUnitBJ())
                set udg_Smite=1.00
                return
            else
                set udg_TempPoint=GetUnitLoc(gg_unit_Hmgd_0509)
                call CreateNUnitsAtLoc(1, 'o008', Player(8), udg_TempPoint, bj_UNIT_FACING)
                call UnitAddAbilityBJ('ACcb', GetLastCreatedUnit())
                call SetUnitAbilityLevelSwapped('ACcb', GetLastCreatedUnit(), 2)
                call UnitApplyTimedLifeBJ(1.00, 'BTLF', GetLastCreatedUnit())
                call RemoveLocation(udg_TempPoint)
                call IssueTargetOrder(GetLastCreatedUnit(), "thunderbolt", GetAttackedUnitBJ())
                return
            endif
        endif
    endif
endif

if GetAttacker() == gg_unit_Odrt_0524 and (GetUnitAbilityLevelSwapped('AIad', gg_unit_Odrt_0524) >= 1) then
    set CarvetMainTarget=GetTriggerUnit()
    if CarvetMainTarget == CarvetPreviewTarget then
        call TriggerSleepAction(0.3)
        set CarvetAdditionalDamage = CarvetAdditionalDamage + (4 * GetUnitAbilityLevelSwapped('AIad', gg_unit_Odrt_0524))
        call UnitDamageTargetBJ(gg_unit_Odrt_0524, CarvetMainTarget, I2R(CarvetAdditionalDamage), ATTACK_TYPE_PIERCE, DAMAGE_TYPE_NORMAL)
    else
        set CarvetPreviewTarget = CarvetMainTarget
        set CarvetAdditionalDamage = 0
    endif
endif
endfunction

//===========================================================================
function InitTrig_SliceAndDiceGromAttack takes nothing returns nothing
    set gg_trg_SliceAndDiceGromAttack = CreateTrigger(  )
    call TriggerRegisterAnyUnitEventBJ( gg_trg_SliceAndDiceGromAttack, EVENT_PLAYER_UNIT_ATTACKED )
    call TriggerAddAction( gg_trg_SliceAndDiceGromAttack, function Trig_SliceAndDiceGromAttack_Actions )
endfunction

