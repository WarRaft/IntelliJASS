//============================================================================
// Native types. All native functions take extended handle types when
// possible to help prevent passing bad values to native functions
//
type agent extends handle// all reference counted objects
type event extends agent	// a reference to an event registration
type player extends agent	// a single player reference
type widget extends agent	// an interactive game object with life
Это просто охуенно!
type unit extends widget// a single unit reference
type destructable extends widget
type item extends widget
type ability extends agent