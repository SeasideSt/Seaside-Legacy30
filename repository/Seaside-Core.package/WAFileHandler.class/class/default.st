accessing
default
	^ default ifNil: [ default := self registerAsHandler: 'files' ]