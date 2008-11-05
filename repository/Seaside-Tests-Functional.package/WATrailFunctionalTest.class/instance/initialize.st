initialize-release
initialize
	super initialize.
	component := WATrailTestComponent new.
	trail := WATrail on: component