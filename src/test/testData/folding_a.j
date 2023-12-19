type agent        extends handle // all reference counted objects
type event        extends agent // a reference to an event registration
type player       extends agent // a single player reference
type widget       extends agent // an interactive game object with life
type unit         extends widget // a single unit reference
type destructable extends widget

// dvdv
type item         extends widget // scss
type ability      extends agent
type buff         extends ability
type force        extends agent
// dvdv


constant native ConvertRace       takes integer i, real e returns race //ddf fd fd
// csc
native          ConvertIGameState takes integer i, real d returns igamestate
constant native ConvertIGameState takes nothing returns nothing
