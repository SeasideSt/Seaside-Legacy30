private
applicationDefaults
	^ applicationDefaults ifNil: [ applicationDefaults := self newApplicationDefaults ]