running
setUp
	super setUp.
	log := OrderedCollection new.
	root := WAComponentMock new.
	decoration1 := WADecorationMock new.
	decoration2 := WADecorationMock new.
	child1 := WAComponentMock new.
	child2 := WAComponentMock new.
	child3 := WAComponentMock new.
	child4 := WAComponentMock new