function a
    local unit caster = GetSpellAbilityUnit()
    local location cas = GetUnitLoc(caster)
    local location tar = GetSpellTargetLoc()
    local real d = bj_RADTODEG * (Atan2(GetLocationY(cas) - GetLocationY(tar), GetLocationX(cas) - GetLocationX(tar)))

    local real x = (GetLocationX(tar) + 150 * Cos((d+90) * bj_DEGTORAD)) - 300 * Cos((d+180) * bj_DEGTORAD)
    local real y = (GetLocationY(tar) + 150 * Sin((d+90) * bj_DEGTORAD)) - 300 * Sin((d+180) * bj_DEGTORAD)

    local real x2 = (GetLocationX(tar) + 150 * Cos((d-90) * bj_DEGTORAD)) - 300 * Cos((d-180) * bj_DEGTORAD)
    local real y2 = (GetLocationY(tar) + 150 * Sin((d-90) * bj_DEGTORAD)) - 300 * Sin((d-180) * bj_DEGTORAD)

    local unit Unit = CreateUnitAtLoc(GetOwningPlayer(caster), Unit2Id, Location(x, y), d + 90)

    local unit Unit2 = CreateUnitAtLoc(GetOwningPlayer(caster), Unit2Id, Location(x2, y2), d - 90)

    set caster = null
    set Unit = null
    set Unit2 = null
    set d = 0
    set x = 0
    set y = 0
    set x2 = 0
    set y2 = 0
    call RemoveLocation (cas)
    call RemoveLocation (tar)
endfunction
