globals
    location Flamestrike_TargetLoc
endglobals

function Trig_Flamestrike_Damage_from_intellect_Conditions takes nothing returns boolean
    return GetSpellAbilityId() == 'AHfs'
endfunction

function FlamestrikeGroup_Condition takes nothing returns boolean
    return IsUnitEnemy(GetFilterUnit(), Player(6))
endfunction

function Flamestrike_Damage takes nothing returns nothing
    local real Damage = ( GetHeroInt(gg_unit_Hkal_0491, true) / 6 )
    call UnitDamageTarget(gg_unit_Hkal_0491, GetEnumUnit(), Damage, true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_MAGIC, WEAPON_TYPE_WHOKNOWS)
endfunction

function Flamestrike_SelectUnits takes nothing returns nothing
    local group g = CreateGroup()
    call GroupEnumUnitsInRangeOfLoc(g, Flamestrike_TargetLoc, 235, Condition(function FlamestrikeGroup_Condition))
    call ForGroup(g, function Flamestrike_Damage)
    call DestroyGroup(g)
    set g = null
endfunction

function Trig_Flamestrike_Damage_from_intellect_Actions takes nothing returns nothing
    local timer Flamestrike_Timer = CreateTimer()
    set Flamestrike_TargetLoc = GetSpellTargetLoc()
    call TimerStart(Flamestrike_Timer, 0.5, true, function Flamestrike_SelectUnits)
    call TriggerSleepAction(3) //Ждём, когда закончится время действия абилки
    call PauseTimer(Flamestrike_Timer)
    call DestroyTimer(Flamestrike_Timer)
    call RemoveLocation(Flamestrike_TargetLoc)
endfunction

//===========================================================================
function InitTrig_Flamestrike_Damage_from_intellect takes nothing returns nothing
    set gg_trg_Flamestrike_Damage_from_intellect = CreateTrigger(  )
    call TriggerRegisterUnitEvent( gg_trg_Flamestrike_Damage_from_intellect, gg_unit_Hkal_0491, EVENT_UNIT_SPELL_EFFECT )
    call TriggerAddCondition( gg_trg_Flamestrike_Damage_from_intellect, Condition( function Trig_Flamestrike_Damage_from_intellect_Conditions ) )
    call TriggerAddAction( gg_trg_Flamestrike_Damage_from_intellect, function Trig_Flamestrike_Damage_from_intellect_Actions )
endfunction

