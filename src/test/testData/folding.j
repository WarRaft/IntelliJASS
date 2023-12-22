function GetUnitStatePercent takes unit whichUnit, unitstate whichState, unitstate whichMaxState returns real

	local real value = GetUnitState(whichUnit, whichState)

	local real maxValue = GetUnitState(whichUnit, whichMaxState)

	// If both the old and new units are heroes, handle their hero info.
	if (IsUnitType(oldUnit, UNIT_TYPE_HERO) and IsUnitType(newUnit, UNIT_TYPE_HERO)) then
		call SetHeroXP(newUnit, GetHeroXP(oldUnit), false)

		set index = 0
		loop
			set indexItem = UnitItemInSlot(oldUnit, index)
			if (indexItem != null) then
				call UnitRemoveItem(oldUnit, indexItem)
				call UnitAddItem(newUnit, indexItem)
			endif

			set index = index + 1
			exitwhen index >= bj_MAX_INVENTORY



		endloop

	endif



	return value / maxValue * 100.0
endfunction


//===========================================================================
// This attempts to replace a unit with a new unit type by creating a new
// unit of the desired type using the old unit's location, facing, etc.
//
function ReplaceUnitBJ takes unit whichUnit, integer newUnitId, integer unitStateMethod returns unit
	local unit oldUnit = whichUnit
	local unit newUnit
	local boolean wasHidden
	local integer index
	local item indexItem
	local real oldRatio

	// If we have bogus data, don't attempt the replace.
	if (oldUnit == null) then
		set bj_lastReplacedUnit = oldUnit
		return oldUnit
	endif

	// Hide the original unit.
	set wasHidden = IsUnitHidden(oldUnit)
	call ShowUnit(oldUnit, false)

	// Create the replacement unit.
	if (newUnitId == 'ugol') then
		set newUnit = CreateBlightedGoldmine(GetOwningPlayer(oldUnit), GetUnitX(oldUnit), GetUnitY(oldUnit), GetUnitFacing(oldUnit))
	else
		set newUnit = CreateUnit(GetOwningPlayer(oldUnit), newUnitId, GetUnitX(oldUnit), GetUnitY(oldUnit), GetUnitFacing(oldUnit))
	endif

	// Set the unit's life and mana according to the requested method.
	if (unitStateMethod == bj_UNIT_STATE_METHOD_RELATIVE) then
		// Set the replacement's current/max life ratio to that of the old unit.
		// If both units have mana, do the same for mana.
		if (GetUnitState(oldUnit, UNIT_STATE_MAX_LIFE) > 0) then
			set oldRatio = GetUnitState(oldUnit, UNIT_STATE_LIFE) / GetUnitState(oldUnit, UNIT_STATE_MAX_LIFE)
			call SetUnitState(newUnit, UNIT_STATE_LIFE, oldRatio * GetUnitState(newUnit, UNIT_STATE_MAX_LIFE))
		endif

		if (GetUnitState(oldUnit, UNIT_STATE_MAX_MANA) > 0) and (GetUnitState(newUnit, UNIT_STATE_MAX_MANA) > 0) then
			set oldRatio = GetUnitState(oldUnit, UNIT_STATE_MANA) / GetUnitState(oldUnit, UNIT_STATE_MAX_MANA)
			call SetUnitState(newUnit, UNIT_STATE_MANA, oldRatio * GetUnitState(newUnit, UNIT_STATE_MAX_MANA))
		endif
	elseif (unitStateMethod == bj_UNIT_STATE_METHOD_ABSOLUTE) then
		// Set the replacement's current life to that of the old unit.
		// If the new unit has mana, do the same for mana.
		call SetUnitState(newUnit, UNIT_STATE_LIFE, GetUnitState(oldUnit, UNIT_STATE_LIFE))
		if (GetUnitState(newUnit, UNIT_STATE_MAX_MANA) > 0) then
			call SetUnitState(newUnit, UNIT_STATE_MANA, GetUnitState(oldUnit, UNIT_STATE_MANA))
		endif
	elseif (unitStateMethod == bj_UNIT_STATE_METHOD_DEFAULTS) then
		// The newly created unit should already have default life and mana.
	elseif (unitStateMethod == bj_UNIT_STATE_METHOD_MAXIMUM) then
		// Use max life and mana.
		call SetUnitState(newUnit, UNIT_STATE_LIFE, GetUnitState(newUnit, UNIT_STATE_MAX_LIFE))
		call SetUnitState(newUnit, UNIT_STATE_MANA, GetUnitState(newUnit, UNIT_STATE_MAX_MANA))
	else
		// Unrecognized unit state method - ignore the request.
	endif

	// Mirror properties of the old unit onto the new unit.
	//call PauseUnit(newUnit, IsUnitPaused(oldUnit))
	call SetResourceAmount(newUnit, GetResourceAmount(oldUnit))

	// If both the old and new units are heroes, handle their hero info.
	if (IsUnitType(oldUnit, UNIT_TYPE_HERO) and IsUnitType(newUnit, UNIT_TYPE_HERO)) then
		call SetHeroXP(newUnit, GetHeroXP(oldUnit), false)

		set index = 0
		loop
			set indexItem = UnitItemInSlot(oldUnit, index)
			if (indexItem != null) then
				call UnitRemoveItem(oldUnit, indexItem)
				call UnitAddItem(newUnit, indexItem)
			endif

			set index = index + 1
			exitwhen index >= bj_MAX_INVENTORY
		endloop
	endif

	// Remove or kill the original unit.  It is sometimes unsafe to remove
	// hidden units, so kill the original unit if it was previously hidden.
	if wasHidden then
		call KillUnit(oldUnit)
		call RemoveUnit(oldUnit)
	else
		call RemoveUnit(oldUnit)
	endif

	set bj_lastReplacedUnit = newUnit
	return newUnit
endfunction
