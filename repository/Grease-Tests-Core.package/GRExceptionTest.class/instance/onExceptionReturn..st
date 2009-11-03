private
onExceptionReturn: anObject
	[ GRError signal ]
		on: GRError
		do: [ ^ anObject ].
	
	^ self