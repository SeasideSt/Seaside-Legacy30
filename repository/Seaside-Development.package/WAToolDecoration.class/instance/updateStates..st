updating
updateStates: aSnapshot
	super updateStates: aSnapshot.
	"Create halos for all visible presenters at the end of the action phase so that we
	can properly snapshot their initial values (otherwise they get created in the render
	phase and we have no snapshot of the state for that render)."
	self visiblePresentersDo: [ :each | self haloFor: each ].
	halos do: [ :each  | each updateStates: aSnapshot ]