// Some types for testing

type agent extends handle // all reference counted objects
type event extends agent	//a reference to an event registration
type player extends agent	// a single player reference
type widget extends agent	// an interactive game object with life
type unit extends widget// a single unit reference
type destructable extends widget
